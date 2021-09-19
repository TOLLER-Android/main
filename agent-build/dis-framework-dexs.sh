BAKSMALI_PATH="./baksmali-2.3.4.jar"

java -jar "$BAKSMALI_PATH" d -o ./out_0 ../deoat/boot/framework.dex
java -jar "$BAKSMALI_PATH" d -o ./out ../deoat/boot/framework-classes2.dex
