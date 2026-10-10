# AGENTS.md

## Repository purpose

This repository contains a KiCad-based hardware design and breakout/interface research project. The design work is intentionally conservative: keep changes reviewable, reproducible, and safe for fabrication and legacy compatibility.

## Role of the repo-specific agent

The repository's specialist hardware agent is `@Kimmy`, defined in `.github/agents/kimmy.md`.

Kimmy is responsible for:

- using the pinned KiCad 9 headless environment;
- validating the toolchain and reports before making design changes;
- checking ERC/DRC and fabrication outputs with the provided scripts; and
- handling legacy `.pro/.sch` sources without modifying the historical repository files in place.

## Required workflow

Before finalizing the design or export work, use the repo's scripted checks:

```bash
bash scripts/verify-environment.sh --report-dir artifacts/verify-environment
bash scripts/check-design.sh --reports-dir artifacts/check-design
bash scripts/export-fabrication.sh --out-dir artifacts/fabrication
```

## Legacy project safety

Do not edit the historical 2021 project source files in place.

If a legacy export or migration test is needed, use:

```bash
bash scripts/export-fabrication.sh --project ./2021_QYT_Rec_interface.pro --legacy-copy
```

This copies the legacy project into `/tmp` and preserves the repository's original files.

## General engineering expectations

- Prefer minimal, targeted changes over broad refactors.
- Treat ERC/DRC findings as defects until reviewed and justified.
- Keep fabrication outputs and logs available for review.
- Favor reproducible, scripted checks over ad hoc GUI interactions.
- Do not copy or preserve stale assumptions when current design validation proves them wrong.
