import os
import sys
import subprocess

TMP_FOLDER = "/tmp/de_odex_stuff"
ORG_BASE_FOLDER = "/system"
OUT_BASE_FOLDER = "./deoat"
BAKSMALI_BASE = "java -jar ./baksmali-2.3.4.jar" # CHECK
SMALI_BASE = "java -jar ./smali-2.3.4.jar" # CHECK
ARCH = ["x86_64", "x86"] # "arm" # CHECK
ARCH_BOOT_OAT_PATH = {}

def mkdir(d):
    os.system("mkdir -p " + d)

def rmall(d):
    os.system("rm -rf " + d)

def listfiles(d):
    return [f for f in os.listdir(d) if os.path.isfile(os.path.join(d, f))]

mkdir(OUT_BASE_FOLDER)


COMPONENT = "boot"
ORG_COMPO_FOLDER = ORG_BASE_FOLDER + "/" + COMPONENT
OUT_COMPO_FOLDER = OUT_BASE_FOLDER + "/" + COMPONENT
REMOTE_BASE_FOLDER = "/system/framework/"

rmall(OUT_COMPO_FOLDER)
mkdir(OUT_COMPO_FOLDER)

for arch in ARCH:
    ORG_ARCH_F = ORG_COMPO_FOLDER + "/" + arch + "/boot.oat"
    if not os.path.exists(ORG_ARCH_F):
        continue
    ARCH_BOOT_OAT_PATH[arch] = ORG_ARCH_F

    if len(ARCH_BOOT_OAT_PATH) > 1:
        continue

    print("De-oat boot classes from %s boot.oat" % arch)
    dex_list = subprocess.check_output("%s list dex %s" % (BAKSMALI_BASE, ORG_ARCH_F), shell=True)
    dex_list = [f.strip() for f in dex_list.strip().split("\n")]

    for dex_path in dex_list:
        if dex_path[0:len(REMOTE_BASE_FOLDER)] != REMOTE_BASE_FOLDER:
            continue
        ext_name = None
        dex_fn = dex_path[len(REMOTE_BASE_FOLDER):]
        if ":" in dex_fn:
            pos = dex_fn.index(":")
            ext_name = dex_fn[pos+1:]
            if ext_name[-4:] != ".dex":
                continue
            dex_fn = dex_fn[0:pos]
        if dex_fn[-4:] != ".jar":
            continue
        dex_fn = dex_fn[0:-4]
        if ext_name:
            dex_fn += "-" + ext_name
        else:
            dex_fn += ".dex"
        print(dex_path, dex_fn)
        rmall(TMP_FOLDER)
        os.system("%s de -o %s/ %s%s" % (BAKSMALI_BASE, TMP_FOLDER, ORG_ARCH_F, dex_path))
        os.system("%s as -a 23 -o %s/%s %s" % (SMALI_BASE, OUT_COMPO_FOLDER, dex_fn, TMP_FOLDER))
        rmall(TMP_FOLDER)


for COMPONENT, EXT in [
        ("framework", ".jar"),
        ("app",       ".apk"),
        ("priv-app",  ".apk")
    ]:
    REMOTE_BASE_FOLDER = "/system/" + COMPONENT + "/"
    ORG_COMPO_FOLDER = ORG_BASE_FOLDER + "/" + COMPONENT
    OUT_COMPO_FOLDER = OUT_BASE_FOLDER + "/" + COMPONENT

    rmall(OUT_COMPO_FOLDER)
    mkdir(OUT_COMPO_FOLDER)

    for arch in ARCH:
        ORG_ARCH_FOLDER = ORG_COMPO_FOLDER + "/" + arch
        BOOT_OAT_PATH = ARCH_BOOT_OAT_PATH[arch]
        print("De-oat %s classes for %s" % (COMPONENT, arch))
        for odex in listfiles(ORG_ARCH_FOLDER):
            if odex[-5:] != ".odex":
                continue
            org_odex_path = ORG_ARCH_FOLDER + "/" + odex
            dex_list = subprocess.check_output("%s list dex %s" % (BAKSMALI_BASE, org_odex_path), shell=True)
            dex_list = [f.strip() for f in dex_list.strip().split("\n")]
            for dex_path in dex_list:
                if dex_path[0:len(REMOTE_BASE_FOLDER)] != REMOTE_BASE_FOLDER:
                    continue
                ext_name = None
                dex_fn = dex_path[dex_path.rfind("/")+1:]
                # dex_fn = dex_path[len(REMOTE_BASE_FOLDER):]
                if ":" in dex_fn:
                    pos = dex_fn.index(":")
                    ext_name = dex_fn[pos+1:]
                    if ext_name[-4:] != ".dex":
                        continue
                    dex_fn = dex_fn[0:pos]
                if dex_fn[-len(EXT):] != EXT:
                    continue
                dex_fn = dex_fn[0:-len(EXT)]
                if ext_name:
                    dex_fn += "-" + ext_name
                else:
                    dex_fn += ".dex"
                print(dex_path, dex_fn)
                out_path = OUT_COMPO_FOLDER + "/" + dex_fn
                if os.path.exists(out_path):
                    continue
                rmall(TMP_FOLDER)
                subprocess.call("%s de -b %s -o %s/ %s%s" % (BAKSMALI_BASE, BOOT_OAT_PATH, TMP_FOLDER, org_odex_path, dex_path), shell=True)
                subprocess.call("%s as -a 23 -o %s %s" % (SMALI_BASE, out_path, TMP_FOLDER), shell=True)
                rmall(TMP_FOLDER)
