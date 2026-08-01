# OmniPath Original — Evolved Recovery

This repository preserves a recovered, later generation of the original OmniPath system created by Obvex Blackvault in 2025. It is an architectural recovery artifact: more developed than the earliest `Omnipath_Project` baseline, but not a production-ready release.

OmniPath was conceived as a local computational spine rather than a SaaS product, worker agent, or governed runtime. This generation combines a Trace Nine event trail, fork/fleet execution experiments, doctrine and reflex evaluation, memory weighting, mission validation, a FastAPI surface, a React interface, and terminal-oriented launch tooling.

## What is present

- Alpha, Beta, and Gamma fork implementations and fleet launch experiments
- Trace Nine logging and replay components
- doctrine, reflex, breath, memory-weight, and mission-validation cores
- commander, guardian, and archivist roles
- FastAPI status, command, and mission route prototypes
- React frontend and a second `tier1ui` interface
- example mission templates, service-unit files, recovery scripts, and tests
- early ML-pipeline and task-manager modules

## Verified state

The recovered Python files compile successfully after excluding bundled environments and generated caches. The frontend manifest was recovered with one stray URL prefix; that corruption is corrected in this preservation copy so package tooling can read it.

The complete historical test suite does **not** currently pass. Several tests reference APIs or import layouts from different development iterations. The API is only partially wired, multiple implementations of the same concepts coexist, and some runtime paths are hard-coded to `~/Omnipath`. Treat this repository as recovered research software, not as an operational or secure automation platform.

See [docs/RECOVERY_ASSESSMENT.md](docs/RECOVERY_ASSESSMENT.md) for the evidence-backed assessment, known flaws, and future-work sequence. See [RECOVERY_PROVENANCE.md](RECOVERY_PROVENANCE.md) for archive identity and preservation decisions.

## Safe inspection

```bash
python3 -m compileall -q \
  -x '(^|/)(venv|\.venv|node_modules|__pycache__)(/|$)' .
```

Do not run the deployment or resurrection shell scripts on a host you care about until they have been reviewed and converted to explicit, reversible operations.

## Intellectual property

OmniPath and its surrounding architecture are original intellectual property developed by Obvex Blackvault in 2025. No license is granted by publication or repository access. Contact the owner for permission to copy, redistribute, or use the work commercially.
