# SPIRIT Smartphone

<p align="center">
    <img src="https://github.com/user-attachments/assets/60e87523-02cf-482b-8433-5f611e48ca2d" width="40%">
    <br>
    <img src="https://github.com/user-attachments/assets/99de57de-c5d9-4f54-9140-fb388b046b55" width="15%">
</p>

<p align="center">
  <img src="https://img.shields.io/github/v/release/V3lectronics/SPIRIT" alt="Latest Release">
  <img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg" alt="PRs Welcome">
  <img src="https://img.shields.io/badge/License-Open%20Source-blue.svg" alt="Open Source">
  <img src="https://img.shields.io/badge/Status-Development-orange.svg" alt="In Development">
</p>

---

## About The Project

**SPIRIT** is an open-source smartphone built from readily available components, designed with a clear mission: to prioritize user experience, performance, control, repairability, innovation, and privacy above all else.

This project represents a fundamental shift from traditional smartphone manufacturing, putting power back into the hands of users through complete hardware and software transparency. Every component, schematic, and line of code is open for inspection, modification, and improvement.

**Current Status:** Development phase - progress documented in this repository and on the [V Electronics YouTube channel](https://www.youtube.com/@V_Electronics).

### Why SPIRIT Matters

Traditional smartphones have become black boxes that users cannot truly own or control. SPIRIT changes this by offering:

- **Complete transparency** in both hardware and software
- **User-controlled privacy** through physical hardware switches
- **Repairability by design** with modular components and open documentation
- **Community-driven development** welcoming contributions from everyone
- **Ethical sourcing** avoiding conflict minerals and unfair labor practices

---

## Quick Navigation

| Section | Description |
|---------|-------------|
| [Technical Specifications](#technical-specifications) | Hardware specs and capabilities |
| [Hardware Deep Dive](#hardware-and-electronics) | Detailed component analysis |
| [Software Platform](#software-and-operating-system) | OS options and development plans |
| [Build Your Own](#diy-build-guide) | Complete assembly guide |
| [Component List](#parts-list) | Detailed parts breakdown |
| [Project Cost](#cost-analysis) | Budget breakdown |
| [Ethics & Environment](#ethical-and-environmental-concerns) | Responsible sourcing information |
| [Legal Compliance](#compliance-and-legality) | Regulatory considerations |

---

## Early Development Preview

<div align="center">
  <img src="https://github.com/user-attachments/assets/ca233c1b-0558-49ef-b1b1-04d52258cc64" alt="SPIRIT Hardware Overview">
</div>

### Development Screenshots

<table>
  <tr>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/4dba7969-60c1-43f5-814a-f7a4f81a73d9" height="300">
      <br><em>System Interface</em>
    </td>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/1b5c8317-5b61-42c4-aa28-2d652b7e3833" height="300">
      <br><em>Application Menu</em>
    </td>
  </tr>
  <tr>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/4742305e-44ab-4d84-8185-f4b7e9df42e7" height="300">
      <br><em>Settings Panel</em>
    </td>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/5c63f34d-d58c-4832-a58b-be8a34cb7fd5" height="300">
      <br><em>Communication Hub</em>
    </td>
  </tr>
</table>

---

## Technical Specifications

### Core Performance

| Component | Specification | Notes |
|-----------|---------------|-------|
| **Processor** | Broadcom BCM2712 | 64-bit, 2.4 GHz quad-core with 4 threads |
| **Memory** | 2GB / 4GB / 8GB / 16GB | LPDDR4 configuration options |
| **Storage** | 16GB / 32GB / 64GB | eMMC with expansion possibilities |

### Display & Interface

| Component | Specification | Notes |
|-----------|---------------|-------|
| **Screen** | 5.5" Capacitive Touch TFT | 720×1280 resolution |
| **Biometrics** | Rear fingerprint scanner | 8×8mm sensing area, 50 template storage |
| **Audio** | Dual speakers + 3.5mm jack | Symmetrical upward-facing design |

### Connectivity Suite

| Feature | Specification | Notes |
|---------|---------------|-------|
| **Data Port** | USB-C 3.2 | Significantly faster than iPhone 16's USB 2.0 |
| **Wireless** | Wi-Fi 2.4/5.0 GHz, Bluetooth 5 | Standard modern connectivity |
| **Cellular** | GSM with GPS/GNSS | BeiDou, Galileo, GLONASS support |

### Power & Privacy

| Component | Details | User Control |
|-----------|---------|--------------|
| **Battery** | 2.05Ah Lithium Polymer (3.7V) | Completely removable and swappable |
| **Privacy Switches** | 4 hardware cut-off switches | Microphone, GPS/GSM, Camera, Battery |
| **Camera Control** | Physical power-off switch | 100% hardware-level privacy |

### Form Factor

**Overall Dimensions:** Thickness approximately 12.3mm (excluding camera lens protrusion)

| Component | Contribution to Thickness |
|-----------|-------------------------|
| Chassis | 1.0mm |
| Main PCB | 1.4mm |
| Battery Pack | 6.0mm |
| Display Assembly | 3.9mm |

**PCB Dimensions:** 80mm × 150mm custom carrier board design

---

## Hardware and Electronics

### Foundation: Raspberry Pi Compute Module 5

The heart of SPIRIT is the **Raspberry Pi Compute Module 5**, described by the Raspberry Pi Foundation as "the power of Raspberry Pi 5 in a compact form factor for deeply embedded applications." This choice provides several key advantages:

**Why CM5 Works for SPIRIT:**
- Proven, stable platform with excellent community support
- Open-source friendly with comprehensive documentation
- Multiple configuration options for different user needs
- Strong performance-per-watt ratio for mobile applications

The default configuration uses the 4GB RAM, 64GB eMMC variant, though users can upgrade to 8GB RAM or different storage configurations based on their specific needs.

### Custom Carrier Board Design

The carrier board serves as the central nervous system, connecting the Compute Module to all other components. This is the only custom electronic component in the entire project, designed using the latest major release of KiCad for maximum compatibility and accessibility.

**Key Design Principles:**
- Modular architecture allowing component upgrades
- Robust power management and distribution
- Comprehensive I/O breakout for all CM5 capabilities
- Optimized layout for minimal electromagnetic interference

All electronic design files are available in the 'EDA-kicad' folder of this repository. To examine the full schematics and PCB layout, clone the repository and open 'cm5-carrier.kicad_pro' in KiCad.

### Privacy-First Hardware Switches

One of SPIRIT's most distinctive features is its comprehensive privacy control system. Four physical switches provide complete power disconnection to critical components:

| Switch | Component | Privacy Benefit |
|--------|-----------|-----------------|
| **Switch 1** | Microphone (SPH0645LM4H-B) | Prevents all audio recording |
| **Switch 2** | GPS/GSM Module (EC25VFA-512-STD) | Blocks location tracking and cellular communication |
| **Switch 3** | Camera System | Eliminates video/photo capture capability |
| **Switch 4** | Battery Connection | Complete system power control |

These are not software toggles that can be overridden – they are physical interruptions of the power supply, ensuring 100% certainty that disabled components are truly inactive.

### Advanced Camera System

SPIRIT supports high-quality [Arducam](https://www.arducam.com/) camera modules, with the flagship option being the **64MP Hawkeye** camera:

**Hawkeye Camera Specifications:**
- **Resolution:** 9152 × 6944 pixels for stills
- **Video:** 1080p at 30fps
- **Sensor:** 1/1.7" stacked CMOS with 0.8μm pixel size
- **Lens:** f/1.8 aperture with motorized focusing (8cm to infinity)
- **Field of View:** 84 degrees
- **Zoom:** 10x digital zoom capability

For budget-conscious builders, the **16MP Autofocus** variant provides excellent image quality at a more accessible price point.

### Audio Architecture

SPIRIT's audio system prioritizes both quality and user choice:

**Speaker Configuration:** Two **CMR-15062S-67** speakers mounted symmetrically and facing upward for optimal sound dispersion.

**Microphone System:** The **SPH0645LM4H-B** digital microphone offers:
- Omnidirectional pickup pattern for clear voice capture
- Frequency response: 20Hz to 10kHz
- Sensitivity: -26dB ±3dB at 94dB SPL
- Digital I2S output for minimal noise interference

**Headphone Support:** Standard TRRS 3.5mm jack allows users to choose between wired and wireless audio solutions.

### User-Controlled Components

**Programmable Button:** A customizable tactile switch with 30,000-cycle life expectancy. Users can configure this for:
- Emergency contact dialing
- Quick app launching
- Camera activation
- Silent/vibrate/sound mode cycling
- Custom automation triggers

**Flashlight:** High-efficiency **LXML-PWC1-0100** LED providing 1W of cool white illumination at 3V.

**Biometric Security:** The **100018754** fingerprint module offers enterprise-grade security with a false acceptance rate of 1 in 500,000 per finger and can store up to 50 templates.

---

## Software and Operating System

The software platform represents the other half of SPIRIT's open-source philosophy. Once hardware functionality is established, comprehensive testing of various operating systems will determine the optimal user experience.

### Operating System Evaluation

| Operating System | Focus Area | Website |
|------------------|------------|---------|
| **Ubuntu Touch** | Linux-native mobile experience | [ubuntu-touch.io](https://ubuntu-touch.io/) |
| **LineageOS** | Privacy-focused Android fork | [lineageos.org](https://lineageos.org/) |
| **GrapheneOS** | Security-hardened Android | [grapheneos.org](https://grapheneos.org/features) |
| **Standard Android** | Broad app compatibility | [android.com](https://www.android.com/) |

### Custom Development Path

Beyond testing existing solutions, SPIRIT may develop a custom Debian-based mobile operating system optimized for the specific hardware configuration and privacy-focused user base.

**Development Tools Under Consideration:**
- **The Yocto Project** for custom Linux distribution creation
- **Buildroot** for minimal system construction  
- **Custom Android ROM** based on Android Open Source Project

The final software solution will prioritize user control, privacy protection, and seamless integration with SPIRIT's hardware privacy switches.

---

## DIY Build Guide

**Status:** Comprehensive build guide and tutorial coming soon after first prototype completion.

The DIY guide will include:
- Step-by-step assembly instructions with photographs
- Detailed soldering guides for custom components
- Software installation and configuration procedures
- Troubleshooting common assembly issues
- Quality testing and validation procedures

---

## Parts List

> **Note:** This parts list reflects early development and will be updated as prototype testing progresses. Component availability and specifications may change based on testing results and community feedback.

For the most current component information, refer to the Bill of Materials (BOM) in the repository. Certain components like cameras and compute modules can be substituted based on user preferences and budget considerations.

<details>
<summary><strong>Detailed Component Breakdown</strong></summary>

### Core Components

| Quantity | Component | Unit Price (USD) | Supplier Link |
|----------|-----------|------------------|---------------|
| 1 | Raspberry Pi CM5 (4GB/64GB) | $65 | [Digikey](https://www.digikey.pl/en/products/detail/raspberry-pi/SC0686/13530938) |
| 1 | Custom Carrier PCB | TBD | Manufacturing required |
| 1 | 5.5" Capacitive Touchscreen | $97 | [Digikey](https://www.digikey.pl/en/products/detail/nxp-usa-inc/RK055HDMIPI4MA0/16274141) |

### Camera & Imaging

| Quantity | Component | Unit Price (USD) | Supplier Link |
|----------|-----------|------------------|---------------|
| 1 | Arducam 64MP Hawkeye Camera | $66 | [Digikey](https://www.digikey.com/en/products/detail/sparkfun-electronics/SEN-21276/21443092) |

### Power System

| Quantity | Component | Unit Price (USD) | Supplier Link |
|----------|-----------|------------------|---------------|
| 1 | 2.05Ah LiPo Battery | $10 | [Digikey](https://www.digikey.pl/en/products/detail/jauch-quartz/LP504783JU-PCM-2-WIRES-70MM/13540155) |
| 1 | Battery Management System | TBD | Selection in progress |

### Connectivity & I/O

| Quantity | Component | Unit Price (USD) | Supplier Link |
|----------|-----------|------------------|---------------|
| 1 | USB-C 3.2 Connector | $1 | [Digikey](https://www.digikey.com/en/products/detail/gct/USB4105-GF-A/11198441) |
| 1 | 3.5mm TRRS Audio Jack | $1 | [Digikey](https://www.digikey.com/en/products/detail/same-sky-formerly-cui-devices/SJ2-3574A-SMT-TR/6619530) |
| 2 | CMR-15062S-67 Speakers | $3 each | [Digikey](https://www.digikey.pl/en/products/detail/cui-devices/CMR-15062S-67/9561156) |
| 1 | SPH0645LM4H-B Microphone | $2 | [Digikey](https://www.digikey.pl/en/products/detail/knowles/SPH0645LM4H-B/5332440) |

### Security & Sensors

| Quantity | Component | Unit Price (USD) | Supplier Link |
|----------|-----------|------------------|---------------|
| 1 | Fingerprint Scanner Module | $29 | [Digikey](https://www.digikey.pl/en/products/detail/fingerprint-cards-ab/100018754/11480144) |
| 1 | GPS/GSM Module EC25VFA | $7 | [Digikey](https://www.digikey.pl/en/products/detail/yic/YIC31009EBGG/16499057) |

### Additional Components

| Quantity | Component | Unit Price (USD) | Notes |
|----------|-----------|------------------|-------|
| 1 | 1W White LED (Flashlight) | $3 | [Digikey](https://www.digikey.pl/en/products/detail/lumileds/LXML-PWC1-0100/3961144) |
| 1 | Vibration Motor | $2 | [Digikey](https://www.digikey.pl/en/products/detail/pui-audio-inc/HD-EMB1205-3-SC-R/16522073) |
| 1 | Temperature Sensor | $0.10 | [Digikey](https://www.digikey.pl/en/products/detail/panasonic-electronic-components/ERT-JZEG103FA/9646736) |
| Various | Connectors, resistors, capacitors | Variable | Standard electronic components |
| Various | M1.6 Stainless Steel Screws | Variable | Assembly hardware |

</details>

---

## Cost Analysis

**Current Status:** Total assembly cost determination in progress pending prototype completion.

**Cost Philosophy:** SPIRIT aims to provide exceptional value by eliminating manufacturer profit margins, planned obsolescence, and proprietary component markups that characterize traditional smartphone pricing.

**Estimated Cost Factors:**
- Component costs based on single-unit purchases (bulk pricing will reduce costs significantly)
- Custom PCB manufacturing costs depend on order quantity
- Assembly complexity affects labor requirements for DIY builders
- Optional components allow users to balance features against budget

---

## Ethical and Environmental Concerns

SPIRIT represents a commitment to responsible technology development through ethical sourcing, environmental consciousness, and sustainable design practices.

### Ethical Sourcing Initiative

**Core Principle:** SPIRIT actively avoids components produced through unfair labor practices or containing conflict minerals.

**Component Evaluation Status:**
- **Chassis Materials:** Research ongoing for ethically-sourced metals and recycled materials
- **Compute Module 5:** Raspberry Pi Foundation's ethical practices under review
- **Battery Technology:** Investigation of fair-trade lithium sources and recycling programs
- **Display Technology:** Screen manufacturer labor practices evaluation in progress
- **Audio Components:** Speaker and microphone supply chain analysis underway

### Environmental Responsibility

**Design for Longevity:** Unlike traditional smartphones designed for 2-3 year lifecycles, SPIRIT prioritizes:
- **Repairability:** Modular design allows component-level repairs rather than device replacement
- **Upgradability:** Key components can be upgraded individually as technology advances  
- **Documentation:** Complete repair guides prevent devices from becoming e-waste due to lack of information

**Regulatory Compliance:**
- **RoHS Compliance:** Restriction of Hazardous Substances directive adherence
- **REACH Regulation:** Chemical safety requirements for European markets
- **WEEE Directive:** Waste Electrical and Electronic Equipment recycling considerations

### Sustainable Development Goals

SPIRIT development aligns with multiple UN Sustainable Development Goals:
- **Goal 12:** Responsible Consumption and Production through repairable design
- **Goal 8:** Decent Work and Economic Growth through ethical sourcing
- **Goal 9:** Industry, Innovation and Infrastructure through open-source development

---

## Compliance and Legality

**Status:** Regulatory research and compliance planning in progress.

### European Union Requirements

**Ecodesign Regulation 2023/1670:** New EU requirements for smartphone repairability, battery replaceability, and software support duration. SPIRIT's design philosophy naturally aligns with these requirements.

**Additional EU Compliance Areas:**
- **EMI Standards:** Electromagnetic interference testing and certification
- **RoHS Directive:** Hazardous substance restrictions
- **REACH Regulation:** Chemical registration and safety requirements  
- **WEEE Directive:** Electronic waste management and recycling

### Regional Compliance Planning

**North America:** FCC certification requirements for wireless devices, along with Canadian ISED approval for radio equipment.

**Asia-Pacific:** Individual country certifications for major markets including Japan (MIC), Australia (ACMA), and South Korea (KCC).

**Other Regions:** Compliance frameworks for South America, Africa, and additional international markets under investigation.

### Open Source Legal Framework

**License Structure:** All hardware designs, software code, and documentation released under appropriate open-source licenses to ensure community access while protecting contributors.

**Patent Considerations:** Comprehensive patent landscape analysis to ensure design freedom and avoid infringement issues.

---

## Contributing to SPIRIT

SPIRIT thrives on community collaboration and welcomes contributions from developers, designers, engineers, and users worldwide.

### How to Contribute

**Code Contributions:** Submit pull requests for software improvements, bug fixes, or new features.

**Hardware Design:** Propose improvements to PCB design, component selection, or mechanical engineering.

**Documentation:** Help improve guides, tutorials, and technical documentation.

**Testing:** Participate in prototype testing and provide feedback on functionality and user experience.

**Community Support:** Help other users in discussions, troubleshooting, and project planning.

Please review our [Contribution Guide](CONTRIBUTING.md) for detailed information on the development process, coding standards, and community guidelines.

---

## Technical Resources

### Official Documentation

- [Raspberry Pi CM5 Datasheet](https://datasheets.raspberrypi.com/cm5/cm5-datasheet.pdf) - Complete technical specifications
- [CM4 Datasheet Pinout Reference](https://datasheets.raspberrypi.com/cm4/cm4-datasheet.pdf#page=18) - Pin compatibility information

### Interactive Tools

- [CM5 and CM4 Interactive Pinout](https://atctwo.net/projects/pinout/index.html) - Visual pin mapping and function reference

### Development Resources

- **KiCad EDA Files:** Complete schematic and PCB layout files in repository
- **Component Datasheets:** Individual component specifications and integration guides
- **Software Development:** Operating system porting guides and custom ROM development resources

---

## Community and Support

### Stay Connected

- **GitHub Repository:** [V3lectronics/SPIRIT](https://github.com/V3lectronics/SPIRIT) - Main development hub
- **YouTube Channel:** [V Electronics](https://www.youtube.com/@V_Electronics) - Development progress and tutorials
- **Discussion Forum:** GitHub Discussions for community interaction and support

### Project Status Updates

Follow development progress through regular updates on the GitHub repository and YouTube channel. Major milestones, prototype testing results, and community contributions are documented as they occur.

### Getting Help

- **Technical Issues:** Open GitHub issues for bugs, feature requests, or technical questions
- **General Discussion:** Use GitHub Discussions for broader topics and community interaction
- **Build Support:** Community-driven assistance for DIY builders and troubleshooting

---

## License and Legal Information

This project is released under open-source licenses to ensure community access and collaborative development. Specific license terms for hardware designs, software components, and documentation are detailed in the repository's license files.

By contributing to SPIRIT, you agree to make your contributions available under the same open-source terms, ensuring the project remains freely accessible to the global community.

---

<p align="center">
  <strong>Built with passion by the community, for the community</strong>
  <br>
  <em>SPIRIT: Taking back control of our digital lives</em>
</p>
