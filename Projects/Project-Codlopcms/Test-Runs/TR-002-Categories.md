---
run_id: TR-001-Categories
executor: ammar
environment: QA
build: v1
status:
  - started
  - in-progress
  - completed
start_date: 2026-07-07T12:24:00
end_date:
tags:
  - test-run
---

# Scope
Banners on home screen.

# Executed Cases
```base
views:
  - type: table
    name: Table
    filters:
      or:
        - file.inFolder("Projects/Project-Codlopcms/Test-Cases/App-Builder/Categories")
    groupBy:
      property: file.folder
      direction: ASC
    order:
      - tc_id
      - file.name
      - priority
      - status
      - run_result
    columns:
      - property: tc_id
    columnSize:
      note.tc_id: 100
      file.name: 353
      note.priority: 120
      note.status: 114
      note.run_result: 100

```

# Summary

# Notes