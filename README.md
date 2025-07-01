<p align="center">
    <img src="https://github.com/user-attachments/assets/60e87523-02cf-482b-8433-5f611e48ca2d" width="40%">
    <br>
    <img src="https://github.com/user-attachments/assets/99de57de-c5d9-4f54-9140-fb388b046b55" width="15%">

</p>

![GitHub release (latest by date)](https://img.shields.io/github/v/release/V3lectronics/SPIRIT)
[![Contribution Guide](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)

Open source smartphone, from available components. Prioritizing user experience, performance, control, repairability, innovation and privacy.
Contribution and feedback are very welcome! [Contribution Guide](https://github.com/V3lectronics/SPIRIT/blob/main/CONTRIBUTING.md).
(Currently in the development phase, progress documented here and on the V Electronics [YT channel](https://www.youtube.com/@V_Electronics)).

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

<img src="https://github.com/user-attachments/assets/4dba7969-60c1-43f5-814a-f7a4f81a73d9" height="350">

<img src="https://github.com/user-attachments/assets/1b5c8317-5b61-42c4-aa28-2d652b7e3833" height="270">

<img src="https://github.com/user-attachments/assets/4742305e-44ab-4d84-8185-f4b7e9df42e7" height="270">

# General Specifications

#### RAM

- 2GB / 4GB / 8GB / 16GB(2025) LPDDR4

#### CPU

- Broadcom BCM2712 64-bit 2.4 GHz

#### Storage

- 16GB, 32GB, or 64GB eMMC

#### Connectivity (IO)

- 1 x USB C 3.0
- 2.4 GHz, 5.0 GHz WiFi
- Bluetooth 5
- GSM
- GPS

#### Screen

- 5.5" Capacitive Touch TFT Display
- resolution: 720x1280 pixels

#### Battery

_will change soon_
- Capacity: 2.05Ah
- Type: Lithium Polymer
- Voltage: 3.7 V
- Dimensions: 84.5mm x 47.5mm x 6.0mm (3.33" 1.87" 0.24")
- The battery can be easily swapped for a fully charged one to effectively get back to 100%
almost instantly.

#### Dimensions

80mm x 148mm (±1mm)

Total estimated thickness is 12.3mm (excluding camera module lens sticking out)

Main components that contribute thickness:

| Component      | Thickness |
|----------------|-----------|
| Chassis        | 1 mm      |
| PCB            | 1.4 mm    |
| Battery        | 6 mm      |
| Screen         | 3.9 mm    |

#### Camera

SPIRIT is compatible with [Arducam](https://www.arducam.com/) cameras e.g. the [64 MP Hawkeye](https://www.arducam.com/64mp-ultra-high-res-camera-raspberry-pi/) or the more affordable [16 MP Autofocus](https://www.arducam.com/16mp-autofocus-camera-for-raspberry-pi/).

Below are the stats for the Hawkeye:

| Name    | Sensor Resolution  | Zoom | Field Of View |
|---------|-----------------|-----|---------------|
|Pi Hawk-eye| 64MP (9152 x 6944 pixels) |  10x (digital) | 84 degrees |

Sensor: 1/1.7" stacked CMOS image sensor, 0.8 μm pixel size Lens: f/1.8 aperture, 8 cm–∞ focal range, motorised focusing Max Resolution: 9152×6944 stills; 1080p 30 fps video

For more details see the [product page](https://www.arducam.com/64mp-ultra-high-res-camera-raspberry-pi/)

*(For now there is only one camera for simplicity and cost reduction)*

# Hardware And Electronics

(click to expand)

<img src="https://github.com/user-attachments/assets/4dba7969-60c1-43f5-814a-f7a4f81a73d9" height="270">

### Raspberry Pi Compute Module 5

"The power of Raspberry Pi 5 in a compact form factor for deeply embedded applications" [(CM5 website)](https://www.raspberrypi.com/products/compute-module-5/?variant=cm5-104032).

By default SPIRIT uses the 4GB RAM, 64GB eMMC version of the CM. It is possible to use a different CM4 variant (for example to increase the RAM to 8GB).

### EDA Software

For schematic, PCB layout etc. KiCad 8 is used.

All design files are openly available through this repository.

### Carrier PCB

Custom carrier board (motherboard) that interfaces between the Compute Module and the rest of the electronics.

This is the only custom electronic component in this project. The design files
are publicly available.

### Touchscreen

Capacitive LCD Display TFT MIPI 
Dimensions: 5.5" (139.70mm) 1280px x 720px

### Replaceable Battery

The battery is mounted such that it can be easily uninstalled for replacing or privacy reasons. The user is free to swap the battery for any compatible model.
It is also possible to run the phone without a battery, or using an external one
if you attach long enough leads.

An added benefit is that the user can easily replace an empty battery for a charged one - effectively eliminating the need to wait for the phone to charge. An external battery charger can also be used for unmounted batteries.

### GSM, GPS Module

EC25VFA-512-STD

Cellular, Navigation BeiDou, EDGE, Galileo, GLONASS, GPS, GNSS, LTE Transceiver Module 1.561GHz, 1.575GHz, 1.602GHz

### Speakers

2 x CMR-15062S-67

32 Ohms Receiver Speaker 20 mW 300 Hz ~ 7 kHz Top Rectangular

The speaker system consists of a pair of speakers mounted symmetrically facing upwards.

### Biometric Module

100018754

The fingerprint scanner is located on the back of the phone and has a sensing
area of 8x8mm. It is rated for 10 million finger placements and can store up to
50 templates.

False acceptance rate: 1/500k (per finger)
False rejection rate: 1.4-3.5 %

### Headphone Jack

This phone has a TRRS headphone jack. This way the user can decide between wireless or wired.

### Microphone

SPH0645LM4H-B

Omnidirectional with a theorethical frequency range 20 Hz - 10 kHz.
Sensitivity: -26dB ±3dB @ 94dB SPL.
Digital output (I2S)

### Buttons

The power, volume and programmable buttons are identical rectangular, tactile switches with a life
expectancy of 30k cycles.

The Programmable Button's function can be customized by the user. For example, it can be used for quick launching an app, instantly dialing a saved contact, toggling sound settings (silent, vibrate, sound) etc. The list of potential use cases is very long. One of them could be enabling small children or elderly people to instantly call for example a parent, or supervisor in case of emergency. Another could be to immediately launch the camera app to quickly capture a moment.

### Privacy Switches

SPIRIT has 4 physical switches that cut off the power lines to specific modules
ensuring they are 100% inactive and not drawing power. Notice, you can also
completely disconnect the battery. Needless to say, this is a very useful
feature for people who want to have direct control over the hardware and want to
protect their privacy without relying on software.

| Switch Number | Module |
|----------------|-----------|
| 1| Microphone|
| 2|GPS/GSM EC25 chip |
| 3|Camera |
| 4|Battery |

### Flashlight

LXML-PWC1-0100

1W 3V white, cool LED.

Toggling on/off can be binded to the programmable button.

# Software And Operating System

Once the hardware is functional it will be time to test various operating
systems as well as explore the possibility of developing one based on Debian.

List of operating systems to test/research:

| Name           | Website |
|----------------|-----------|
| Ubuntu Touch   | https://ubuntu-touch.io/     |
| Lineage        | https://lineageos.org/    |
| Graphene       | https://grapheneos.org/features      |
| Android        | https://www.android.com/      |

Additionally, The Yocto Project has been suggested (not an OS) https://www.yoctoproject.org/

# DIY Build Guide

Link to build guide/tutorial: No build guide yet

# Parts List

The list will be updated soon. To get the most up-to-date parts list please look
at the BOM. Certain components such as the camera can be swapped for a different
model - the presented setup is just a suggestion.

TODO update parts list

<details>
      <summary>Click here to show/hide</summary>

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

TODO
Here are ethical details for each major component:

-Chassis
-CM5
-Battery
-Screen
-Chassis
-Speakers

The goal is to be 100% ethically and environmentally "clean" as soon as possible, however that is
a hard task and presents multiple enginnering challenges.

TODO
?RoHS complicance

# Compliance And Legality

TODO research

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

- [Rpi CM5 datasheet](https://datasheets.raspberrypi.com/cm5/cm5-datasheet.pdf)
- [Rpi CM4 pinout from datasheet](https://datasheets.raspberrypi.com/cm4/cm4-datasheet.pdf#page=18)
- [Rpi CM5 and CM 4 useful interactive pinout](https://atctwo.net/projects/pinout/index.html)
