---
tc_id: TC-SUB-023
title: Verify Restoring an Ad Restores Its Featured Status Within Package Capacity
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Subscription-Expires-and-Ads-Are-Hidden.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Ad ID | `AD-701` |
| Pre-Expiry State | `is_featured: true` |
| Restored Subscription Package | Includes 1 featured ad slot |

# Preconditions
1. Ad `AD-701` was featured prior to subscription expiry.
2. Lessor renews subscription with a package that includes at least 1 featured ad slot.
3. Ad `AD-701` is restored to `Published`.

# Steps
1. Restore ad `AD-701` to active status via renewal.
2. In the database, verify `is_featured` flag on `AD-701`.
3. Open the public mobile app homepage.
4. Verify whether `AD-701` is rendered in the featured ads section.

# Expected Result
1. Restoring ad `AD-701` automatically restores its active featured status (`is_featured: true`).
2. The ad reappears in the public featured chalets carousel/listing without requiring lessor to repurchase or reapply for featured placement.

# Notes
- Requirement: UF-61 Notes (Closed question: "Does featuring return with the ad? Yes").

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
