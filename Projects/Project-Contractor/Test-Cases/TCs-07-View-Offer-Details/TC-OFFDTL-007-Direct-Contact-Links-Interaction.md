---
tc_id: TC-OFFDTL-007
title: Verify Interactive Direct Contact Links for Phone and WhatsApp
priority: Medium
status:
  - completed
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-07-View-Offer-Details.md
tags:
  - test-case
run_result: pass
---

# Test Data
| Field | Value |
| ----- | ----- |
| Professional Phone | `+966551234567` |
| Professional WhatsApp | `+966551234567` |
| Expected Call URI | `tel:+966551234567` |
| Expected WhatsApp URI | `https://wa.me/966551234567` |

# Preconditions
1. Tender Owner is authenticated.
2. User is viewing details of an offer that includes both a valid phone and WhatsApp number.

# Steps
1. Navigate to the contact actions section on the Offer Details screen.
2. Inspect the HTML `href` attribute on the "Call" button.
3. Click the "Call" button and observe system URI handler prompt.
4. Inspect the HTML `href` attribute on the "WhatsApp" button.
5. Click the "WhatsApp" button and observe browser redirection.

# Expected Result
1. The "Call" action contains a valid `tel:+966551234567` scheme and triggers the device dialer.
2. The "WhatsApp" action contains a valid `https://wa.me/966551234567` link and opens the WhatsApp messaging interface with the professional's number pre-filled.
3. Neither link causes an internal navigation failure or session reset.

# Notes
- Validates Step 3 of the Main Flow in UF-07 ("external contact links (Call, WhatsApp)").

# Attachments

# Script

---
*Last Updated: 2026-11-04 14:22*
