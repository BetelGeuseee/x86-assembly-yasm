# x86-assembly-yasm
x86 assembly basics using yasm assembler and gold linker


# Toolchain needed to run these files
 1) Yasm assembler (complete rewrite of NASM assembler) optional - Nasm
 2) GNU Gold Linker
 3) Data Display Debugger (to check the status/state of registers or memory)
 4) Loader (part of operating system)

# How to install on Linux (debian based distros)
  1) sudo apt-get update -y
  2) sudo apt-get install -y yasm
  3) sudo apt-get install binutils-gold
  4) sudo apt install ddd
  
# How to run it?
```
  1) yasm -g dwarf2 -f elf64 <example>.asm -l <example>.lst  ----> [assemble the example.asm file using yasm assembler and include list file]
  2) ld -g -o <example> <example>.o  ---->  linking/combining the assembly source file into one single object file
  3) ./<example>  ----->    loading the executable file into memory 
  4) ddd <example> ----->   start ddd debugger 
  
  ```
  
# Manual for DDD Debugger - https://www.gnu.org/software/ddd/manual/
