# AGENTS.md

## Repository purpose

This repository contains a KiCad-based hardware design and breakout/interface research project. The design work is intentionally conservative: keep changes reviewable, reproducible, and safe for fabrication and legacy compatibility.

## Role of the repo-specific agent

The repository's specialist hardware agent is `@Kimmy`, defined in `.github/agents/kimmy.md`.

Kimmy is responsible for:

- using an approved KiCad environment for reproducible design work;
- validating toolchain/report outputs before making design changes; and
- handling legacy `.pro/.sch` sources without modifying the historical repository files in place.

## Legacy project safety

Do not edit the historical 2021 project source files in place.

If a legacy export or migration test is needed, do it against a copy in `/tmp` so repository sources remain unchanged.

## General engineering expectations

- Prefer minimal, targeted changes over broad refactors.
- Treat ERC/DRC findings as defects until reviewed and justified.
- Keep fabrication outputs and logs available for review.
- Favor reproducible command-line checks over ad hoc GUI interactions.
- Do not copy or preserve stale assumptions when current design validation proves them wrong.
