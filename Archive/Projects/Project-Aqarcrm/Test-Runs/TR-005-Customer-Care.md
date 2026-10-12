---
run_id: TR-004
executor: Fatma
environment: QA
build: v1
status:
  - started
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
        - file.inFolder("Projects/Project-Aqarcrm/Test-Cases/Customer-Care")
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

| Metric  | Count |
| ------- | ----- |
| Passed  |       |
| Failed  |       |
| Blocked |       |

# Notes