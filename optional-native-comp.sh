#! /usr/bin/env bash

NATIVE_COMP_LIST=(
    "--with-native-compilation=aot"
    "--with-native-compilation"
    "--without-native-compilation"
)

NATIVE_COMP="--with-native-compilation=aot"

for value; do

    if [[ " ${NATIVE_COMP_LIST[*]} " =~ " ${value} " ]]; then
        NATIVE_COMP=${value}
    fi
done

echo "native-comp: ${NATIVE_COMP}"

echo "
./configure \
    ${NATIVE_COMP} \
    --without-dbus \
"
