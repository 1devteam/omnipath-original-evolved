# Recovery assessment

## Verdict

This build is worth preserving because it contains substantial original-lineage work absent from the earlier baseline: the expanded fork fleet, Trace Nine components, doctrine/reflex/memory processing, mission templates, service definitions, CI configuration, and a broader test corpus. It is not ready for production use.

## Confirmed strengths

- The recovered Python source is syntactically valid.
- The architecture expresses a recognizable spine: signals enter mission and command surfaces, fork components execute work, Trace Nine records activity, and guardian/commander/archivist roles evaluate and retain state.
- The repository includes both browser and terminal-facing experiments.
- Tests document intended behavior even where implementation generations no longer agree.

## Confirmed flaws

1. **Conflicting generations coexist.** Core classes appear at the root, under `backend/core`, and under `backend/forks`, with incompatible constructors and method contracts.
2. **The API is incomplete.** `backend/app.py` wires only the status router. Command and mission routers are defined separately, and several tests import nonexistent `app` objects from router modules.
3. **Tests and implementation disagree.** Tests expect status responses and methods that current classes do not provide. Collection/runtime validation therefore fails.
4. **Runtime paths are not portable.** Several agents write to a hard-coded `~/Omnipath` tree rather than an injected or configured data directory.
5. **State writes are unsafe under concurrency.** JSON files are read, modified, and rewritten without locking, atomic replacement, size limits, or schema validation.
6. **Execution boundaries are under-specified.** Mission paths and commands reach execution components without a complete authorization model, workspace boundary, or durable audit contract.
7. **Broad exception handling hides faults.** Some agents use bare `except` blocks and silently replace corrupted state.
8. **Dependency metadata is incomplete.** There is no authoritative Python package manifest for the mixed FastAPI/Flask implementation.
9. **Deployment scripts are historical.** Shell and service files assume paths and host behavior that have not been validated and may mutate a machine.
10. **Frontend integrity was damaged.** The recovered `frontend/package.json` contained a stray URL before its JSON document. The recovery copy repairs that single corruption, but application behavior still requires validation.

## Future work

1. Define one authoritative spine contract for mission input, fork lifecycle, state, Trace Nine events, and errors.
2. Select one canonical implementation for each core concept; move alternatives into a clearly labeled historical directory before deleting anything.
3. Package the backend with pinned dependencies and a single application factory.
4. Replace hard-coded paths with validated configuration and an explicit data directory.
5. Implement atomic, locked state persistence with schemas, bounded inputs, and recovery behavior.
6. Reconcile tests with the chosen contracts, then add security and concurrency tests.
7. Connect the frontend only after the API contract is stable; add an end-to-end smoke test.
8. Replace historical deployment scripts with reviewed, idempotent, reversible operations.

## Validation record

- ZIP structural test: passed before extraction.
- Python syntax compilation: passed for recovered project source after excluding environments and caches.
- Existing pytest suite: failed before meaningful execution because the recovered environment/test layout is inconsistent; this is a project defect, not reported as a pass.
- Frontend manifest parse: failed in the archive and was repaired in this repository copy.
- Secret-pattern scan: no project credential was detected; matches under bundled third-party packages were excluded from the repository.
