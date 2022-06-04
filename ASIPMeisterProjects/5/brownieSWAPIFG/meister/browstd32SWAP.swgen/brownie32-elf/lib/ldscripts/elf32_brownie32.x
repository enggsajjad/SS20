/* Default linker script, for normal executables */
OUTPUT_FORMAT("elf32-brownie32", "",
	      "")
OUTPUT_ARCH(brownie32)
SEARCH_DIR("/home/sajjad/SS20/ASIPMeisterProjects/5/brownieSWAPIFG/meister/browstd32SWAP.swgen/brownie32-elf/lib");
SECTIONS
{
  . = 0x10000000;
  .text :
  {
    CREATE_OBJECT_SYMBOLS
    *(.text)
    etext = ALIGN(1);
  }
  . = ALIGN(1);
  .data :
  {
    *(.data)
    CONSTRUCTORS
    edata  =  .;
  }
  .bss :
  {
   *(.bss)
   *(COMMON)
   end = . ;
  }
}
