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
5. [Parts List](https://github.com/barbarjan/SPIRIT#parts-list)
6. [Cost](https://github.com/barbarjan/SPIRIT#cost)
7. [Known Problems](https://github.com/barbarjan/SPIRIT#known-problems)
8. [Resources](https://github.com/barbarjan/SPIRIT#resources)

# General Specifications

#### RAM

- 4GB LPDDR4

#### CPU

- Broadcom BCM2711 quad-core Cortex-A72 (ARM v8) 64-bit SoC 1.5GHz

#### Storage

- 32GB eMMC
~~- 256 GB NVMe SSD~~ (still considering)

#### Connectivity (IO)

- 1 x USB C 2.0
- 1 x micro HDMI
- 2.4 GHz, 5.0 GHz IEEE 802.11 b/g/n/ac wireless;
- Bluetooth 5

#### Screen

- 5.5" Capacitive Touch TFT Display
- resolution: 720x1280 pixels
- [datasheet](https://www.nxp.com/docs/en/supporting-information/RK055AHD091-CTG.pdf)

#### Battery

Around 3400 mAh Li-Ion (undecided yet)

#### Dimensions

#### Camera



# Architecture

(Ticks represent that the component/subsystem has been chosen and/or implemented) 
![image](https://github.com/user-attachments/assets/582c2459-ce2a-44ca-8861-d7eb2b4fadfe)

# Hardware And Electronics

### Raspberry Pi Compute Module 4

"The power of Raspberry Pi 4 in a compact form factor for deeply embedded applications" [(CM4 website)](https://www.raspberrypi.com/products/compute-module-4/?variant=raspberry-pi-cm4001000).
SPIRIT uses the 4GB RAM, 32GB eMMC version of the CM. It is possible to use a different CM4 variant (for example to increase the RAM to 8GB).

### Carrier PCB

#### EDA Software

All design files are openly available through this repository.

There should be no issues with opening them with newer versions of Kicad (6 and up).

The PCB layout, schematics and other files related to the board are exported
from Kicad 6.0.11+dfsg-1 (Debian adapted package that excludes any non-free components).

#### Why Kicad 6?

-This way all newer versions (6 and up) can open the project. If the files where made in Kicad 8 people with say kicad 7 could not open them.

-Stable as a rock (tested by Debian )

The project will probably be migrated, after Kicad 8 becomes more stable or when there will be more contributors and switching versions will become annoying. For now this doesn't matter.

#### Carrier PCB

Custom carrier board that interfaces between the CM4 and the rest of the electronics.

### Touchscreen

### Replaceable Battery

The battery is mounted such that it can be easily uninstalled for replacing or privacy reasons. 

An added benefit is that the user can easily replace an empty battery for a charged one - effectively eliminating the need to wait for the phone to charge. An external battery charger can also be used for umnounted batteries.

### GSM Module

### GPS Module

### Camera Modules

Main camera: ARDUCAM 64MP AUTOFOCUS

Wide angle camera: 

SPIRIT uses a dual camera system featuring one wide angle camera and one sharp angle camera. There is no "selfie camera" on board. If you need to take a selfie use the wide camera and crop the image. There is a small mirror on the back so you can better align your shots.

### Speaker system

The audio system uses a double 8 ohms general purpose speaker setup by Soberton Inc. The power rating of a single speaker is 700 mW.

#### Frequency response:
![image](https://github.com/user-attachments/assets/a44c71a4-95e5-41cf-9210-3935bde98a9b)
Source: datasheet

### Biometric Module

### Headphone Jack

This phone has a headphone jack. This way the user can decide between wireless, usb C, jack.

### Microphone

### Buttons

#### Power Button

#### Programmable Button

The Programmable Button's function can be customized by the user. For example, it can be used for quick launching an app, toggling the flashlight, toggling sound settings (silent, vibrate, sound) etc. 

-This way all newer versions (6 and up) can open the project after . If
the files where in Kicad 8 people with say kicad 7 could not open them.

### Flashlight

1W 3V white, cool LED (SMD) [datasheet](https://otmm.lumileds.com/adaptivemedia/a8d0a06da712a5d9b12e577ab53c49b2cdd1e434).
Toggling on/off can be binded to the programmable button.

# Software And Operating System

# Build Guide

# Parts List

| Amount | Name | Price($) | Digikey Link |
|--------|------|-------|--------------|
|1      |CM4   |65     | https://www.digikey.pl/en/products/detail/raspberry-pi/SC0686/13530938?s=N4IgjCBcoLQCxVAYygMwIYBsDOBTANCAPZQDaIAHAJwAMVA7CALoC%2BLhATGSBwGxwUYAZQDCNZiyA|
|3 | FFC connector FH12-22S-0.5SH|2,21      |https://www.digikey.pl/en/products/detail/hirose-electric-co-ltd/FH12-22S-0-5SH-55/1110321
|1|Flashlight LED|3,03|https://www.digikey.pl/en/products/detail/lumileds/LXML-PWC1-0100/3961144|
|1|Micro HDMI Socket|1,82|https://www.digikey.pl/en/products/detail/amphenol-cs-fci/10118242-001RLF/2785385?s=N4IgTCBcDaIIwAY5wBxgCxgLQKQJQBkAxEAXQF8g|
|1|Touch screen| | |
|1|Battery| | |
|1|USB C Connector| | |


- CM4
- 3xFCC connector

# Cost

# Known Problems

# Resources

- [Rpi CM4 datasheet](https://datasheets.raspberrypi.com/cm4/cm4-datasheet.pdf)
- [Rpi CM4 pinout from datasheet](https://datasheets.raspberrypi.com/cm4/cm4-datasheet.pdf#page=18)
- [Rpi CM4 useful interactive pinout](https://atctwo.net/projects/pinout/index.html)


