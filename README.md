# BerryStore Public - BlackBerry 10 Revival Project

> *Dedicated to the developers who created something extraordinary and the community keeping it alive*

## 🎯 Mission

This project aims at **restoring functionality and maximizing the device life** of BlackBerry 10 devices. It documents my journey of progress as I work on a line of devices and software that should have never been shut down.

BlackBerry 10 represented the pinnacle of mobile productivity and security. These devices were true pocket computers - fully functional, secure, and elegantly designed. While the corporate world moved on, the technology and potential remain as relevant as ever.

## 🌟 Philosophy

I believe **good software can exist without strings attached**. Just as Nintendo showed us that great experiences don't require compromising user privacy or freedom, BlackBerry demonstrated that powerful mobile computing could be both secure and user-centric.

This work is a tribute to those original BlackBerry developers who brought us something truly special - a mobile platform that respected users while delivering unparalleled functionality.

## 📚 What's Inside

### 📖 [`docs/`](./docs/)
Comprehensive documentation covering the restoration journey:
- **Build & Compile Notes** - Technical guides for porting software to QNX
- **Toolchain Documentation** - Cross-compilation setup and usage
- **Project Summaries** - Detailed analysis of custom applications and solutions
- **SSL/Security Upgrades** - Modern security implementations for legacy systems

### 🛠️ [`applications/`](./applications/)
Ready-to-use software for BlackBerry 10 devices:
- **`term49-apps/`** - Custom native QNX applications (C/Python)
- **`sw7ft-recovered-bars/`** - Recovered BlackBerry BAR files and applications
  - Productivity apps, media tools, system utilities
  - Over 40 recovered applications from the sw7ft collection

### 🔧 [`languages/`](./languages/)
Development environments and language support:
- **Python Distributions** - Python 3.11 & 3.12 compiled for QNX
- **Setup Scripts** - Environment configuration for cross-platform development

### 📦 [`ports/`](./ports/)
Source code and binaries of major software ported to BlackBerry 10:
- **OpenSSH** - Secure shell implementation
- **MySQL 5.6.49** - Database server
- **PHP 7.4.33** - Web scripting language
- **Nano, Links** - Text editor and web browser
- **SDL2, ncurses** - Development libraries
- **Custom Build Tools** - CMake, development utilities

### 🎮 [`playbook/`](./playbook/)
Development tools and utilities:
- **BerrymuchV3** - QNX native development kit setup
- **Build Utilities** - Cross-compilation tools and scripts
- **Legacy Support** - PlayBook compatibility layers

### 🐧 [`bb10-linux-project/`](./bb10-linux-project/)
Linux integration and dual-boot solutions for BlackBerry hardware.

## 🚀 Getting Started

### 🍇 Prerequisites - BerrymuchOS
**Before diving in, you'll need the foundation that makes it all possible:**

**[BerryFarm BerrymuchOS](https://github.com/BerryFarm/berrymuch)** - The essential Unix distribution for BlackBerry 10 that provides the command-line environment and toolchain needed to run most of the software in this repository.

**Required Setup:**
1. **Install BerrymuchOS** from [BerryFarm/berrymuch](https://github.com/BerryFarm/berrymuch)
2. **Install Term49** terminal application 
3. **Configure the development environment** following BerrymuchOS installation guide

*Without BerrymuchOS and Term49, you won't be able to enjoy much of the software and tools provided here!*

### For Developers
1. **Set up BerrymuchOS and Term49** as your foundation
2. **Configure development environment** using scripts in `languages/`
3. **Review documentation** in `docs/` for porting guidelines
4. **Explore existing ports** in `ports/` for reference implementations

### For Users
1. **Install BerrymuchOS and Term49** (essential first step)
2. **Browse applications** in `applications/sw7ft-recovered-bars/`
3. **Install development tools** from `ports/`
4. **Follow build guides** in `docs/bb10-build-compile-notes/`

## 🎓 Educational Purpose

This project serves as an educational resource documenting:
- **Cross-platform software porting** techniques
- **QNX/BlackBerry 10 development** methodologies
- **Legacy system modernization** approaches
- **Mobile security implementation** best practices

The goal is to preserve knowledge and inspire future developers to think differently about mobile computing - prioritizing user agency, security, and functionality over data collection and vendor lock-in.

## 🔮 Vision

As we move forward, I hope this work demonstrates that **pocket computers that are fully usable are possible**. Perhaps a company will understand that there's still value in:
- User-owned devices
- Privacy-respecting software
- Powerful mobile productivity tools
- Technology that serves users, not advertising networks

## 🤝 Support This Mission

If you believe in keeping great technology alive and want to support these restoration efforts, please consider supporting the project:

**[Support on Patreon](https://www.patreon.com/c/Sw7ft)** 🍓

Your support helps fund:
- Hardware acquisition for testing
- Development time for porting efforts
- Documentation and tutorial creation
- Community resource hosting

## 🛡️ Technical Notes

- **Target Platform**: BlackBerry 10 (QNX-based)
- **Primary Languages**: C, C++, Python, Shell scripting
- **Development Environment**: QNX Software Development Platform
- **Cross-compilation**: ARM BlackBerry QNX 8 EABI toolchain

## 📜 License & Attribution

This project contains various software components with different licenses. Please refer to individual directories for specific licensing information.

**Special thanks to:**
- **[BerryFarm BerrymuchOS](https://github.com/BerryFarm/berrymuch)** - The foundational Unix distribution that makes this entire project possible 🍇
- **[karawitan](https://github.com/BerryFarm/berrymuch/commits?author=karawitan)** - For tireless maintenance and continuous improvements to BerrymuchOS, including updates to bash, zsh, nano, dropbear, and countless other essential packages
- **[vaskas](https://github.com/vaskas)** (Vasily Mikhaylichenko) - Key BerryFarm organization member and contributor
- **[extrowerk](https://github.com/extrowerk)** - Important contributor to the BerrymuchOS ecosystem
- The original BlackBerry development teams
- The QNX community  
- Open source contributors who made porting possible
- The sw7ft community for application preservation
- The entire BerrymuchOS development community for creating the essential toolchain and environment

---

*"The best way to predict the future is to create it."* - Let's keep great technology alive.

## 🔗 Quick Links

- **[🍇 BerryFarm BerrymuchOS](https://github.com/BerryFarm/berrymuch)** - Essential foundation
- [📖 Documentation](./docs/)
- [🛠️ Applications](./applications/)
- [📦 Development Tools](./ports/)
- [🤝 Support Project](https://www.patreon.com/c/Sw7ft)

---

*Last updated: January 2025* 