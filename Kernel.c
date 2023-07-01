typedef unsigned char UInt8;

UInt8* Serial = (UInt8*)0x10000000;
UInt8* Pci    = (UInt8*)0x30000000;

void K_SysWrite(UInt8* addr, UInt8 byte)
{
    *addr = byte;
    return;
}

void K_Print(char* str)
{
    while (*str != '\0')
    {
        K_SysWrite(Serial, *str);
        str++;
    }
    return;
}

void K_DisplayInit()
{
    /* ??? */
}

void K_Main()
{
    K_Print("Hello RiscV\n");
    K_DisplayInit();
    return;
}
