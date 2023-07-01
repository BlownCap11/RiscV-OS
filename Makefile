All: Boot Kernel Link Clean

Boot: Boot.s
	riscv64-unknown-elf-as Boot.s -o Boot.o

Kernel: Kernel.c
	riscv64-unknown-elf-gcc -c -ffreestanding -nostdlib -nostdinc -Wall -Wextra -mcmodel=medany Kernel.c

Link:
	riscv64-unknown-elf-ld -T Linker.ld -nostdlib Boot.o Kernel.o -o Kernel

Clean:
	rm Boot.o Kernel.o

Run:
	qemu-system-riscv64 -machine virt -device VGA -bios none -kernel Kernel -serial mon:stdio
