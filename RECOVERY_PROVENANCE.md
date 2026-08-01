# Recovery provenance

## Source

- Recovery source: `/home/inmoa/recovery_staging/zips/Omnipath.zip`
- Source archive size: `43,598,240` bytes
- SHA-256: `2f76528e2224448afb25ec97b73ada5896ebc17d41edf80e37302a1b93dc5cd4`
- Staged extraction: `/home/inmoa/recovery_staging/extracted/Omnipath/Omnipath`
- Recovery review date: 2026-07-31

The original archive and extraction remain unchanged in recovery storage.

## Repository filtering

The repository excludes bundled Python environments, Node dependencies, bytecode, caches, databases, logs, compressed nested archives, and a filename damaged by encoding artifacts. These are generated or unsafe-to-publish materials, not authoritative source.

One repair was made to `frontend/package.json`: an invalid `http://127.0.0.1:8000` prefix before the JSON object was removed. The original damaged file remains in the staged extraction.

## Relationship to other OmniPath repositories

- `1devteam/omnipath` preserves the earlier `Omnipath_Project` baseline with the terminal UI and frontend.
- This repository preserves a distinct, expanded original-lineage generation.
- `1devteam/omnipath-v2` and the v7.1.5/v7.5.0 candidates belong to the later governed-platform lineage and were intentionally not duplicated here.
- `1devteam/omnipath-governed-runtime` is a separate governed-runtime project.
