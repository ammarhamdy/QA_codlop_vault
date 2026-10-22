---
tc_id: TC-PKG-003
title: Verify Payment Method Selection Is Skipped When Only One Method Is Enabled
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Package-and-Payment-Method.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Enabled Platform Method | Bank Transfer (`تحويل بنكي`) only |
| Gateway Method Status | Disabled on mobile platform |
| Selected Package | `باقة البداية` (500 SAR) |

# Preconditions
1. In platform admin settings, only Bank Transfer is enabled for the lessor's platform (e.g., iOS or Android).
2. The payment gateway is disabled for this platform.
3. Lessor has selected `باقة البداية`.

# Steps
1. Tap on `باقة البداية` on the packages screen.
2. Observe whether a payment method selection screen appears.
3. Observe the destination screen displayed immediately after package selection.

# Expected Result
1. The payment method selection step is automatically skipped.
2. The system directly opens the Bank Transfer instructions screen (UF-43) with platform bank account details and payment request ID.

# Notes
- Requirement: UF-42 Notes (Closed question: "If only one method is enabled on the platform, is the method choice skipped? YES").

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
