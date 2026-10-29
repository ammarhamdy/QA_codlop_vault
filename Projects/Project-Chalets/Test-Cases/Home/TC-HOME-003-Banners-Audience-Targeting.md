---
tc_id: TC-HOME-003
title: Verify Banners Display Strictly According to Target Audience Segment
priority: High
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Home-Screen-For-Customer.md
tags:
  - test-case
run_result: fail
---

# Test Data
| Field | Value |
| ----- | ----- |
| Banner A Audience | `الكل` (Everyone - Public) |
| Banner B Audience | `الزوار` (Unauthenticated Visitors only) |
| Banner C Audience | `العملاء` (Authenticated Clients only) |
| Banner D Audience | `المؤجرون` (Lessors / Owners only) |

# Preconditions
1. Four active banners (A, B, C, D) are published in the backend with the specified audience settings and valid active time windows.
2. Three test user sessions are prepared:
   - User 1: Unauthenticated Visitor.
   - User 2: Authenticated Client (`العميل`).
   - User 3: Authenticated Lessor (`المؤجّر`).

# Steps
1. Launch app as User 1 (Unauthenticated Visitor) and view Home screen banners.
2. Note visible banners.
3. Log in as User 2 (Authenticated Client) and view Home screen banners.
4. Note visible banners.
5. Switch to / Log in as User 3 (Authenticated Lessor) and view Home screen banners.
6. Note visible banners.

# Expected Result
1. For User 1 (Visitor): Banner A (`الكل`) and Banner B (`الزوار`) are displayed. Banners C (`العملاء`) and D (`المؤجرون`) are not displayed.
2. For User 2 (Client): Banner A (`الكل`) and Banner C (`العملاء`) are displayed. Banners B (`الزوار`) and D (`المؤجرون`) are not displayed.
3. For User 3 (Lessor): Banner A (`الكل`) and Banner D (`المؤجرون`) are displayed. Banners B (`الزوار`) and C (`العملاء`) are not displayed.

# Notes
- Requirement: `البنر يظهر فقط داخل نافذته ولجمهوره (الكل، الزوار، العملاء، المؤجرون)`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:35*
