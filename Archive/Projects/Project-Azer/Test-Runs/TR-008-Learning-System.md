---
run_id: TR-008
executor: ammar
environment: QA
build: v1
status:
  - in-progress
start_date: 2026-06-24T10:28:00
end_date:
tags:
  - test-run
---

# Scope
Student learning live cycle.

# Executed Cases
```base
views:
  - type: table
    name: Table
    filters:
      or:
        - file.inFolder("Projects/Project-Azer/Test-Cases/Products/Learning-Management-System/Curriculum-Management")
        - file.inFolder("Projects/Project-Azer/Test-Cases/Products/Learning-Management-System/Lesson-Management")
    groupBy:
      property: file.folder
      direction: ASC
    order:
      - file.name
      - priority
      - status
      - run_result
    columnSize:
      file.name: 800
      note.priority: 120
      note.run_result: 100

```


# Summary

| Metric  | Count |
| ------- | ----- |
| Passed  |       |
| Failed  |       |
| Blocked |       |

# Notes