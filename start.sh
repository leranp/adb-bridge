#! /bin/sh

echo "starting"
adb -a -P 5037 server nodaemon &
sleep 30
adb connect $DEVICE_ADDR:5555
adb devices


while true; do
  adb connect $DEVICE_ADDR:5555 2>&1 > /dev/null
  sleep 60
done
