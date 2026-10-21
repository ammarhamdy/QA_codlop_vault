---
run_id: TR-002
executor: fatma
environment:
build: v1
status:
  - started
  - in-progress
  - completed
start_date: 2026-06-04T11:03:00
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
      or:
        - file.inFolder("Projects/Project-Azer/Test-Cases/Contact-Us")
        - file.inFolder("Projects/Project-Azer/Test-Cases/Partnership-Request")
        - file.inFolder("Projects/Project-Azer/Test-Cases/Register Your Interest")
        - file.inFolder("Projects/Project-Azer/Test-Cases/Request-Service")
    groupBy:
      property: file.folder
      direction: ASC
    order:
      - file.name
      - priority
      - status
      - run_result
    sort:
      - property: run_result
        direction: ASC
    columnSize:
      file.name: 318
      note.priority: 147
      note.run_result: 160

```


# Summary

| Metric  | Count |
| ------- | ----- |
| Passed  |       |
| Failed  |       |
| Blocked |       |

# Notes