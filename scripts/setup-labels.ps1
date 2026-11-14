# Creates (or updates) the labels used by work_instructions.md, section 5.
# GitHub does not copy labels from a template repo, so run this once in every new project.
# Usage: scripts/setup-labels.ps1 [-Repo owner/repo]   (defaults to the current repo)
param([string]$Repo = "")

$labels = @(
    @("type:epic",             "A goal with child issues",                    "5319E7"),
    @("type:feature",          "New functionality",                           "1D76DB"),
    @("type:bug",              "Something broken",                            "D73A4A"),
    @("type:chore",            "Maintenance, setup, tooling",                 "BFD4F2"),
    @("type:docs",             "Documentation",                               "0075CA"),
    @("type:research",         "Investigation; output is findings, not code", "C5DEF5"),
    @("status:needs-criteria", "Acceptance criteria missing or unclear",      "FBCA04"),
    @("status:ready",          "Has criteria, can be picked up",              "0E8A16"),
    @("status:in-progress",    "Someone is working on it",                    "1F883D"),
    @("status:blocked",        "Waiting on something (see comments)",         "B60205"),
    @("status:in-review",      "PR is open",                                  "6F42C1"),
    @("needs-human-approval",  "A human must approve and merge this",         "E99695"),
    @("priority:high",         "High priority",                               "B60205"),
    @("priority:medium",       "Medium priority",                             "FBCA04"),
    @("priority:low",          "Low priority",                                "C2E0C6")
)

foreach ($l in $labels) {
    $ghArgs = @("label", "create", $l[0], "--description", $l[1], "--color", $l[2], "--force")
    if ($Repo) { $ghArgs += @("-R", $Repo) }
    & gh @ghArgs
}
