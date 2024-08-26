(https://xdaforums.com/attachments/img_20220426_005411_470-jpg.5629985/)
# AOSP Sandwich Kernel for Samsung Galaxy J700F/H/M

![Kernel](https://img.shields.io/badge/Kernel-v3.10-blue) ![Device](https://img.shields.io/badge/Device-J700F/H/M-green) ![Status](https://img.shields.io/badge/Status-Active-success)

> **AOSP Sandwich Kernel** is a custom kernel tailored for the Samsung Galaxy J700F/H/M series, aiming to deliver superior performance and stability. This kernel is optimized for users seeking enhanced battery life, improved multitasking, and overall a better Android experience.

## ✨ Features

- **Toolchain**: Compiled with Linaro Toolchain 7.5 (2019/12)
  - Updated GCC to 7.5
  - Applied Graphite, Ofast, unroll-loops, and GCC optimizations
- **CPU & GPU Tweaks**:
  - Removed overclock, restored stock CPU frequencies
  - Overclocked GPU from 668MHz to 800MHz
  - Added new CPU governors:
    - **Intelliactive (default)**
    - **ConservativeX**
    - **InteractivePro**
    - **OnDemand** (untested)
  - Added new I/O schedulers:
    - **Noop (default)**
    - **Maple**
    - **Deadline**
    - **CFQ**
- **Hotplugging & Power**:
  - Removed sluggish dynamic Exynos 7580 hotplug and introduced **Lazyplug**
  - Powersuspend hooks in GPU, CPU governors, and more
  - Added **Power efficiency** features by NVIDIA™
- **Memory & Performance**:
  - Enabled zRAM with LZO & LZ4 compression (Thanks to Danny from LineageOS)
  - Enabled Simple Low Memory Killer
  - Improved CPU load management and multitasking
  - Device enters deep sleep more quickly
  - Tweaked thermal throttle of GPU
  - **fSync Toggle**, **Boeffla Wakelock Blocker 1.1.0**
  - Updated **fRandom driver** for faster random number generation
  - **F2FS** file system support (Thanks to J7 LineageOS team)
- **Network & TCP**:
  - Tweaked TCP speed for improved internet performance
  - Default TCP congestion algorithm set to **westwood**
  - Optimized westwood TCP for better overall experience
- **Security**:
  - Latest **Wireguard** support
  - **SeLinux toggle switch**
  - Disabled CRC check by default
- **Additional Optimizations**:
  - Minor memory leaks fixed
  - Project revamped with numerous under-the-hood optimizations

## 📥 Installation

### Requirements:

- Rooted Samsung Galaxy J700F/H/M device
- Custom recovery installed (e.g., TWRP)

### Steps:

1. **Download** the latest kernel ZIP from the [XDA Developers thread](https://forum.xda-developers.com/t/kernel-aosp-sandwich-kernel-for-j700f-h-m.4437003/).
2. **Boot** into recovery mode.
3. **Create a Nandroid Backup** (recommended).
4. **Flash** the kernel ZIP using your custom recovery.
5. **Wipe dalvik cache and cache**.
6. **Reboot** your device and enjoy!

## 🛠 Troubleshooting

If you face any issues or have questions:

- Visit the [XDA Developers thread](https://forum.xda-developers.com/t/kernel-aosp-sandwich-kernel-for-j700f-h-m.4437003/).
- Check for existing solutions or post your query in the forum.

## 🙌 Credits

AOSP Sandwich Kernel is fork of Linux Kernel 3.10 by [Ahmad Khan](https://github.com/AhmadKhan006).
