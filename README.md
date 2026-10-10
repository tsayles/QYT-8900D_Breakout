# QYT-8900D AOC Interface Research Platform

## Overview

This project has evolved from a simple microphone interface breakout into a more ambitious radio signal research platform. The current goal is to build a man-in-the-middle device using the N6AD AOC circuit concept as a foundation for reverse engineering the microphone interface and exploring radio control behavior.

The design is intended to sit in-line between a handheld microphone and the radio, or between an external audio source and the microphone input, allowing observation, capture, and controlled manipulation of microphone audio and associated control lines.

## New project goals

1. Leverage the N6AD AOC circuitry as a reference architecture for audio and control interface monitoring.
2. Build a man-in-the-middle adapter to observe and capture microphone audio without permanently altering the radio or microphone.
3. Reverse engineer the QYT microphone interface behavior and signal conventions.
4. Identify and document the audio path, PTT handling, and microphone ground/line control relationships.
5. Explore the feasibility of implementing basic CAT control or remote radio control functions through the same interface concepts.
6. Use the project as a practical platform for learning serial/control signaling, mic ICD analysis, and radio hardware experimentation.

## Why this direction

The original breakout board idea was useful for simple recording and interface convenience. The current direction shifts toward deeper radio analysis and experimentation:

- microphone ICD reverse engineering
- signal tracing across the hand mic and radio side
- controlled insertion of test equipment or analysis hardware
- investigation of AOC-style control ideas for practical ham radio experimentation

This makes the board more than just a passive adapter: it becomes a research and test fixture for disciplined signal analysis.

## Intended functionality

The revised design should support the following concepts:

- Passive or buffered insertion between the microphone and the radio
- Access to microphone audio, PTT, ground, and auxiliary lines
- Recording or monitoring of audio on the mic path
- Ability to inject test audio or simulate microphone behavior
- Optional control line observation and experimentation
- A platform for testing CAT-like control ideas in a controlled environment

## Relationship to the original board

The original QYT-8900D breakout board was a straightforward pass-through interface with RJ-45 and phone-jack access for recording and testing. That original concept remains historically relevant, but the current direction reuses the same general spirit of interface access while adding a much more analytical and experimental purpose.

The older design remains as a reference for the board's original telemetry and breakout organization, while the new work focuses on:

- signal-level investigation
- interface documentation
- non-destructive testing on live radio hardware
- process-oriented reverse engineering

## Research and experimentation focus

This project is intended to serve as a practical platform for:

- tracing microphone signal paths
- measuring audio voltage levels and biasing
- observing switch and control line behavior
- testing AOC-derived circuit ideas in real hardware
- studying basic CAT control interfaces for a transceiver

## Safety and scope

This project is experimental and intended for low-voltage signal-level work only. It is not designed for direct high-power or hazardous RF modifications. The board is best used as a measurement and analysis tool for lab or bench work.

## Notes

This README reflects the current project direction and supersedes the earlier, simpler breakout-board description. The original revision-based historical documentation remains available in the dated archive files for reference.
