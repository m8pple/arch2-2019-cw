ENTRY(entry)
SECTIONS
{
  . = 0x10000000;
  .text : { *(.entry_section) }
  .text : { *(.text) }
  .text : { *(.text.startup) }
  .text : { *(.rodata) }
  .text : { *(.rodata.*) }

  . = 0x20000000;
  .data : { *(.data) }
  .bss : { *(.bss) }
}
