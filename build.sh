gcc -c boot.s -o boot.o
gcc -std=c99 -ffreestanding -mgeneral-regs-only -c main.c -o main.o
ld -nostdlib -T link.lds -o kernel boot.o main.o
objcopy -O binary kernel kernel8.img