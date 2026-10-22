---
tc_id: TC-RENT-002
title: Verify Customizing Check-In and Check-Out Times on Published Chalet Applies Immediately
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Rental-System-and-Working-Days.md
tags:
  - test-case
---

# Test Data
| Field | Original Published Value | Updated Value |
| ----- | ------------------------ | ------------- |
| Check-in Time | `04:00 PM` | `03:00 PM` |
| Check-out Time | `12:00 PM` (Next day) | `01:00 PM` (Next day) |
| Label | Day/Night | Standard Full Day |

# Preconditions
1. Chalet `منتجع النرجس` is published and active.
2. No future app bookings exist on `منتجع النرجس`.

# Steps
1. In lessor dashboard, open `منتجع النرجس` and navigate to Times Settings (UF-54).
2. Change check-in time from `04:00 PM` to `03:00 PM`.
3. Change check-out time from `12:00 PM` to `01:00 PM` (next day).
4. Tap **Save Changes** (`حفظ التعديلات`).
5. In client app or web page, open the details page for `منتجع النرجس`.
6. Inspect the displayed check-in and check-out times.

# Expected Result
1. The updated times are saved successfully without requiring any administrative review or re-inspection.
2. The public chalet page updates immediately to reflect the new check-in (`03:00 PM`) and check-out (`01:00 PM next day`) times.
3. Subsequent customer bookings adopt the updated times.

# Notes
- Requirement: UF-64 Main Flow Step 4 ("A published ad changes immediately with no review").

# Attachments

# Script

---
*Last Updated: 2026-10-22 13:55*
