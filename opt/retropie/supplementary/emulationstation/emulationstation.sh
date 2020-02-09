#!/bin/bash
esdir="$(dirname $0)"

ROTATION_CFG_PATH="/opt/retropie/configs/all"
ROTATION_CFG_PATH+="/CRT/bin/ScreenUtilityFiles/resources"
ROTATION_CFG_PATH+="/assets/screen_emulationstation/CRTResources/configs"
CABLE_SELECTOR_FILE="/opt/retropie/configs/all"
CABLE_SELECTOR_FILE+="/CRT/bin/ScreenUtilityFiles/bin"
CABLE_SELECTOR_FILE+="/module_rgb_cable_switcher/CRT-RGB-Cable_Launcher.py"

RES_X=0
RES_Y=0
ES_ROTATION_FLAGS=""

MODE_TATE1_FILE="$ROTATION_CFG_PATH/es-select-tate1"
MODE_TATE3_FILE="$ROTATION_CFG_PATH/es-select-tate3"
MODE_YOKO_FILE="$ROTATION_CFG_PATH/es-select-yoko"
MODE_FBOOT_FILE="$ROTATION_CFG_PATH/first-boot"

function rotate_screen ()
{
    read RES_X RES_Y <<<$(cat /sys/class/graphics/fb0/virtual_size | awk -F'[,]' '{print $1, $2}')
	if [ -f $MODE_TATE1_FILE ]; then
		ES_ROTATION_FLAGS="--screenrotate 1 -screensize ${RES_Y} ${RES_X}"
	elif [ -f $MODE_TATE3_FILE ]; then
		ES_ROTATION_FLAGS="--screenrotate 3 -screensize ${RES_Y} ${RES_X}"
	else
		ES_ROTATION_FLAGS=""
	fi

	if [ -f $MODE_FBOOT_FILE ]; then
		rm -f $MODE_FBOOT_FILE
		python $CABLE_SELECTOR_FILE
	fi
}

while true; do
    rm -f /tmp/es-restart /tmp/es-sysrestart /tmp/es-shutdown
	rotate_screen
	"$esdir/emulationstation" $ES_ROTATION_FLAGS "$@"
    ret=$?
    if [ -f /tmp/es-restart ]; then
        continue
    fi
    if [ -f /tmp/es-sysrestart ]; then
        rm -f /tmp/es-sysrestart
        sudo reboot
        break
    fi
    if [ -f /tmp/es-shutdown ]; then
        rm -f /tmp/es-shutdown
        sudo poweroff
        break
    fi
    break
done

exit $ret

