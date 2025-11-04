#! /bin/bash

rm -rf .repo/local_manifests; \
repo init -u https://github.com/Lunaris-AOSP/android -b 16 --git-lfs; \
rm -rf prebuilts/clang/host/linux-x86; \
/opt/crave/resync.sh; \


rm -rf out/target/product/munch; \
rm -rf device/xiaomi/munch; \
rm -rf kernel/xiaomi/munch; \
rm -rf vendor/xiaomi/munch-firmware; \
rm -rf vendor/xiaomi/munch; \
rm -rf hardware/xiaomi; \
rm -rf hardware/dolby; \
rm -rf vendor/xiaomi/miuicamera; \


git clone https://github.com/16GBRAM/android_device_xiaomi_munch.git -b 16 device/xiaomi/munch; \

git clone https://github.com/16GBRAM/android_vendor_xiaomi_munch.git -b 16 vendor/xiaomi/munch; \

git clone https://codeberg.org/munch-devs/android_vendor_xiaomi_munch-firmware -b vic vendor/xiaomi/munch-firmware; \

git clone https://github.com/SenseiiX/fusionX_sm8250.git -b wip-next kernel/xiaomi/munch; \

git clone https://github.com/Lordputin404/android_hardware_xiaomi.git -b lineage-22.2 hardware/xiaomi; \

git clone https://github.com/16GBRAM/android_hardware_dolby.git -b vic hardware/dolby; \

git clone https://codeberg.org/munch-devs/android_vendor_xiaomi_miuicamera.git -b 16 vendor/xiaomi/miuicamera; \


. build/envsetup.sh; \
lunch lineage_munch-bp2a-user
m lunaris
