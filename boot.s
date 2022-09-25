.section .text
.global start

// Checks to see if this is CPU, and if so call the kernel.
start:
    mrs x0, mpidr_el1
    and x0, x0, #3
    cmp x0, #0
    beq kernel_entry

end:
    b end

// Move stack pointer to memory address 80000 and call KMain in the C file.
kernel_entry:
    mov sp, #0x80000
    bl KMain
    b end
