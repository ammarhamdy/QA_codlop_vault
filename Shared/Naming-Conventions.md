---
type: standard
status: Ready
category: QA Governance
---

# QA Vault Naming Conventions

This document establishes the strict naming standards for all files, folders, and identifiers within our shared Test Development Life Cycle Management System. Following these rules ensures clean navigation, eliminates broken paths, and allows **Dataview dashboards** to aggregate testing metrics accurately.

---

## 1. Folder & File Case Conventions

* **Folder Names:** Use `Kebab-Case` (capitalized words separated by hyphens).
  * *Example:* `04-Test-Cases/`, `User-Stories/`, `Common-Test-Data/`
* **File Names:** Use `Kebab-Case` or `Pascal-Case` matching their structural category prefix. Always avoid using spaces or special characters (`@`, `#`, `$`, `%`) in file names to prevent link corruption across operating systems.

---

## 2. Prefix & ID Conventions

To make assets instantly recognizable via fuzzy search (`Ctrl/Cmd + O`), use the following hardcoded prefixes for all primary entities:

| Asset Type | ID Prefix | Format Pattern | Real Example |
| :--- | :--- | :--- | :--- |
| **Requirement / BRD** | `REQ-` | `REQ-[Project]-[ID]` | `REQ-ALPHA-001` |
| **User Story** | `US-` | `US-[Project]-[ID]-[ShortName]` | `US-ALPHA-102-Login-API.md` |
| **Test Suite** | `TS-` | `TS-[Module]-[ShortName]` | `TS-AUTH-Forgot-Password.md` |
| **Test Case** | `TC-` | `TC-[Module]-[ID]-[Scenario]` | `TC-PAY-045-Invalid-CVV.md` |
| **Defect / Bug** | `BUG-` | `BUG-[Project]-[Sprint]-[ID]` | `BUG-ALPHA-S02-012.md` |
| **Test Run / Cycle** | `RUN-` | `RUN-[Sprint/Release]-[Date]` | `RUN-Sprint-14-2026-06-01.md` |

---

## 3. Detailed File Naming Breakdowns

### A. User Stories (`01-Requirements/User-Stories/`)
* **Pattern:** `US-[PROJECT]-[ID]-[Short-Description].md`
* ✅ *Good:* `US-ALPHA-001-Biometric-Login.md`
* ❌ *Bad:* `us alpha 1 biometric login.md` (Spaces break multi-platform Git sync).

### B. Test Suites (`03-Test-Suites/`)
* **Pattern:** `TS-[Module-Name]-[Logical-Group].md`
* ✅ *Good:* `TS-PAYMENTS-Credit-Cards.md`
* ❌ *Bad:* `PaymentTestSuite.md` (Lacks clear prefix and structural context).

### C. Test Cases (`04-Test-Cases/`)
Keep names descriptive but concise. Detailed variations belong inside the file properties.
* **Pattern:** `TC-[MODULE]-[3-Digit-ID]-[Atomic-Scenario].md`
* ✅ *Good:* `TC-AUTH-002-Password-Reset-Expired-Token.md`
* ❌ *Bad:* `TC_02_Test_Forgot_Password_When_Token_Is_Expired_After_24_Hours.md` (Too long, pollutes graph views).

### D. Defects / Bugs (`06-Bugs/`)
* **Pattern:** `BUG-[PROJECT]-[ID]-[Short-Summary].md`
* ✅ *Good:* `BUG-ALPHA-084-Checkout-Button-Unresponsive-On-Mobile.md`
* ❌ *Bad:* `Fix Checkout screen error.md` (Not uniquely queryable).

---

## 4. Metadata Tags & Properties Standard

When applying tags inside Obsidian properties, use lowercase only. This keeps Dataview queries predictable.

### Permitted Tags (`tags:`)
* `#suite` : Applied exclusively to Test Suite master maps.
* `#case` : Applied to individual Test Case files.
* `#bug` : Applied to active or closed defect logs.
* `#regression` / `#smoke` / `#sanity` : Used to categorize test types.

### Permitted Status Enums (`status:`)
* **For Test Cases:** `Draft` | `Ready` | `Deprecated`
* **For Bugs:** `Open` | `In-Progress` | `Retest` | `Closed`
* **For Test Runs:** `Not Started` | `In Progress` | `Completed`

---

## Enforcement Check during Code & Peer Reviews

When reviewing a colleague's pull request on the Main branch, verify:
1. Is the file placed in the correct directory isolation boundary?
2. Does the prefix match the standard tables above?
3. Are there any illegal spaces or characters in the filename that could jeopardize cross-platform syncing?