---
run_id: TR-
executor: ammar
environment: Prod
build: v1
status:
  - started
  - in-progress
  - completed
start_date: 2026-08-30T14:59:00
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
        - file.inFolder("Projects/Project-Azhala/Test-Cases/API/Auth/Complete-Registration")
        - file.inFolder("Projects/Project-Azhala/Test-Cases/API/Auth/Logout")
        - file.inFolder("Projects/Project-Azhala/Test-Cases/API/Auth/Verify-OTP")
        - file.inFolder("Projects/Project-Azhala/Test-Cases/API/Auth/Send-OTP")
        - file.inFolder("Projects/Project-Azhala/Test-Cases/API/Bank-Accounts")
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
      note.title: 389
      file.name: 433
      note.status: 128
      note.run_result: 100

```


# Summary

```dataviewjs
// Use paths relative to your Obsidian Vault root (NO absolute Linux paths like /home/am/...)
const folderPaths = [
  "Projects/Project-Azhala/Test-Cases/API/Auth/Complete-Registration",
  "Projects/Project-Azhala/Test-Cases/API/Auth/Logout",
  "Projects/Project-Azhala/Test-Cases/API/Auth/Verify-OTP",
  "Projects/Project-Azhala/Test-Cases/API/Auth/Send-OTP",
  "Projects/Project-Azhala/Test-Cases/API/Bank-Accounts"
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
*Last Updated: 2026-08-30 14:59*