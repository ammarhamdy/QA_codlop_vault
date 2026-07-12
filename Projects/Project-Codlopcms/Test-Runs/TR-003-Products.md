---
run_id: TR-003-Products
executor: ammar
environment: QA
build: v1
status:
  - in-progress
start_date: 2026-07-07T12:24:00
end_date: 2026-07-12T15:15:00
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
        - file.inFolder("Projects/Project-Codlopcms/Test-Cases/App-Builder/Products/Product-Card-Styles")
        - file.inFolder("Projects/Project-Codlopcms/Test-Cases/App-Builder/Products/Product-Defaults")
        - file.inFolder("Projects/Project-Codlopcms/Test-Cases/App-Builder/Products/Product-Error-Handling")
        - file.inFolder("Projects/Project-Codlopcms/Test-Cases/App-Builder/Products/Product-JSON")
        - file.inFolder("Projects/Project-Codlopcms/Test-Cases/App-Builder/Products/Product-Layouts")
        - file.inFolder("Projects/Project-Codlopcms/Test-Cases/App-Builder/Products/Product-Rendering")
        - file.inFolder("Projects/Project-Codlopcms/Test-Cases/App-Builder/Products/Product-Section-Configuration")
        - file.inFolder("Projects/Project-Codlopcms/Test-Cases/App-Builder/Products/Product-Section-Creation")
        - file.inFolder("Projects/Project-Codlopcms/Test-Cases/App-Builder/Products/Product-Source-Selection")
        - file.inFolder("Projects/Project-Codlopcms/Test-Cases/App-Builder/Products/Product-Validation")
    groupBy:
      property: file.folder
      direction: ASC
    order:
      - title
      - file.name
      - status
      - run_result
    columns:
      - property: tc_id
    columnSize:
      note.title: 513
      file.name: 192
      note.status: 114
      note.run_result: 100

```

# Summary

# Notes