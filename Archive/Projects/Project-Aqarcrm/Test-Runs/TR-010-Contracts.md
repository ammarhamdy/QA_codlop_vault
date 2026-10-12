---
run_id: TR-010
executor: Fatma
environment: QA
build: v1
status:
  - in-progress
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
        - file.inFolder("Projects/Project-Aqarcrm/Test-Cases/Contracts")
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

```dataviewjs
const folderPaths = [""];

// 1. Fetch all test case notes in that folder
const testCases = folderPaths
  .flatMap(folderPath => dv.pages(`"${folderPath}"`))
  .filter(p => p.tc_id || (p.tags && p.tags.includes("test-case")));

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