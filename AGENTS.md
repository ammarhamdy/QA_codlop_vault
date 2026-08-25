# AGENTS.md

Obsidian QA vault (markdown + Dataview/Bases) — not a code project. No `package.json`, build, or test runner.

## Structure

- `Projects/<Project-Name>/` — 11 projects; each owns `Meta/`, `Requirements/`, `Test-Cases/`, `Test-Runs/`, `Bugs/` (subfolders vary; `Project-Seyanty` and `Project-Codlopcms` are most complete examples).
- `Templates/` — source of truth for frontmatter schemas (7 templates).
- `Scripts/Bash/` — `endpoint-healthy-scan.sh`, `siteinspector.sh`, `website-audit.sh`.
- `Shared/` — `Naming-Conventions.md`, `QA-Standards/`, `Checklists-&-Guides/`.
- `Dashboards/` — Dataview dashboards (currently minimal).
- `Archive/` — retired projects.
- Vault root is `QA_codlop_vault`; all links/paths are vault-relative (e.g. `Projects/Project-Seyanty/...`), never absolute `/home/...`.

## Naming (enforced) — see `Shared/Naming-Conventions.md:23`

- Folders/files: `Kebab-Case`, no spaces or `@#$%`. Check `git status` — broken links across OSes if violated.
- Prefixes: `REQ-` requirement, `US-` user story (`US-[PROJECT]-[ID]-[ShortName].md`), `TC-` test case, `BUG-` bug, `TS-` suite, `TR-`/`RUN-` test run. IDs must match `Templates/*.md` patterns.
- Tags lowercase only: `test-case`, `test-suite`, `bug`, `requirement`, `test-run`, `regression`/`smoke`/`sanity`.
- Status enums: TC `Draft|Ready|Deprecated`, Bug `Open|In-Progress|Retest|Closed`, Run `Not Started|In Progress|Completed` (variants in templates like `started`/`in-progress`/`completed` — match the template used).

## Frontmatter — copy from `Templates/`

Each template defines required keys; don't invent fields:

- `Requirement-Template.md:2` — `requirement_id: REQ-`, `tags: [requirement]`
- `User-Story-Template.md:2` — `us_id: US-`, `tags: [requirement]`
- `Test-Case-Template.md:2` — `tc_id: TC-`, `priority`, `status`, `type`, `linked_requirement`, `tags: [test-case]`, plus `run_result: pass|fail` set during runs
- `Bug-Template.md:2` — `bug_id: BUG-`, `severity`, `priority`, `status`, `environment`, `linked_tc`
- `Suite-Template.md:2` — `suite_id: TS-`, `tags: [test-suite]`
- `Test-Run-Template.md:2` — `run_id: TR-`, `executor`, `environment`, `status`, `tags: [test-run]`
- `Project-Info-Template.md:2` — `type: project-meta`, `project: "<slug>"` in `Projects/<Project>/Meta/Project-Info.md`

## Dataview / Bases Queries

- Queries in `Test-Runs/` and `Test-Cases/` use `dv.pages()` / `file.inFolder()` with vault-relative paths. Comment in `Templates/Test-Run-Template.md:47` explicitly warns: no absolute Linux paths.
- `Bases` views filter on `file.inFolder(".")` scoped to the run file's folder; `DataviewJS` summary blocks aggregate `run_result` (`pass`/`fail`) — keep `run_result` lowercase for counting (`Test-Run-Template.md:65`).

## Scripts — `Scripts/Bash/`

```bash
./Scripts/Bash/endpoint-healthy-scan.sh [--csv|--json] [--cookies <val|@file>] [--delay <sec>] <endpoints-file>
./Scripts/Bash/siteinspector.sh https://example.com   # outputs report.json + urls.txt (needs katana, httpx, jq, curl, openssl, dig)
./Scripts/Bash/website-audit.sh <domain>              # full recon: subfinder→httpx→katana→nuclei (needs subfinder, httpx, katana, nuclei, jq)
```

No npm/pip steps; run directly with bash.

## Obsidian / Git Gotchas

- `.obsidian/` is gitignored (`# TOTAL OBSIDIAN CONFIGURATION ISOLATION` in `.gitignore:20`) — never commit, edit, or rely on it for logic. Plugin config (Dataview, Templater, Tasks, Bases) lives there locally only.
- Templater: `Templates/` folder configured in `.obsidian/plugins/templater-obsidian/data.json:3`; `{{date}} {{time}}` placeholders are Templater syntax.
- Before pushing, `git status` to avoid staging local clutter (per `Shared/Checklists-&-Guides/git-cheat-sheet.md`). Don't force-push on conflicts — see `Git-Conflict-Resolution-Guide.md`.
- Project creation via `Projects/Project-Tasks/recon/create.project.script` hits `tasks.codlop.sa` — contains hardcoded tokens/cookies; don't execute blindly.
