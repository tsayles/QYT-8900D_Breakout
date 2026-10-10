# QYT-8900D_Breakout

## Original Project Goals (Historical Context)

Before the project direction changed, this repository was intended to document and produce a simple breakout board that:

- Inserts between the microphone and radio connection
- Uses RJ-45 jacks for inline microphone/radio pass-through
- Provides phone jack connections for attaching a recording device

This README update preserves the original design intent so it remains part of the project history as later revisions introduce new goals.

Historical build notes from the original effort:

- The board was fabricated and assembled.
- The phone-jack cutouts had to be expanded to accommodate plug housings.
- Functional testing was started but not completed.

## Current Repository State (KiCad Files)

The checked-in hardware design files currently reflect a KiCad project named `2021_QYT_Rec_interface`:

- Schematic title: `QYT KT8900D Interface Board` (dated `2021-02-21`)
- 54 schematic components total, including:
  - 2x TE `2041411-1` connectors (RJ-45 style interface connectors)
  - 3x CUI `SJ2-35825D-SMT-TR` phone jack connectors
  - 14x `Jumper_NC_Small` solder jumpers
  - 26x test points
  - 4x resistors
- A routed PCB layout (`2021_QYT_Rec_interface.kicad_pcb`) matching this interface-board design
- Silkscreen and metadata details visible in the KiCad files:
  - Schematic revision field is blank (`Rev ""`) in `2021_QYT_Rec_interface.sch`
  - Schematic date is `2021-02-21`
  - Back silkscreen includes board-identification text, author attribution, repo URL, and a Creative Commons BY-SA notice

This section captures what is currently represented in-repo so historical intent and present design artifacts remain aligned.
