# KiCad development environment (reproducible/headless)

## Supported, pinned toolchain

This repository pins the KiCad CLI environment to the KiCad 9 container image:

- `kicad/kicad:9.0` pinned by digest  
  `sha256:e638b79b0321f29395a5b783e94bb9f3c73303e8da15da27b8f5cb4b67a37729`

The same versions are used in:

- `.devcontainer/Dockerfile`
- `.github/workflows/kicad-checks.yml` (job container)

## Codespaces startup

1. Open the repository in GitHub Codespaces.
2. Codespaces builds `.devcontainer/Dockerfile`.
3. On container creation, `scripts/verify-environment.sh` runs and prints the pinned `kicad-cli` version.

To manually verify inside Codespaces:

```bash
bash scripts/verify-environment.sh --report-dir artifacts/verify-environment
```

## Headless CLI commands

### Validate environment

```bash
bash scripts/verify-environment.sh --report-dir artifacts/verify-environment
```

### Design checks (PDF export + ERC + DRC)

```bash
bash scripts/check-design.sh --reports-dir artifacts/check-design
```

Behavior:
- Returns `0` on success for a modern `.kicad_pro` project.
- Returns `4` for unsupported legacy `.pro/.sch` projects, with actionable migration/testing logs.
- Returns `6` if `kicad-cli` is missing.

### Fabrication export

```bash
bash scripts/export-fabrication.sh --out-dir artifacts/fabrication
```

For modern projects this exports Gerbers + drill files via `kicad-cli`.

## Legacy 2021 project safety procedure (non-destructive)

The historical 2021 project in this repository is legacy format (`.pro/.sch`).
Do not convert files in-place.

To test migration safely:

```bash
bash scripts/export-fabrication.sh --project ./2021_QYT_Rec_interface.pro --legacy-copy
```

This copies legacy sources into `/tmp/kicad-legacy-*` and prints next steps. Historical repository files remain unchanged.

## CI behavior

Workflow: `.github/workflows/kicad-checks.yml`

CI performs:

1. Run in pinned KiCad 9 container image.
2. Run environment verification.
3. Run a known-good KiCad 9 fixture (`fixtures/kicad9-known-good`) and export fabrication outputs.
4. Run active-design checks when a modern project exists.
5. Run a deliberate invalid legacy-format fixture check (expects nonzero exit).
6. Upload reports/logs as `kicad-check-artifacts`.

If only legacy projects exist, CI records actionable logs and skips headless ERC/DRC without requiring GUI interaction.

## Cloud-agent compatibility note

Copilot/cloud coding agents may not automatically run inside this repository’s Dev Container.
When supported, use the Dev Container to match local/CI KiCad versions. Otherwise, run the scripts directly in the agent environment:

```bash
bash scripts/verify-environment.sh
bash scripts/check-design.sh
```

## Version upgrades

When upgrading KiCad:

1. Update pinned package versions in `.devcontainer/Dockerfile`.
2. Update the same digest in `.github/workflows/kicad-checks.yml`.
3. Re-run `scripts/verify-environment.sh` and `scripts/check-design.sh`.
4. Confirm CI artifact outputs remain usable.

## Known limitations

- Headless verification requires modern `.kicad_pro` projects.
- Legacy `.pro/.sch` projects are intentionally blocked from in-place conversion.
- GUI use is optional; if needed, run KiCad in a desktop-capable environment.
