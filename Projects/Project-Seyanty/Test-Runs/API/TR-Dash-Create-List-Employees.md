---
run_id: TR-Dash-Employees
executor: ammar
environment: Prod
build: v1
status:
  - in-progress
start_date: 2026-08-23T12:21:00
end_date:
tags:
  - test-run
---

# Scope
Cover all test-cases related to Employees  

# Executed Cases

```base
views:
  - type: table
    name: Table
    filters:
      or:
        - file.inFolder("Projects/Project-Seyanty/Test-Cases/API/Dashboard/Employees/GET-Get-Employees")
        - file.inFolder("Projects/Project-Seyanty/Test-Cases/API/Dashboard/Employees/POST-Create-Employee")
    groupBy:
      property: file.folder
      direction: ASC
    order:
      - title
      - file.name
      - status
      - run_result
    sort: []
    columns:
      - property: tc_id
    columnSize:
      note.title: 346
      file.name: 524
      note.status: 114
      note.run_result: 100

```


# Summary

```dataviewjs
// Use paths relative to your Obsidian Vault root (NO absolute Linux paths like /home/am/...)
const folderPaths = [
    "Projects/Project-Seyanty/Test-Cases/API/Dashboard/Employees/GET-Get-Employees",
    "Projects/Project-Seyanty/Test-Cases/API/Dashboard/Employees/POST-Create-Employee",
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

---
*Last Updated: 2026-08-23 12:21*