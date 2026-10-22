---
tc_id: TC-RENT-027
title: Verify Updating Price Limits Dynamically Adjusts Validation Error Message
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Rental-System-and-Working-Days.md
tags:
  - test-case
---

# Test Data
| Setting Parameter | Default Boundaries | Updated Boundaries |
| ----------------- | ------------------ | ------------------ |
| Lowest Unit Price | 1 SAR | 50 SAR |
| Highest Unit Price | 100,000 SAR | 50,000 SAR |
| Expected Dynamic Error Message | `«السعر بالريال من 1 إلى 100,000 بدون كسور»` | `«السعر بالريال من 50 إلى 50,000 بدون كسور»` |

# Preconditions
1. Admin user is in Admin Panel -> Calendar Settings.

# Steps
1. In Calendar Settings, change lowest unit price to `50` and highest unit price to `50000`.
2. Tap **Save Settings**.
3. As a lessor, create or edit a chalet ad and navigate to the Base Prices step (UF-65).
4. Enter `40` SAR (below the new 50 SAR minimum) and tap **Save**.
5. Observe the validation error text displayed.
6. Enter `60000` SAR (above the new 50,000 SAR maximum) and tap **Save**.
7. Observe the validation error text displayed.

# Expected Result
1. The price validation engine dynamically adopts the updated admin-configured price boundaries.
2. The validation error message reflects the current active limits:
   `«السعر بالريال من 50 إلى 50,000 بدون كسور»`.
3. Inputs outside the new boundaries (40 SAR and 60,000 SAR) are blocked.
4. Existing chalets with previously saved prices outside the new boundaries remain unaffected.

# Notes
- Requirement: UF-70 Notes (Closed questions: "The price error message shows fixed numbers (1 to 100,000), but the limits are configurable. Should the message use the current limits? OK will use the current limits. Do new price limits affect existing prices? No, only affect new added chalet").

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
