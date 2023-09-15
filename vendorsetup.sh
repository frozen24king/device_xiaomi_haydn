echo 'Starting to clone stuffs needed to build for Haydn'

# Device common
echo 'Cloning common device tree'
git clone https://github.com/frozen24king/device_xiaomi_sm8350-common -b evo-13 device/xiaomi/sm8350-common

# Kernel
echo 'Cloning kernel tree'
git clone --depth=1 --recursive https://github.com/frozen24king/android_kernel_xiaomi_sm8350 -b aosp-13 kernel/xiaomi/sm8350

# Vendor
echo 'Cloning vendor tree'
git clone https://github.com/frozen24king/vendor_xiaomi_haydn -b lineage-20 vendor/xiaomi/haydn

# Vendor common
echo 'Cloning common vendor tree'
git clone https://github.com/frozen24king/vendor_xiaomi_sm8350-common -b lineage-20 vendor/xiaomi/sm8350-common

# Xiaomi
echo 'Cloning hardware xiaomi'
rm -rf hardware/xiaomi && git clone https://github.com/frozen24king/lineage_android_hardware_xiaomi.git -b lineage-20 hardware/xiaomi

# Firmware
echo 'Cloning firmware'
git clone https://gitlab.com/haydn_new/evo_vendor_xiaomi_haydn-firmware -b thirteen vendor/xiaomi/haydn-firmware

# Camera
echo 'Cloning Leica Camera'
git clone --depth=1 https://gitlab.com/Alucard_Storm/haydn-miuicamera -b thirteen-leica vendor/xiaomi/haydn-miuicamera

# BCR
echo 'Cloning bcr'
git clone --depth=1 https://github.com/frozen24king/vendor_bcr.git -b main vendor/bcr

echo 'delete vendorsetup.sh from device tree once this is done'
