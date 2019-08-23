# USB 3.0 Plugin Module Gearwork

USB 3.0 Plugin Module is an optional accesssory that can be plugged
directly onto the main board of the AXIOM Beta camera thereby adding the
capability to allow live stream of RAW 4K video at 20+ FPS through a USB
3.0 port to the connected PC. This repository ,developed in GSoC 2019,
provides the source code for testing of Bit Error Rate (BER) of the 6
LVDS pairs being used for data traffic.

## Overview

The gearwork's source code is divided into following parts:

  - Transmitter HDLs for Zynq-7000 SoC
  - Receiver HDLs for Lattice MachXO2
  - Software using FTDI D3XX driver

This repository also contains the Transmitter HDLs for Virtex-5 FPGA
(optional).

    .
    ├── D3XX
    │   ├── src         # C++ Source code for receiving USB packets and printing throughput
    |   └── lib         # FTD3XX & STDC++ libraries for installation
    ├── MachXO2
    │   ├── src          # Source code for Lattice MachXO2 FPGA on USB module
    │   ├── proj         # Project folder to be opened with Lattice Diamond 3
    │   └── cfg          # Contains .prj file required by synplinify
    ├── Zynq
    │   └── src          # Source code for Zynq XC7020 FPGA on AXIOM Beta 
    └── Virtex-5         # Initial local testing of USB module was done on Virtex-5 FPGA (optional)
        ├── src          # Source code for Virtex-5 XC5VLX110T FPGA
        └── cfg          # Contains configs for Makefile

Every subdirectory provides a Makefile and is individually compilable.
Makefile in root directory compiles all source code and offers option to
compile individual folder also.

## Usage

#### Dependencies:

Following manufacturer's software tools would be required for building
this project.

  - \[Xilinx Vivado HLx Edition\] \[vivado\]
  - \[Lattice Diamond 3\] \[diamond\]
  - \[Xilinx ISE Design Suite 14.7\] \[ise\] (only for Virtex-5)

> Makefiles are configured for default installation directories of above
> software tools. Make sure the environment variables in .bashrc are
> properly set up (Refer to respective software installation guides).
> Also the version of Lattice Diamond installed needs to be mentioned in
> Makefile.

Additionally, a proprietary usb driver FTDI D3XX would be required to
interface with the FTDI FT601Q chip. These driver libraries have been
pushed in this repository itself.

`$ cd D3XX/lib $ sudo rm /usr/lib/libftd3xx.so $ sudo cp libftd3xx.so
/usr/lib/ $ sudo cp libftd3xx.so.0.5.21 /usr/lib/ $ sudo
cp 51-ftd3xx.rules /etc/udev/rules.d/ $ sudo udevadm control
--reload-rules`

Alternatively you can run the streamer application without installing
library: `$ sudo LD_LIBRARY_PATH=lib build/ber_test`

#### Compilation:

You need to run make command in the root folder of this project to
generate programming files ( \*.bit) for Lattice MachXO2 and Zynq XC7020
and the compiled C++ executable.

`$ make` To display usage and available target options, use `$ make
help`

###### Bugfix
`mkdir ./build/ && cp ./cfg/machxo2.prj ./build/ synpwrap -prj
"./build/machxo2.prj" Copyright (C) 1992-2017 Lattice Semiconductor
Corporation. All rights reserved. Lattice Diamond Version 3.10.0.111.2
INFO - Synplify synthesis engine is launched.
/usr/local/diamond/3.10_x64/synpbase/bin/synplify_pro: 137: [:
unexpected operator
/usr/local/diamond/3.10_x64/synpbase/bin/synplify_pro: 151: [: !=:
argument expected
/usr/local/diamond/3.10_x64/synpbase/bin/synplify_pro: 320:
/usr/local/diamond/3.10_x64/synpbase/bin/config/execute: Syntax error:
"(" unexpected (expecting ";;") Child process exit with 2. Synthesis
exit by 2. Makefile:13: recipe for target 'build/machxo2.edi' failed
make: *** [build/machxo2.edi] Error 2` This happen due to `!#/bin/sh` at
the starting of scripts in Lattice Diamond 3, it makes Ubuntu's dash run
a bash script. To fix the issue run the following command: \`\`\` $ cd
/usr/local/diamond/3.10\_x64/synpbase/bin && for file in grep -lRsI
"/bin/sh" \*; do sudo sed -i -e 's/\#\!\\/bin\\/sh/\#\!\\/bin\\/bash/g'
$file; done

\`\`\`

#### Hardware Testing Instructions:

Once the project is built, you will find the programming files
`zynq.bit` and `machxo2.bit` with the executable software `ber_test` in
`build/` directory.

You need to upload the bit files on respective FPGAs while taking care
that MachXO2 gets programmed successfully within 10 seconds after Zynq
is programmed (Link training feedback from MachXO2 back to Zynq is left
to be done. At the momoent, Zynq sends link training pattern for 10
seconds after it gets programmed and in this interval MachXO2 needs to
be in word alignment phase.)

If the USB plugin module is programmed successfully, you should be able
to see following output on `lsusb`. \`\`\` $ lsusb

Bus \_\_\_ Device \_\_*: ID 0403:601f Future Technology Devices
International, Ltd `To run the BER tests and print the throughput,
run`ber*test`in`build/\`\`\`:

\`\`\` $ build/ber\_test

Driver version:0.5.21 Library version:1.0.21 Total 1 device(s) 1CH IN
FT245 @ 100MHz Bit Error Rate and Throughput Testing\! Updates in nearly
every 20 seconds. Bit Error Rate: 0 (00000000/9FFFFFFFF) | Throughput:
2.956 Gbps  
\`\`\` The BER tested on AXIOM Beta tends to be lesser than
10<sup>-12</sup>.

## Contributors

  - **Apurva Nandan**

*Mentored by:* **Herbert Poetzl**