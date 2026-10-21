---
tc_id: TC-FAQ-012
title: Verify FAQ List Pagination in the Admin Panel
priority: Medium
status: Ready
type: Functional
linked_requirement: US-CONTACT-003
tags:
  - test-case
  - faq-admin
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Total FAQ Entries | 25 |
| Page Size Limit | 10 per page |

# Preconditions
- The administrator is logged into the admin dashboard.
- At least 25 FAQ entries have been created and exist in the system.
- The administrator is viewing the FAQ list management page.

# Steps
1. Scroll to the bottom of the FAQ management page.
2. Verify that pagination controls (Page numbers, Next, Previous buttons) are visible.
3. Verify that Page 1 lists exactly 10 FAQ entries.
4. Click on "Page 2" or the "Next" button.
5. Verify that the table updates to display items 11 to 20.
6. Click the "Previous" button and verify that the view returns to Page 1.

# Expected Result
- Pagination controls render correctly and accurately calculate total pages.
- Navigation triggers clean, fast transitions without empty lists or server errors.
- Active page is visually highlighted in pagination controls.

# Notes
- Crucial for performance as the volume of FAQs grows in the system.

# Attachments
