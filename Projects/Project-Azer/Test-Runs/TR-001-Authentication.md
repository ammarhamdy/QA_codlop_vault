---
run_id: TR-001
executor: ammar
environment: QA
build: v1
status:
  - in-progress
start_date: 2026-06-04T09:55:00
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
        - file.inFolder("Projects/Project-Azer/Test-Cases/Authentication")
    order:
      - file.name
      - priority
      - status
      - run_result
    columnSize:
      note.priority: 118
      note.run_result: 160

```


# Summary

| Metric  | Count |
| ------- | ----- |
| Passed  |       |
| Failed  |       |
| Blocked |       |

# Notes