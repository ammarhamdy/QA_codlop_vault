---
tc_id: TC-OFFDTL-004
title: Verify Contact Display When Offer Does Not Contain a WhatsApp Number
priority: Medium
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-07-View-Offer-Details.md
tags:
  - test-case
run_result: pass
web_run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Offer ID | `OFF-1004` |
| Professional Phone | `+966509876543` |
| Professional WhatsApp | `null` / Empty (Optional field omitted) |

# Preconditions
1. Tender Owner is authenticated.
2. Offer `OFF-1004` was submitted without providing an optional WhatsApp number.
3. User is on the Offer Details screen for `OFF-1004`.

# Steps
1. Navigate to the Offer Details screen for `OFF-1004`.
2. Inspect the professional contact section.
3. Verify the display of the direct phone calling option.
4. Verify the display and state of the WhatsApp link.

# Expected Result
1. The direct phone number (`+966509876543`) is clearly displayed with an active "Call" action.
2. The WhatsApp contact button/link is cleanly omitted or grayed out as disabled.
3. No broken links or empty placeholders (e.g., `https://wa.me/undefined`) are generated.

# Notes
- Directly validates alternative flow A3 in UF-07 and BR-08.

# Attachments

# Script

---
*Last Updated: 2026-11-04 14:22*
