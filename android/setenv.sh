# by default the Android NDK root is at /usr/lib/android-ndk
export NDK=/Users/lucas/Library/Android/sdk/ndk/23.1.7779620

# valid values: arm-linux-androideabi-4.9, aarch64-linux-android-4.9, x86-4.9, x86_64-4.9
#export TOOLCHAIN=aarch64-linux-android-4.9
export TOOLCHAIN=$NDK/toolchains/llvm/prebuilt/darwin-x86_64

# valid values: arm-linux-androideabi, aarch64-linux-android, i686-linux-android, x86_64-linux-android
export TARGET=aarch64-linux-android

# valid value: android-XX, where XX is 9-24
export API=24

# valid values: arch-arm, arch-arm64, arch-x86, arch-x86_64
export ARCH=arch-arm64

export ANDROID_PREFIX=${NDK}/toolchains/llvm/prebuilt/darwin-x86_64
export SYSROOT=${TOOLCHAIN}/sysroot
# export CROSS_PATH=${ANDROID_PREFIX}/bin/${TARGET}

# settings for compiler
export AR=$TOOLCHAIN/bin/llvm-ar
export CC=$TOOLCHAIN/bin/$TARGET$API-clang
export AS=$CC
export CPP="$CC -E"
export CXX=$TOOLCHAIN/bin/$TARGET$API-clang++
export LD=$TOOLCHAIN/bin/ld
export RANLIB=$TOOLCHAIN/bin/llvm-ranlib
export STRIP=$TOOLCHAIN/bin/llvm-strip
export NM=$TOOLCHAIN/bin/llvm-nm
export OBJDUMP=$TOOLCHAIN/bin/llvm-objdump
export READELF=$TOOLCHAIN/bin/llvm-readelf
