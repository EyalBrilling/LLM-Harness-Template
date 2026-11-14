# CLAUDE.md

Guidance for Claude (and any AI agent) working in this repository.

<!--
TEMPLATE: when starting a new project from this template, follow "Starting a new project" in
README.md, then replace every <placeholder> in this file and delete this comment.
-->

## Project: <Project name>

<One short paragraph: what the product is, who it's for, and the problem it solves.>

The goals and decisions behind the project live in [specs/](specs/README.md):
<!-- List the main specs here as they are created, e.g.:
- [Target users](specs/product/target-users.md)
- [Core features](specs/product/features.md)
- [Tech stack](specs/tech/stack.md)
-->

## Before you do anything

1. Read [work_instructions.md](work_instructions.md). It defines how work flows through GitHub:
   epics, child issues, branches, PRs, labels, approvals and specs. Following it is mandatory.
2. Find the GitHub issue you are working on. **No issue, no work.** If there is none, stop and
   propose one (see "Creating issues" in work_instructions.md).
3. Read the issue's parent epic so you understand the bigger goal.
4. Read the specs related to the issue (start from the [specs index](specs/README.md)).

## Specs

- Specs in `specs/` are the source of truth for goals and decisions. Act on their
  "Current decisions" section. If code or an issue disagrees with a spec, raise it in the issue.
- If your change affects a decision, update the spec **in the same PR**.
- "Decision history" is append-only: add a dated entry at the top, never edit or delete old ones.
- Changing a decision in a spec with status `agreed` needs human approval.

## Hard rules

- Never push directly to `main`. Changes reach `main` only through an epic PR.
- Merge an epic PR into `main` only after a human approves it.
- Merge anything labeled `needs-human-approval` only after a human approves it.
- Work only inside the scope of your issue. If you find other work, open a new issue for it
  instead of doing it.
- Every change must trace back to an acceptance criterion on an issue.
- Don't commit secrets, API keys, or personal data about real users.
- When unsure, ask in the issue (comment) rather than guessing.

## Repository layout and commands

See [specs/tech/stack.md](specs/tech/stack.md) <!-- create it with the first tech decision -->.
Commands (install, run, test, lint) are added there with the first code.
