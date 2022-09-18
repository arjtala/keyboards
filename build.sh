#!/bin/sh

QMK_FIRMWARE_DIR=$HOME/src/qmk_firmware
LAYOUT=arj_ferris
LAYOUT_FILE=./ferris_compact_v01.json
CURRENTDIR=`pwd`

mkdir -p $QMK_FIRMWARE_DIR/keyboards/ferris/keymaps/$LAYOUT/
cp keymap.c $QMK_FIRMWARE_DIR/keyboards/ferris/keymaps/$LAYOUT/keymap.c
cp $LAYOUT_FILE $QMK_FIRMWARE_DIR/keyboards/ferris/keymaps/$LAYOUT/$LAYOUT_FILE

cd $QMK_FIRMWARE_DIR
qmk compile -kb ferris/0_2/compact -km $LAYOUT
cd $CURRENTDIR
