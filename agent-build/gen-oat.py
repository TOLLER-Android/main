import os
import sys
import subprocess

TMP_FOLDER = "/tmp/zip_dex_stuff"
ONHOST_SYSTEM_ROOT="/system"
ORG_BASE_FOLDER = "/system"
DEOAT_BASE_FOLDER = "./deoat"
OUT_BASE_FOLDER = "./genoat"
BAKSMALI_BASE = "java -jar ./baksmali-2.3.4.jar"
DEX2OAT_BASE = "./bin/dex2oat" # CHECK
ARCH = [
	# ("arm", "krait"), # Nexus 6
	("x86_64", "x86_64"), # Emulator
	("x86", "x86"), # Emulator
]
ARCH_BOOT_OAT_PATH = {}
# ARCH_BOOT_CLASS_PATH = {}

def mkdir(d):
    os.system("mkdir -p " + d)

def rmall(d):
    os.system("rm -rf " + d)

def listfiles(d):
    return [f for f in os.listdir(d) if os.path.isfile(os.path.join(d, f))]

def consolidate(dex_list):
    last_dex_name = None
    curr_dex_files = {}
    all_dex_maps = {}
    # Reverse sorting makes sure that "xxx.dex" comes before "xxx-classesN.dex"
    # "__dummy.dex" helps populate the last mapping
    for dex in sorted(dex_list, reverse=True) + ["__dummy.dex"]:
        if dex[-4:] != ".dex":
            continue
        # print(dex)
        if last_dex_name:
            if dex.startswith(last_dex_name + "-classes"):
                curr_dex_files[dex] = dex[dex.rfind("-")+1:]
            elif last_dex_name != dex:
                all_dex_maps[last_dex_name] = curr_dex_files
                # print(last_dex_name, curr_dex_files)
                curr_dex_files = {dex: "classes.dex"}
                last_dex_name = dex[:-4]
        else:
            curr_dex_files = {dex: "classes.dex"}
            last_dex_name = dex[:-4]
    return all_dex_maps

def zip_dex(dex_maps, src_dir, dest_dir, suffix):
    for dex_name, dex_mapping in dex_maps.items():
        rmall(TMP_FOLDER)
        mkdir(TMP_FOLDER)
        str_dex_list = ""
        for org_dex_name, new_dex_name in dex_mapping.items():
            subprocess.call("cp %s/%s %s/%s" % (src_dir, org_dex_name, TMP_FOLDER, new_dex_name), shell=True)
            str_dex_list += " " + new_dex_name
        tmp_path = TMP_FOLDER + "/" + dex_name + suffix
        dest_path = dest_dir + "/" + dex_name + suffix
        subprocess.call("cd " + TMP_FOLDER + " && zip -q " + dex_name + suffix + str_dex_list, shell=True)
        subprocess.call("zipalign 4 " + tmp_path + " " + dest_path, shell=True)
    rmall(TMP_FOLDER)

mkdir(OUT_BASE_FOLDER)


COMPONENT, EXT = "boot", ".jar"
ORG_COMPO_FOLDER = ORG_BASE_FOLDER + "/" + COMPONENT
DEOAT_COMPO_FOLDER = DEOAT_BASE_FOLDER + "/" + COMPONENT
OUT_COMPO_FOLDER = OUT_BASE_FOLDER + "/" + COMPONENT
REMOTE_BASE_FOLDER = "/system/framework/"
ONHOST_BASE_FOLDER = ONHOST_SYSTEM_ROOT + "/framework"

rmall(OUT_COMPO_FOLDER)
mkdir(OUT_COMPO_FOLDER)

dex_list = listfiles(DEOAT_COMPO_FOLDER)
cons_dex_list = consolidate(dex_list)
zip_dex(cons_dex_list, DEOAT_COMPO_FOLDER, OUT_COMPO_FOLDER, EXT)

for (arch, arch_variant) in ARCH:
    ORG_ARCH_F = ORG_COMPO_FOLDER + "/" + arch + "/boot.oat"
    if not os.path.exists(ORG_ARCH_F):
        continue
    OUT_ARCH_FOLDER = OUT_COMPO_FOLDER + "/" + arch
    ONHOST_ARCH_FOLDER = ONHOST_BASE_FOLDER + "/" + arch
    mkdir(OUT_ARCH_FOLDER)
    OUT_ARCH_F = OUT_ARCH_FOLDER + "/boot.oat"
    ONHOST_ARCH_F = ONHOST_ARCH_FOLDER + "/boot.oat"
    ARCH_BOOT_OAT_PATH[arch] = ONHOST_BASE_FOLDER + "/boot.oat"
    # ARCH_BOOT_CLASS_PATH[arch] = boot_class_path = []

    dex_list = subprocess.check_output("%s list dex %s" % (BAKSMALI_BASE, ORG_ARCH_F), shell=True)
    dex_list = [f.strip() for f in dex_list.strip().split("\n")]
    clean_dex_list = []

    for dex_path in dex_list:
        if not dex_path.startswith(REMOTE_BASE_FOLDER):
            continue
        dex_fn = dex_path[dex_path.rfind("/")+1:]
        if ":" in dex_fn:
            continue
        if not dex_fn.endswith(EXT):
            continue
        clean_dex_list.append(dex_fn)

    dex2oat_cmd = "cd " + OUT_COMPO_FOLDER + " && "
    dex2oat_cmd += ( DEX2OAT_BASE + " "
                    "--runtime-arg -Xms64m "
                    "--runtime-arg -Xmx64m "
                    "--image-classes=" + ONHOST_SYSTEM_ROOT + "/etc/preloaded-classes " )
    
    for dex in clean_dex_list:
        # zip_loc = OUT_COMPO_FOLDER + "/" + dex
        dex2oat_cmd += "--dex-file=" + dex + " "
        # boot_class_path.append(zip_loc)
    for dex in clean_dex_list:
        dex2oat_cmd += "--dex-location=" + REMOTE_BASE_FOLDER + dex + " "
    
    dex2oat_cmd += ( "--oat-symbols=" + OUT_ARCH_F[len(OUT_COMPO_FOLDER)+1:-4] + ".sym "
                    "--oat-file=" + ONHOST_ARCH_F + " "
                    "--oat-location=" + REMOTE_BASE_FOLDER + arch + "/boot.oat "
                    "--image=" + ONHOST_ARCH_F[:-4] + ".art "
                    "--base=0x70000000 "
                    "--instruction-set=" + arch + " "
                    "--instruction-set-variant=" + arch_variant + " "
                    "--instruction-set-features=default "
                    "--android-root=" + ONHOST_SYSTEM_ROOT + " "
                    "--include-patch-information "
                    "--runtime-arg -Xnorelocate "
                    "--no-generate-debug-info" )
    print(dex2oat_cmd)
    os.system("rm " + ONHOST_ARCH_F + " " + ONHOST_ARCH_F[:-4] + ".art")
    subprocess.call(dex2oat_cmd, shell=True)
    os.system("cp " + ONHOST_ARCH_F + " " + OUT_ARCH_F)
    os.system("cp " + ONHOST_ARCH_F[:-4] + ".art" + " " + OUT_ARCH_F[:-4] + ".art")
    # sys.exit(0)

raw_input("Press Enter to continue...")

for COMPONENT, EXT, REPEAT_NAME in [
        ("framework", ".jar", False),
        ("app",       ".apk", True),
        ("priv-app",  ".apk", True)
    ]:
    ORG_COMPO_FOLDER = ORG_BASE_FOLDER + "/" + COMPONENT
    DEOAT_COMPO_FOLDER = DEOAT_BASE_FOLDER + "/" + COMPONENT
    OUT_COMPO_FOLDER = OUT_BASE_FOLDER + "/" + COMPONENT
    REMOTE_BASE_FOLDER = "/system/" + COMPONENT + "/"

    rmall(OUT_COMPO_FOLDER)
    mkdir(OUT_COMPO_FOLDER)

    dex_list = listfiles(DEOAT_COMPO_FOLDER)
    cons_dex_list = consolidate(dex_list)
    zip_dex(cons_dex_list, DEOAT_COMPO_FOLDER, OUT_COMPO_FOLDER, EXT)

    for (arch, arch_variant) in ARCH:
        ORG_ARCH_FOLDER = ORG_COMPO_FOLDER + "/" + arch
        BOOT_ART_PATH = ARCH_BOOT_OAT_PATH[arch][:-4] + ".art"
        # str_boot_class_path = ":".join(ARCH_BOOT_CLASS_PATH[arch])
        OUT_ARCH_FOLDER = OUT_COMPO_FOLDER + "/" + arch
        mkdir(OUT_ARCH_FOLDER)

        for odex in listfiles(ORG_ARCH_FOLDER):
            if odex[-5:] != ".odex":
                continue
            org_odex_path = ORG_ARCH_FOLDER + "/" + odex
            # out_odex_path = OUT_ARCH_FOLDER + "/" + odex
            out_odex_path = arch + "/" + odex
            dex_list = subprocess.check_output("%s list dex %s" % (BAKSMALI_BASE, org_odex_path), shell=True)
            dex_list = [f.strip() for f in dex_list.strip().split("\n")]
            clean_dex_list = []

            for dex_path in dex_list:
                if not dex_path.startswith(REMOTE_BASE_FOLDER):
                    continue
                dex_fn = dex_path[dex_path.rfind("/")+1:]
                if ":" in dex_fn:
                    continue
                if not dex_fn.endswith(EXT):
                    continue
                clean_dex_list.append(dex_fn)
            
            dex2oat_cmd = "cd " + OUT_COMPO_FOLDER + " && "
            dex2oat_cmd += ( DEX2OAT_BASE + " "
                            "--runtime-arg -Xms64m "
                            "--runtime-arg -Xmx512m "
                            "--boot-image=" + BOOT_ART_PATH + " " )
            
            for dex in clean_dex_list:
                dex2oat_cmd += "--dex-file=" + dex + " "
            for dex in clean_dex_list:
                dex2oat_cmd += "--dex-location=" + REMOTE_BASE_FOLDER
                if REPEAT_NAME:
                    dex2oat_cmd += dex[:-len(EXT)] + "/"
                dex2oat_cmd += dex + " "

            dex2oat_cmd += ( "--oat-file=" + out_odex_path + " "
                            "--android-root=" + ONHOST_SYSTEM_ROOT + " "
                            "--instruction-set=" + arch + " "
                            "--instruction-set-variant=" + arch_variant + " "
                            "--instruction-set-features=default "
                            "--include-patch-information "
                            "--runtime-arg -Xnorelocate "
                            "--no-generate-debug-info "
                            "--abort-on-hard-verifier-error" )
            print(dex2oat_cmd)
            subprocess.call(dex2oat_cmd, shell=True)
            # break
        # break
