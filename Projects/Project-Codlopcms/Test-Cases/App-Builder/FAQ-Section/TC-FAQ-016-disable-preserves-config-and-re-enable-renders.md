---
tc_id: TC-FAQ-016
title: Verify Disabling Preserves Configuration and Re-enabling Restores Rendering
priority: High
status: Draft
type: Regression
linked_requirement: FAQ-REQ-009
tags:
  - test-case
  - faq
  - disabled
  - re-enable
  - data-integrity
  - regression
---

# Test Data
| Field | Value |
| ----- | ----- |
| Title | My FAQ |
| FAQ Items | 3 items configured |

# Preconditions
- Administrator is logged into the App Builder.
- An FAQ section with title "My FAQ" and 3 configured FAQ items exists.

# Steps
1. Disable the FAQ section (`enabled: false`).
2. Save the section.
3. Open the mobile application and verify the section is not rendered.
4. Return to the App Builder and inspect the section configuration.
5. Re-enable the section (`enabled: true`).
6. Save the section and refresh the mobile application.

# Expected Result
- Disabling the section does not remove its existing configuration or FAQ data.
- The title and all 3 FAQ items remain in the configuration after disabling.
- After re-enabling, the FAQ section becomes eligible for rendering again and is displayed with its title and items.

# Notes

# Attachments