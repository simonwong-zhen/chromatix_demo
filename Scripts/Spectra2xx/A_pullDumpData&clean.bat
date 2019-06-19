:: #########################################################################
:: # File Name: simulation.sh
:: # Author: Alvin
:: # mail: shiyunfeng@huaqin.com
:: # Created Time: Tue 20 Jun 2017 03:46:02 PM CST
:: #########################################################################

REM TCP Connections
adb wait-for-device
adb root
adb wait-for-device
adb remount

adb shell input keyevent 27

timeout /t 3

adb pull /data/vendor/camera/ .
adb pull /sdcard/DCIM/Camera/ .

adb shell rm -rf /data/vendor/camera/*.RAWMIPI
adb shell rm -rf /sdcard/DCIM/Camera/

adb shell sync
adb shell sync
adb shell sync
