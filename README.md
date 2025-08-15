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

> [!WARNING]
> For imformation about the project please refer to the **[wiki](https://github.com/V3lectronics/SPIRIT/wiki)**, the contents below maybe outdated.
> Soon all information will be moved to the wiki!

# Quick links
1. [Technical Specifications](https://github.com/V3lectronics/SPIRIT/wiki/Overview-technical-specs)
2. [Hardware And Electronics](https://github.com/V3lectronics/SPIRIT/wiki/Hardware-and-electronics)
3. [Software And Operating System](https://github.com/barbarjan/SPIRIT#software-and-operating-system)
4. [DIY Build Guide](https://github.com/barbarjan/SPIRIT#diy-build-guide)
5. [Parts List](https://github.com/barbarjan/SPIRIT#parts-list)
6. [Cost](https://github.com/barbarjan/SPIRIT#cost)
7. [Ethical And Environmental Concerns](https://github.com/barbarjan/SPIRIT#ethical-and-environmental-concerns)
8. [Compliance And Legality](https://github.com/barbarjan/SPIRIT#compliance-and-legality)
9. [Resources](https://github.com/barbarjan/SPIRIT#resources)

# Progress

<img width="1302" height="976" alt="image" src="https://github.com/user-attachments/assets/4e440ce1-6015-4548-abbe-bc6eb94b810b" />

# Early screenshots
<small> (click to expand) </small>

<table>
  <tr>
    <td><img src="branding/motherboardA-15-08-2025.png" alt="motherboard PCB image" width: 100%; height: auto;" /></td>
    <td><img src="branding/motherboardB-15-08-2025.png" alt="motherboard PCB image" width: 100%; height: auto;" /></td>
    <td><img src="branding/motherboardC-15-08-2025.png" alt="motherboard PCB image" width: 100%; height: auto;" /></td>
    <td><img src="branding/Freecad-ss-2025-08-15_09-00.png" alt="motherboard PCB image" width: 100%; height: auto;" /></td>
    <td><img src="branding/PCB-editor-ss-2025-08-15_08-45.png" alt="motherboard PCB image" width: 100%; height: auto;" /></td>
    <td><img src="branding/PCB-editor-ss-2025-08-15_08-57.png" alt="motherboard PCB image" width: 100%; height: auto;" /></td>

  </tr>
</table>

# Software And Operating System

Once the hardware platform is functional it will be time to test various operating
systems as well as explore the possibility of developing one based on Debian.

List of operating systems to test/research:

| Name           | Website |
|----------------|-----------|
| Ubuntu Touch   | https://ubuntu-touch.io/     |
| Lineage        | https://lineageos.org/    |
| Graphene       | https://grapheneos.org/features      |
| Android        | https://www.android.com/      |
| PostmarketOS   | https://postmarketos.org/      |

Additionally, The Yocto Project has been suggested (not an OS) https://www.yoctoproject.org/

# DIY Build Guide

Link to build guide/tutorial: COMING SOON!!!

# Parts List

The list is incomplete and old, it will be updated as soon as we have built the 1st prototype

To get the most up-to-date parts list please look
at the BOM. Certain components such as the camera or the compute module can be swapped for a different
model - the presented setup is just a suggestion.

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

The total assembly cost of the device is unknown

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
- [Rpi CM5 and CM 4 very useful interactive pinout](https://atctwo.net/projects/pinout/index.html)
