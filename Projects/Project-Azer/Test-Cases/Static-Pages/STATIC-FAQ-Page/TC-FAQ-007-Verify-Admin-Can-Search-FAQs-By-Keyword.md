---
tc_id: TC-FAQ-007
title: Verify Admin Can Search for FAQs by Keyword
priority: High
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
| Search Keyword (Question match) | refund |
| Search Keyword (Answer match) | support |
| Existing FAQ 1 | Question: "Do you offer refunds?" \| Answer: "Refund requests are reviewed within 5 business days." |
| Existing FAQ 2 | Question: "How do I contact support?" \| Answer: "Email our contact address." |

# Preconditions
- The administrator is logged into the admin dashboard.
- The multiple FAQs specified in the test data exist in the list.
- The administrator is on the FAQ list page.

# Steps
1. Locate the Search input field at the top of the FAQ list table.
2. Enter "refund" in the search bar and press Enter (or click search).
3. Clear the search input, enter "SUPPORT" (verifying case-insensitivity) and press Enter.

# Expected Result
- After Step 2, the list filters dynamically to display only "Do you offer refunds?". All other non-matching FAQs are hidden.
- After Step 3, the list filters dynamically to display "How do I contact support?". This verifies the search matches case-insensitively and inspects both questions and answers.

# Notes
- Search should filter either client-side or send a quick debounced AJAX request.

# Attachments
