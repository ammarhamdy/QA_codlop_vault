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
```dataviewjs
// Use paths relative to your Obsidian Vault root (NO absolute Linux paths like /home/am/...)
const folderPaths = [
  "Projects/Project-Codlopcms/Test-Cases/App-Builder/Products/Product-Card-Styles",
  "Projects/Project-Codlopcms/Test-Cases/App-Builder/Products/Product-Defaults",
  "Projects/Project-Codlopcms/Test-Cases/App-Builder/Products/Product-Error-Handling",
  "Projects/Project-Codlopcms/Test-Cases/App-Builder/Products/Product-JSON",
  "Projects/Project-Codlopcms/Test-Cases/App-Builder/Products/Product-Layouts",
  "Projects/Project-Codlopcms/Test-Cases/App-Builder/Products/Product-Rendering",
  "Projects/Project-Codlopcms/Test-Cases/App-Builder/Products/Product-Section-Configuration",
  "Projects/Project-Codlopcms/Test-Cases/App-Builder/Products/Product-Section-Creation",
  "Projects/Project-Codlopcms/Test-Cases/App-Builder/Products/Product-Source-Selection",
  "Projects/Project-Codlopcms/Test-Cases/App-Builder/Products/Product-Validation"
];

// 1. Fetch all notes in the specified folders
const testCases = folderPaths
  .flatMap(folderPath => dv.pages(`"${folderPath}"`).values)
  .filter(p => {
    if (!p) return false;
    const hasTcId = Boolean(p.tc_id);
    
    // Check tags safely regardless of array or string representation
    const rawTags = Array.isArray(p.tags) ? p.tags : (p.tags ? [p.tags] : []);
    const hasTag = rawTags.some(t => String(t).replace("#", "").toLowerCase() === "test-case");
    
    return hasTcId || hasTag;
  });

// 2. Count based on run_result
const passed = testCases.filter(p => {
  const res = String(p.run_result || "").toLowerCase();
  return res === "pass" || res === "passed";
}).length;

const failed = testCases.filter(p => {
  const res = String(p.run_result || "").toLowerCase();
  return res === "fail" || res === "failed";
}).length;

const total = testCases.length;
const remaining = total - (passed + failed);
const passRate = total > 0 ? Math.round((passed / total) * 100) : 0;

// 3. Render the summary
dv.paragraph(`
- ✔ **Passed:** ${passed}
- × **Failed:** ${failed}
- ⏲ **Untested / Pending:** ${remaining}
- 🗠 **Total Cases:** ${total} (${passRate}% Pass Rate)
`);
```

# Notes