---
run_id: TR-001
executor: Fatma
environment: QA
build:
status:
  - in-progress
start_date:
end_date:
tags:
  - test-run
---

# Scope
[Which feature / sprint / release this run covers.]

# Executed Cases
# Scope
[Which feature / sprint / release this run covers.]

# Executed Cases

```base
views:
  - type: table
    name: Table
    filters:
      and:
        - file.inFolder("Projects/Project-bharqan/Test-Cases/Authentication")
    groupBy:
      property: file.folder
      direction: ASC
    order:
      - file.name
      - priority
      - status
      - run_result

```

# Summary

| Metric | Count |
|--------|-------|
| Passed |       |
| Failed |       |
| Blocked|       |

# Notes
