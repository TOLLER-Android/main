SMALI_PATH="./smali-2.3.4.jar"

java -jar "$SMALI_PATH" as -a 23 -o ../deoat/boot/framework.dex ./out_0/
java -jar "$SMALI_PATH" as -a 23 -o ../deoat/boot/framework-classes2.dex ./out/
