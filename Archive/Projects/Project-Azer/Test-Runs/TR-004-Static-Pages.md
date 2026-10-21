---
run_id: TR-004
executor: ammar
environment:
build:
status:
  - in-progress
start_date: 2026-06-08T09:48:00
end_date:
tags:
  - test-run
---

# Scope
all 

# Executed Cases
```base
views:
  - type: table
    name: Table
    filters:
      or:
        - file.inFolder("Projects/Project-Azer/Test-Cases/Static-Pages/STATIC-About-Us-Page")
        - file.inFolder("Projects/Project-Azer/Test-Cases/Static-Pages/STATIC-Contact-Us-Page")
        - file.inFolder("Projects/Project-Azer/Test-Cases/Static-Pages/STATIC-FAQ-Page")
        - file.inFolder("Projects/Project-Azer/Test-Cases/Static-Pages/STATIC-Global-UI")
        - file.inFolder("Projects/Project-Azer/Test-Cases/Static-Pages/STATIC-Home-Page")
        - file.inFolder("Projects/Project-Azer/Test-Cases/Static-Pages/STATIC-News-Page")
        - file.inFolder("Projects/Project-Azer/Test-Cases/Static-Pages/STATIC-Partnership-Request-Page")
        - file.inFolder("Projects/Project-Azer/Test-Cases/Static-Pages/STATIC-Service-Request-Page")
        - file.inFolder("Projects/Project-Azer/Test-Cases/Static-Pages/STATIC-Services-Page")
    groupBy:
      property: file.folder
      direction: ASC
    order:
      - file.name
      - priority
      - status
      - run_result
    columnSize:
      file.name: 420
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