<p align="center">
    <img src="https://github.com/user-attachments/assets/60e87523-02cf-482b-8433-5f611e48ca2d">
    
</p>

![GitHub release (latest by date)](https://img.shields.io/github/v/release/V3lectronics/SPIRIT)
[![Contribution Guide](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)

Open source smartphone, from available components. Prioritizing user experience, performance, control, repairability, innovation and privacy.
(Currently in the development phase, progress documented here and on the V
Electronics [YT channel](https://www.youtube.com/@V_Electronics)). Contribution
and feedback is very welcome! If you want to contribute please read the [Contribution Guide](https://github.com/barbarjan/SPIRIT#CONTRIBUTING.md).

# Contents
1. [General Specifications](https://github.com/barbarjan/SPIRIT#general-specifications)
2. [Hardware And Electronics](https://github.com/barbarjan/SPIRIT#hardware-and-electronics)
3. [Software And Operating System](https://github.com/barbarjan/SPIRIT#software-and-operating-system)
4. [DIY Build Guide](https://github.com/barbarjan/SPIRIT#diy-build-guide)
5. [Parts List](https://github.com/barbarjan/SPIRIT#parts-list)
6. [Cost](https://github.com/barbarjan/SPIRIT#cost)
7. [Ethical And Environmental Concerns](https://github.com/barbarjan/SPIRIT#ethical-and-environmental-concerns)
8. [Compliance And Legality](https://github.com/barbarjan/SPIRIT#compliance-and-legality)
9. [Resources](https://github.com/barbarjan/SPIRIT#resources)

![image](https://github.com/user-attachments/assets/cdea4cf8-1d98-4f79-8434-2e76fc693916)

(click to expand)

<img src="https://github.com/user-attachments/assets/8e3343ce-18a7-48ca-b82e-1b5e81d234a5" height="270">

# General Specifications

#### RAM

- 4GB or 8GB LPDDR4

#### CPU

- Broadcom BCM2711 quad-core Cortex-A72 (ARM v8) 64-bit SoC 1.5GHz

#### Storage

- 32GB eMMC

#### Connectivity (IO)

- 1 x USB C 2.0
- 2.4 GHz, 5.0 GHz WiFi IEEE 802.11 b/g/n/ac wireless
- Bluetooth 5
- GSM

#### Screen

- 5.5" Capacitive Touch TFT Display
- resolution: 720x1280 pixels
- [datasheet](https://www.nxp.com/docs/en/supporting-information/RK055AHD091-CTG.pdf)

#### Battery

Capacity: 2.05Ah
Type: Lithium Polymer
Voltage: 3.7 V
Dimensions: 84.5mm x 47.5mm x 6.0mm (3.33" 1.87" 0.24")

Rationale behind the small battery capacity:

-The system is expected to be much more energy efficient (e.g. fewer background tasks),
than a standard smarpthone.

-Space and supply constraints

-The emptied battery can be swapped for a fully charged one to effectively get back to 100%
almost instantly.

*considering using cylindrical AAAA batteries for even easier replacement and
swapping, however there are some drawbacks like efficiency, and environmental
concerns.*

#### Dimensions

80mm x 148mm (±1mm)

Total estimated thickness is 11.3mm (excluding camera module lens sticking out)

Main components that contribute thickness:

| Component      | Thickness |
|----------------|-----------|
| Chassis        | 1 mm      |
| PCB            | 0.4 mm    |
| Battery        | 6 mm      |
| Screen         | 3.9 mm    |

#### Camera

SPIRIT uses the 64 MP Arducam Hawkeye camera.

| Name    | Sensor Resolution  | Zoom | Field Of View |
|---------|-----------------|-----|---------------|
|Pi Hawk-eye| 64MP (9152 x 6944 pixels) |  10x (digital) | 84 degrees |

Sensor: 1/1.7" stacked CMOS image sensor, 0.8 μm pixel size Lens: f/1.8 aperture, 8 cm–∞ focal range, motorised focusing Max Resolution: 9152×6944 stills; 1080p 30 fps video

For more details see the [product page](https://www.arducam.com/64mp-ultra-high-res-camera-raspberry-pi/)

For now there is no "selfie camera" on board.

*(For now there is only one camera for simplicity and cost reduction)*

# Hardware And Electronics

(click to expand)

<img src="https://github.com/user-attachments/assets/8e3343ce-18a7-48ca-b82e-1b5e81d234a5" height="270">

<img src="https://github.com/user-attachments/assets/1b5c8317-5b61-42c4-aa28-2d652b7e3833" height="270">

<img src="https://github.com/user-attachments/assets/655dda8d-f7a3-4751-8ac3-34f424bcf4d7" height="270">


### Raspberry Pi Compute Module 4

"The power of Raspberry Pi 4 in a compact form factor for deeply embedded applications" [(CM4 website)](https://www.raspberrypi.com/products/compute-module-4/?variant=raspberry-pi-cm4001000).
SPIRIT uses the 4GB RAM, 32GB eMMC version of the CM. It is possible to use a different CM4 variant (for example to increase the RAM to 8GB).

It is expected that future iterations of the design will use a different chip
due to memory and IO limitations.

### EDA Software

All design files are openly available through this repository.

There should be no issues with opening them with newer versions of Kicad (6 and up).

The PCB layout, schematics and other files related to the board are exported
from Kicad 6.0.11+dfsg-1 (Debian adapted package that excludes any non-free components).

This way all newer versions (6 and up) can open the project. If the files where made in Kicad 8 people with say kicad 7 could not open them.

The project will probably be migrated, after Kicad 8 becomes more stable or when there will be more contributors and switching versions will become annoying. For now this doesn't matter.

### Carrier PCB

Custom carrier board (motherboard) that interfaces between the CM4 and the rest of the electronics. It's function is to manage other system related tasks (such as battery charging).'

This is the only custom electronic component, however all of the design files
are publicly available through this repository.

### Touchscreen

Capacitive LCD Display TFT MIPI 
Dimensions: 5.5" (139.70mm) 1280px x 720px

### Replaceable Battery

The battery is mounted such that it can be easily uninstalled for replacing or privacy reasons.

An added benefit is that the user can easily replace an empty battery for a charged one - effectively eliminating the need to wait for the phone to charge. An external battery charger can also be used for unmounted batteries.

### GSM Module

*Not chosen yet*

### GPS Module

*datasheet description*

"YIC31009EBGG features high sensitivity, low power and ultra small form factor. The module is powered
by GOKE, which provides superior sensitivity and performance even in urban canyon and dense foliage
environment.
[...]
Through the feature of 66-channel, the YIC31009EBGG boasts a hot start in less than 1 second.
Innovative design and technology suppresses jamming sources and mitigates multipath effects, assisting
excellent navigation performance."

### Speakers

The speaker system consists of a pair of speakers mounted symmetrically facing upwards.
The speakers are both identical and the top speaker doubles as a "phone speaker".

### Biometric Module

The fingerprint scanner is located on the back of the phone and has a sensing
area of 8x8mm. It is rated for 10 million finger placements and can store up to
50 templates.

False acceptance rate: 1/500k (per finger)
False rejection rate: 1.4-3.5 %

### Headphone Jack

This phone has a TRRS headphone jack. This way the user can decide between wireless or wired.

### Microphone

Omnidirectional with a theorethical frequency range 20 Hz - 10 kHz.
Sensitivity: -26dB ±3dB @ 94dB SPL.
Digital output (I2S)

### Buttons

The power, volume and programmable buttons are identical rectangular, tactile switches with a life
expectancy of 30k cycles.

The Programmable Button's function can be customized by the user. For example, it can be used for quick launching an app, instantly dialing a saved contact, toggling sound settings (silent, vibrate, sound) etc. The list of potential use cases is very long. One of them could be enabling small children or elderly people to instantly call for example a parent, or supervisor in case of emergency. Another could be to immediately launch the camera app to quickly capture a moment.

### Flashlight

1W 3V white, cool LED (SMD) [datasheet](https://otmm.lumileds.com/adaptivemedia/a8d0a06da712a5d9b12e577ab53c49b2cdd1e434).
Toggling on/off can be binded to the programmable button.

# Software And Operating System

Once the hardware is functional it will be time to test various operating
systems as well as explore the possibility of developing one based on Debian.

List of OS to test/research.

| Name           | Website |
|----------------|-----------|
| Ubuntu Touch   | https://ubuntu-touch.io/     |
| Lineage        | https://lineageos.org/    |
| Graphene       | https://grapheneos.org/features      |
| Android        | https://www.android.com/      |

Additionally, The Yocto Project has been suggested (not an OS) https://www.yoctoproject.org/

*** Flashing an OS

To flash an OS to eMMC pull down the ... pin

# DIY Build Guide

Link to build guide/tutorial: No build guide yet

# Parts List

<details>
      <summary>Click here to show</summary>

todo fix links

| Amount | Name | Unit Price (USD)| Digikey Link |
|--------|------|---------------|--------------|
|1|RPi CM4 |65|https://www.digikey.pl/en/products/detail/raspberry-pi/SC0686/13530938?s=N4IgjCBcoLQCxVAYygMwIYBsDOBTANCAPZQDaIAHAJwAMVA7CALoC%2BLhATGSBwGxwUYAZQDCNZiyA|
|1| Carrier PCB|?|N/A|
|1| Touch screen|96,99|https://www.digikey.pl/en/products/detail/nxp-usa-inc/RK055HDMIPI4MA0/16274141 |
|1| Main Camera|66|https://www.digikey.com/en/products/detail/sparkfun-electronics/SEN-21276/21443092 |
|1| Battery|9,85|https://www.digikey.pl/en/products/detail/jauch-quartz/LP504783JU-PCM-2-WIRES-70MM/13540155|
|1| ??? BMS chip | | |
|1| 21 pin FFC connector|2.76|https://www.digikey.ca/en/products/detail/hirose-electric-co-ltd/FH72-31S-0-3SHW/13553267|
|1| 22 pin FFC connector|2,21|https://www.digikey.pl/en/products/detail/hirose-electric-co-ltd/FH12-22S-0-5SH-55/1110321|
|1| 10 pin FFC connector|0,20|https://www.digikey.pl/en/products/detail/te-connectivity-amp-connectors/1-2328702-0/9565577|
|1| Flashlight LED|3,03|https://www.digikey.pl/en/products/detail/lumileds/LXML-PWC1-0100/3961144|
|1| 35mm Jack|0.97|https://www.digikey.com/en/products/detail/same-sky-formerly-cui-devices/SJ2-3574A-SMT-TR/6619530|
|2| Speaker|2,53|https://www.digikey.pl/en/products/detail/cui-devices/CMR-15062S-67/9561156|
|1| Microphone|1,95|https://www.digikey.pl/en/products/detail/knowles/SPH0645LM4H-B/5332440|
|1| USB C 2.0 Connector|0,81|https://www.digikey.com/en/products/detail/gct/USB4105-GF-A/11198441|
|?| Overvoltage protector|0,43|https://www.digikey.pl/en/products/detail/littelfuse-inc/SMBJ5-0A/285950|
|1| Fingerprint Card|29|https://www.digikey.pl/en/products/detail/fingerprint-cards-ab/100018754/11480144?s=N4IgjCBcpgnAHLKoDGUBmBDANgZwKYA0IA9lANogAMIAugL7EC0ATMiGpAC4BOArkVIUQAVjqMQTAGztOvAcTKRKAZhDE2DCW2Uh0ASwB2Ac3w8ADjyNdxQA|
|1| GPS Module|7,25|https://www.digikey.pl/en/products/detail/yic/YIC31009EBGG/16499057|
|1| GSM Module|||
|1| Vibration Motor|1,71|https://www.digikey.pl/en/products/detail/pui-audio-inc/HD-EMB1205-3-SC-R/16522073|
|1| Small LED|||
|1| Thermistor|0,10|https://www.digikey.pl/en/products/detail/panasonic-electronic-components/ERT-JZEG103FA/9646736|
|1| DAC for audio output||
|1| Jumper female nRPI_BOOT||
|1| Jumper female GND||
|?| Header pins||
|?| M1.6 stainless screws||
|?| M? RPi size stainless screws||
|?| M? Arducam size stainless screws||
|?| M? RPi size stainless tandoffs||

</details>

# Cost

The total cost of the device is x (excluding shipping)

# Ethical And Environmental Concerns

SPIRIT phones avoid components produced in unfair or harmful ways, as well as
containing conflict minerals if possible. 

Here are ethical details for each major component:

-Chassis
-CM4
-Battery
-Screen
-Chassis
-Speakers

The goal is to be 100% ethically and environmentally "clean" as soon as possible, however that is
not an easy task and presents multiple enginnering challenges.

?RoHS complicance

# Compliance And Legality

### EU

Ecodesign Regulation 2023/1670

?EMI norms

?RoHS

?REACH

?WEEE

### N America
?

### S America
?

### Asia
?

### Africa
?

### Australia
?

# Resources

- [Rpi CM4 datasheet](https://datasheets.raspberrypi.com/cm4/cm4-datasheet.pdf)
- [Rpi CM4 pinout from datasheet](https://datasheets.raspberrypi.com/cm4/cm4-datasheet.pdf#page=18)
- [Rpi CM4 useful interactive pinout](https://atctwo.net/projects/pinout/index.html)
