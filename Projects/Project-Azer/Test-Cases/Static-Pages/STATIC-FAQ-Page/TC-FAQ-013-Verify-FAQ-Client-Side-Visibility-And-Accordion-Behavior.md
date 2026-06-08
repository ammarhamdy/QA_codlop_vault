---
tc_id: TC-FAQ-013
title: Verify FAQ Client-Side Visibility and Accordion Expand/Collapse Behavior
priority: High
status: Ready
type: Functional
linked_requirement: US-CONTACT-003
tags:
  - test-case
  - faq-client
  - contact-us-page
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Multiple FAQ Entries | Seeded from faqs.json |

# Preconditions
- Multiple FAQ items are successfully configured and active in the Admin Panel.
- The public client-facing website is fully accessible.

# Steps
1. Navigate to the Contact Us page (or FAQ page) on the website.
2. Scroll to the Frequently Asked Questions section.
3. Verify that all configured FAQ questions are displayed clearly.
4. Click on a specific FAQ question.
5. Verify that the question expands smoothly and its corresponding answer becomes visible.
6. Click the same FAQ question a second time.
7. Verify that the answer collapses smoothly and becomes hidden again.
8. Click another question while one is already expanded and observe behavior.

# Expected Result
- All active FAQ questions are displayed.
- The answer text is hidden by default and expands smoothly only upon clicking the question.
- Clicking an open question successfully collapses it.
- Smooth transitions/accordion animations function as expected with no overlapping text.

# Notes
- Direct fulfillment of US-CONTACT-003 (Scenarios 1, 2, and 3).

# Attachments
