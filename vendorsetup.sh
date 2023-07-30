echo 'Starting to clone stuffs needed to build for Haydn'

# Device common
echo 'Cloning common device tree'
git clone --depth=1 https://github.com/frozen24king/device_xiaomi_sm8350-common -b voltage-13 device/xiaomi/sm8350-common

# Kernel
echo 'Cloning kernel tree'
git clone --recursive --depth=1 https://github.com/frozen24king/android_kernel_xiaomi_sm8350 -b lineage-20 kernel/xiaomi/sm8350

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
git clone https://gitlab.com/haydn_new/vendor_xiaomi_haydn-firmware.git -b thirteen vendor/xiaomi/haydn-firmware

# Camera
echo 'Cloning Leica Camera'
git clone https://gitlab.com/haydn_new/haydn-miuicamera -b thirteen-leica vendor/xiaomi/haydn-miuicamera

echo 'Expose aux camera if packagename is null'
cd frameworks/base
wget https://raw.githubusercontent.com/frozen24king/Patch-haydn/Rising-13/0001-Expose-aux-camera-if-packagename-is-null.patch
patch -p1 <0001-Expose-aux-camera-if-packagename-is-null.patch
cd ../..

echo 'Adding slow-mo fix for Leica Camera'
cd hardware/interfaces
wget https://raw.githubusercontent.com/frozen24king/Patch-haydn/Octavi-13/0003-Update-HIDL-overrideFormat-from-HAL.patch
patch -p1 <0003-Update-HIDL-overrideFormat-from-HAL.patch
cd ../..

echo 'delete vendorsetup.sh from device tree once this is done'
