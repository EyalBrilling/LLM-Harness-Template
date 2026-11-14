# LLM Harness Template

A starting point for new projects worked on by AI agents (and humans) through GitHub.
It contains the working agreement only, no product code:

| File | What it is |
|------|------------|
| [CLAUDE.md](CLAUDE.md) | Entry point for agents: the project summary and the hard rules |
| [work_instructions.md](work_instructions.md) | How work flows: epics, child issues, branches, PRs, labels, approvals, specs |
| [specs/](specs/README.md) | Goals and decisions, with an append-only history. Start new specs from [specs/_template.md](specs/_template.md) |
| [.github/](.github/) | Issue templates (Epic, Child issue; blank issues off) and the PR template |
| [scripts/](scripts/) | `setup-labels` creates the labels from work_instructions.md, section 5 |

## Starting a new project (instructions for agents)

When a human points you at this repo to start a new project:

1. **Create the repo from this template** (ask the human for the name and visibility if not given):
   ```bash
   gh repo create <owner>/<new-name> --private --template EyalBrilling/LLM-Harness-Template --clone
   ```
2. **Create the labels.** GitHub doesn't copy labels from a template:
   ```bash
   scripts/setup-labels.sh <owner>/<new-name>
   ```
   (On Windows PowerShell: `scripts/setup-labels.ps1 -Repo <owner>/<new-name>`.)
3. **Fill in CLAUDE.md.** Replace every `<placeholder>` with the project's name and summary,
   and delete the template comment at the top.
4. **Write the first specs** from what the human has decided so far (e.g. `product/target-users.md`,
   `product/features.md`, `tech/stack.md`), each from `specs/_template.md`, and add them to the
   index in `specs/README.md` and to the list in CLAUDE.md. Decisions made in chat are recorded
   with "chat" as the source.
5. **Replace this README** with one about the new project.
6. Commit this setup as the first commit on `main` (the only direct push to `main`; from then on,
   follow work_instructions.md).
7. **Open the first epic** with the Epic template, and propose its child issues.

## Improving the template

Changes that should apply to all future projects go here, not in a project repo.
Existing projects don't pick them up automatically.
