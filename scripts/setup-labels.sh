#!/usr/bin/env bash
# Creates (or updates) the labels used by work_instructions.md, section 5.
# GitHub does not copy labels from a template repo, so run this once in every new project.
# Usage: scripts/setup-labels.sh [owner/repo]   (defaults to the current repo)
set -euo pipefail

REPO_ARGS=()
if [ "${1:-}" != "" ]; then REPO_ARGS=(-R "$1"); fi

label() { gh label create "$1" --description "$2" --color "$3" --force "${REPO_ARGS[@]}"; }

label "type:epic"             "A goal with child issues"                     "5319E7"
label "type:feature"          "New functionality"                            "1D76DB"
label "type:bug"              "Something broken"                             "D73A4A"
label "type:chore"            "Maintenance, setup, tooling"                  "BFD4F2"
label "type:docs"             "Documentation"                                "0075CA"
label "type:research"         "Investigation; output is findings, not code"  "C5DEF5"
label "status:needs-criteria" "Acceptance criteria missing or unclear"       "FBCA04"
label "status:ready"          "Has criteria, can be picked up"               "0E8A16"
label "status:in-progress"    "Someone is working on it"                     "1F883D"
label "status:blocked"        "Waiting on something (see comments)"          "B60205"
label "status:in-review"      "PR is open"                                   "6F42C1"
label "needs-human-approval"  "A human must approve and merge this"          "E99695"
label "priority:high"         "High priority"                                "B60205"
label "priority:medium"       "Medium priority"                              "FBCA04"
label "priority:low"          "Low priority"                                 "C2E0C6"
