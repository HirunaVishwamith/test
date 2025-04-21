#include "prog.h"
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xil_io.h"

extern const unsigned char program[];  // Reference to program array

int main()
{
    init_platform();

    // Print first few bytes to verify
    // xil_printf("Third byte of program[]: 0x%02X\n", program[2]);
    // xil_printf("First byte at 0x80000000: 0x%02X\n", *((volatile unsigned char *)0x80000000));

    Xil_Out32(0x60000000, 1);       /// PSClint base address

    cleanup_platform();
    return 0;
}
