# Specs

Specs record the **goals and decisions** of the project: who it's for, what it does, how it's
built, and why. They are written for future agents and humans who weren't part of the
conversation where something was decided.

Specs say *what* and *why*. Issues say *what to do next*. Code is *how*.

## Rules

1. **Specs are the source of truth for decisions.** If code, an issue or a conversation
   disagrees with a spec, raise it in the issue. Don't silently follow one or the other.
2. **Keep specs current.** When a change affects a decision, update the spec in the **same PR**.
   Never "update the docs later".
3. **History is append-only.** Every spec has a "Decision history" section. When a decision
   changes, add a new dated entry at the top of the history and update "Current decisions".
   Never edit or delete old history entries.
4. **`agreed` specs need human approval to change.** A PR that changes a "Current decisions"
   entry in a spec with status `agreed` gets the `needs-human-approval` label.
5. **New specs start from [_template.md](_template.md)** and get added to the index below.
6. **One topic per spec.** If a spec grows to cover several topics, split it and note the split
   in both specs' history.

## Folders

- `product/`: who it's for and what it does
- `tech/`: how it's built
- `reviews/`: outside reviews of the idea and the responses to them. Reviews don't decide
  anything; the decisions they lead to go into the specs above.

Add a new folder when a new area comes up (e.g. `legal/`, `marketing/`) and list it here.

## Index

| Spec | Status | What it covers |
|------|--------|----------------|
<!-- Add one row per spec, e.g.:
| [product/target-users.md](product/target-users.md) | draft | Who the product is for and what problem it solves for them |
-->
