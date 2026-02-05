## Om detta repository

Detta repository innehåller VHDL-projekt (VHSIC Hardware Description Language) som demonstrerar design och implementering av digitala kretsar. Projekten omfattar olika digitala komponenter och logiska kretsar för FPGA/ASIC-implementering.

## Projektstruktur

Repositoryt innehåller följande VHDL-designfiler:

### Del1.vhd
Den första delen av ett större projekt som innehåller:
- Digital logikdesign
- Komponentarkitektur
- Entity och Architecture-deklarationer
- Port mappning och signalhantering
- ~1.3 KB VHDL-kod

### Gray.vhd
En Gray-kod-konverterare som implementerar:
- **Gray Code Converter** - konvertering mellan binär och Gray-kod
- Sekvensiell eller kombinatorisk logik
- State machine implementation
- Kodningslogik för felminimering
- ~1.9 KB VHDL-kod

**Om Gray-kod:**
Gray-kod är en binär sekvens där efterföljande värden endast skiljer sig åt med en bit, vilket minimerar fel vid digitala övergångar.

### del2.vhd
Den andra delen av projektet som innehåller:
- Kompletterande logikkretsar
- Testbänkar eller hjälpkomponenter
- Ytterligare funktionalitet
- ~718 bytes VHDL-kod

## Teknologi & Verktyg

- **Språk:** VHDL (3,860 bytes total kod)
- **Tillämpningsområden:** 
  - FPGA-design
  - ASIC-utveckling
  - Digital logiksyntes
  - Hårdvarubeskrivning

### Rekommenderade verktyg:

- **Simulering:**
  - ModelSim
  - GHDL (open-source)
  - Vivado Simulator
  - Quartus Prime

- **Syntes:**
  - Xilinx Vivado
  - Intel Quartus
  - Lattice Diamond

- **Textredigerare:**
  - VS Code med VHDL-extension
  - Emacs med VHDL-mode
  - Sublime Text

VHDL används för:
- **FPGA-programmering** - konfigurerbara kretsar
- **ASIC-design** - applikationsspecifika kretsar
- **Kommunikationssystem** - digital signalbehandling
- **Prototyputveckling** - hårdvaruvalidering
- **Utbildning** - lära sig digital design
