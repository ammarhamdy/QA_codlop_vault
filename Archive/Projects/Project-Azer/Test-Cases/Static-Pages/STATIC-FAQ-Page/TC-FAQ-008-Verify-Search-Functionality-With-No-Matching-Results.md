---
tc_id: TC-FAQ-008
title: Verify Admin FAQ Search with Non-Existent Keywords
priority: Medium
status: Ready
type: Functional
linked_requirement: US-CONTACT-003
tags:
  - test-case
  - faq-admin
  - functional
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Invalid Search Keyword | unobtainium |

# Preconditions
- The administrator is logged into the admin dashboard.
- At least one FAQ exists in the list.
- The administrator is viewing the FAQ list with the search bar.

# Steps
1. Click inside the FAQ search input field.
2. Type the invalid search keyword "unobtainium" and press Enter.
3. Observe the list and search feedback.
4. Clear the search input field completely and press Enter or click "Clear".

# Expected Result
- The FAQ list displays 0 matching rows.
- A clear, user-friendly feedback message (e.g., "No FAQs found matching your search") is displayed.
- After Step 4, the full list of FAQs is immediately restored and displayed.

# Notes
- Ensures search failure does not crash the UI or corrupt pagination state.

# Attachments
