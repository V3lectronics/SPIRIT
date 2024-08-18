![logo-github-black-on-white](https://github.com/user-attachments/assets/60e87523-02cf-482b-8433-5f611e48ca2d)

Open source smartphone, from available components. Prioritizing user experience, performance, control, repairability, innovation and privacy.
(Currently in the prototyping phase, progress documented here and on the V
Electronics [YT channel](https://www.youtube.com/@V_Electronics)). Contribution
and feedback is very welcome!

# Contents
1. [General Specifications](https://github.com/barbarjan/SPIRIT#general-specifications)
1. [Architecture](https://github.com/barbarjan/SPIRIT#architecture)
1. [Hardware And Electronics](https://github.com/barbarjan/SPIRIT#hardware-and-electronics)
3. [Software And Operating System](https://github.com/barbarjan/SPIRIT#software-and-operating-system)
4. [Build Guide](https://github.com/barbarjan/SPIRIT#build-guide)
5. [Known Problems](https://github.com/barbarjan/SPIRIT#known-problems)
6. [Resources](https://github.com/barbarjan/SPIRIT#resources)

# General Specifications

#### RAM

- 4GB LPDDR4

#### CPU

- Broadcom BCM2711 quad-core Cortex-A72 (ARM v8) 64-bit SoC 1.5GHz

#### Storage

- 32GB eMMC
~~- 256 GB NVMe SSD~~ (still considering)

#### Connectivity (IO)

- 1 x USB 3.0
- 1 x micro HDMI
- 2.4 GHz, 5.0 GHz IEEE 802.11 b/g/n/ac wireless;
- Bluetooth 5

#### Screen

- 5.5" Capacitive Touch AMOLED Display
- resolution: 1080x1920 pixels
- https://pl.aliexpress.com/item/1005004285641847.html

or

- https://www.ebay.com/itm/256002984375?chn=ps&mkevt=1&mkcid=28

#### Battery

around 3400 mAh Li-Ion

#### Dimensions

# Architecture

![image](https://github.com/user-attachments/assets/72e48e5e-6249-4870-9c5f-a0e1d5bcfc7d)

# Hardware And Electronics

### Raspberry Pi Compute Module 4

"The power of Raspberry Pi 4 in a compact form factor for deeply embedded applications". [Product website](https://www.raspberrypi.com/products/compute-module-4/?variant=raspberry-pi-cm4001000)
SPIRIT uses the 4GB RAM, 32GB eMMC version of the CM. It is possible to increase the RAM to 8GB simply by using a different CM4 variant.

### Carrier PCB

Custom carrier board that interfaces between the CM4 and the rest of the electronics.

### Touchscreen
    
### Replaceable Battery

The battery is mounted such that it can be easily uninstalled for replacing or privacy reasons.

### GSM Module

### GPS Module

### Camera Module

SPIRIT uses a dual camera system featuring one wide angle camera and one sharp angle camera. There is no "selfie camera" on board. If you need to take a selfie use the wide camera and crop the image.

### Speaker system

### Biometric Module

### Headphone Jack

Yes, this phone has a headphone jack. This way the user can decide between wireless, usb C, jack.

### Microphone

### Buttons

#### Power Button

#### Programmable Button

The Programmable Button's function can be customized by the user. For example, it can be used for quick launching an app, toggling the flashlight, toggling sound settings (silent, vibrate, sound) etc. 

#### Volume Buttons

### Flashlight

### Rotation Sensor

### Temperature Sensor

1W 3V white, cool LED (SMD) [datasheet](https://otmm.lumileds.com/adaptivemedia/a8d0a06da712a5d9b12e577ab53c49b2cdd1e434).
Toggling on/off can be binded to the programmable button.

# Software And Operating System

# Build Guide

# Cost

# Known Problems

# Resources

- [Rpi CM4 datasheet](https://datasheets.raspberrypi.com/cm4/cm4-datasheet.pdf)
- [Rpi CM4 pinout from datasheet](https://datasheets.raspberrypi.com/cm4/cm4-datasheet.pdf#page=18)
- [Rpi CM4 useful interactive pinout](https://atctwo.net/projects/pinout/index.html)


