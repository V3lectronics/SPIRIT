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
4. [DIY Build Guide](https://github.com/barbarjan/SPIRIT#diy-build-guide)
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

SPIRIT uses a dual camera system featuring one wide angle camera and one sharp angle camera. There is no "selfie camera" on board. If you want to take a selfie simply use the wide camera and crop the image. There is small mirror present on the back that can help to better align your shots.

### Speakers

The speaker system consists of a pair of 8 ohms, general purpose units by Soberton Inc. The power rating of a single speaker is 700 mW.

#### Frequency response:
![image](https://github.com/user-attachments/assets/a44c71a4-95e5-41cf-9210-3935bde98a9b)
Source: datasheet

### Biometric Module

### Headphone Jack

This phone has a headphone jack. This way the user can decide between wireless or wired.

### Microphone

### Buttons

#### Power Button

#### Programmable Button

The Programmable Button's function can be customized by the user. For example, it can be used for quick launching an app, instantly dialing a saved contact, toggling sound settings (silent, vibrate, sound) etc. The list of potential use cases is very long. One of them could be enabling small children or elderly people to instantly call for example a parent, or supervisor in case of emergency. Another could be to immediately launch the camera app to quickly capture a moment.

### Flashlight

1W 3V white, cool LED (SMD) [datasheet](https://otmm.lumileds.com/adaptivemedia/a8d0a06da712a5d9b12e577ab53c49b2cdd1e434).
Toggling on/off can be binded to the programmable button.

# Software And Operating System

# DIY Build Guide

# Parts List

| Amount | Name | Unit Price($) | Digikey Link |
|--------|------|-------|--------------|
|1|RPi CM4 |65 |https://www.digikey.pl/en/products/detail/raspberry-pi/SC0686/13530938?s=N4IgjCBcoLQCxVAYygMwIYBsDOBTANCAPZQDaIAHAJwAMVA7CALoC%2BLhATGSBwGxwUYAZQDCNZiyA|
|1|Carrier PCB||N/A|
|1|Touch screen|96,99|https://www.digikey.pl/en/products/detail/nxp-usa-inc/RK055HDMIPI4MA0/16274141 |
|1|Main Camera|66 |https://www.digikey.com/en/products/detail/sparkfun-electronics/SEN-21276/21443092 |
|1|Wide Camera| | |
|1|Battery| | |
|3|FFC connector FH12-22S-0.5SH|2,21|https://www.digikey.pl/en/products/detail/hirose-electric-co-ltd/FH12-22S-0-5SH-55/1110321
|1|Flashlight LED|3,03|https://www.digikey.pl/en/products/detail/lumileds/LXML-PWC1-0100/3961144|
|1|Micro HDMI 1.4 Connector|1,82|https://www.digikey.pl/en/products/detail/amphenol-cs-fci/10118242-001RLF/2785385?s=N4IgTCBcDaIIwAY5wBxgCxgLQKQJQBkAxEAXQF8g|
|1|35mm jack connector|1,78 | https://www.digikey.com/en/products/detail/switchcraft-inc/35RAPC4BHN2/1288690?s=N4IgTCBcDaIMwFYBKBBACgYQCwCEASAchALoC%2BQA|
|2|Speaker| 2,26|https://www.digikey.pl/en/products/detail/soberton-inc/SP-1511S-1/6099099 |
|1|Microphone| | |
|1|USB C 2.0 Connector|0,81|https://www.digikey.com/en/products/detail/gct/USB4105-GF-A/11198441|
|1|Mirror||
| |M1.6 stainless screws||

# Cost

The total cost of the device is x (excluding shipping)

# Known Problems

# Resources

- [Rpi CM4 datasheet](https://datasheets.raspberrypi.com/cm4/cm4-datasheet.pdf)
- [Rpi CM4 pinout from datasheet](https://datasheets.raspberrypi.com/cm4/cm4-datasheet.pdf#page=18)
- [Rpi CM4 useful interactive pinout](https://atctwo.net/projects/pinout/index.html)


