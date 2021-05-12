# Kirby's Dream Land 2

This is a disassembly of Kirby's Dream Land 2 (Game Boy).

It builds the following rom:

* Kirby's Dream Land 2 (UE) [!].gb  `md5: ddb5bfae32b0ca39cf8ab6c46880126c`

To set up the repository, see [**INSTALL.md**](INSTALL.md).

# Installation

The assembler used is [**rgbds**](https://rgbds.gbdev.io/). Please follow the installation instructions at https://rgbds.gbdev.io/

Additionally, this project requires GNU make to assemble and link the ROM.

To set up the repository:
```
	git clone https://github.com/huderlem/kirbydreamland2
	cd kirbydreamland2
```

This project is incomplete and requires the user to provide an original Kirby's Dream Land 2 ROM.  Name this file `baserom.gb` and place it in the `src/` directory.

To build `kirbydreamland2.gb`:
```
	make
```

To remove all generated files by the build process:
```
	make clean
```

To rebuild the binary from scratch:
```
    make rebuild
```

To compare the built `kirbydreamland2.gb` to the original ROM:
```
	make compare
```