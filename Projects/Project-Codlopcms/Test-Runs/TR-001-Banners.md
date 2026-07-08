---
run_id: TR-001-Banners
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
        - file.inFolder("Projects/Project-Codlopcms/Test-Cases/App-Builder/Banners")
    groupBy:
      property: file.folder
      direction: ASC
    order:
      - test_case_id
      - file.name
      - priority
      - status
      - run_result
    columns:
      - property: test_case_id
    columnSize:
      note.test_case_id: 100
      file.name: 500
      note.priority: 120
      note.run_result: 100

```

# Summary

# Notes