# tools
Toolchain / OpenOCD / Miscellaneous scripts

## Raspberry PI pico
Tools needed which are not in here..
* Windows: Visual Studio Build Tools -> Developer Powershell (NMake)
* Linux: Ninja (optional) - Otherwise make 
* CMake

Tools which are in here:
* Special OpenOCD branch for RP2040
    * Features CMSIS DAP for RP2040
    * Features Picoprobe
* Arm-none-eabi toolchain -> Nothing special, just here for completeness

_Add following environment variable: PICO_TOOLS_PATH - Set it to the root directory of this repository_

### Interesting Links
* [CMSIS DAP two core](https://github.com/majbthrd/pico-debug)
* [Open OCD releases](https://github.com/earlephilhower/pico-quick-toolchain/releases/)