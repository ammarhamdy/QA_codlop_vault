---
tc_id: TC-SUB-004
title: Verify Ad Featured Status Is Preserved in Database but Hidden from Public View
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
| Ad ID | `AD-201` (`شاليه النخبة`) |
| Pre-Expiry Featured State | `is_featured: true` (Highlighted on homepage) |

# Preconditions
1. Ad `AD-201` is actively marked as featured (`مميز`).
2. Lessor subscription expires.

# Steps
1. Execute subscription expiration.
2. In the database, query record for `AD-201` and inspect the `is_featured` flag.
3. Open the public mobile app homepage and search listings.
4. Check whether `AD-201` appears in featured sections or general listings.

# Expected Result
1. The featured attribute is preserved in the database (remains associated with the ad).
2. The ad is NOT rendered anywhere in the public app, including featured carousels or banners.
3. Upon later renewal, this saved featured status can be restored per package capacity.

# Notes
- Requirement: UF-57 Main Flow Step 4 ("Keeps featuring saved but not visible").

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
