#!/usr/bin/bash

qemu-system-riscv64 -machine virt -device VGA -machine dumpdtb=qemu.dtb

dtc -I dtb -O dts qemu.dtb -o virt.dts

rm qemu.dtb
