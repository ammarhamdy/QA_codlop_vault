---
run_id: TR-013
executor: Fatma
environment: QA
build: v1
status:
  - started
  - in-progress
  - completed
start_date:
end_date:
tags:
  - test-run
---

# Scope
[Which feature / sprint / release this run covers.]

# Executed Cases
```base
views:
  - type: table
    name: Table
    filters:
      and:
        - file.inFolder("Projects/Project-bharqan/Test-Cases/Dashboard")
    groupBy:
      property: file.folder
      direction: ASC
    order:
      - file.name
      - priority
      - status
      - run_result
    columnSize:
      file.name: 500

```
# Summary

| Metric  | Count |
| ------- | ----- |
| Passed  |       |
| Failed  |       |
| Blocked |       |

# Notes