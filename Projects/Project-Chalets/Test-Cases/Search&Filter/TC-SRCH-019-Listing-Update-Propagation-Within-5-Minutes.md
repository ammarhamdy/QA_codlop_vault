---
tc_id: TC-SRCH-019
title: Verify Listing Updates Propagate and Reflect in Search Results Within 5 Minutes
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Search&Filter.md
tags:
  - test-case
---

# Test Data
| Field | Original Value | Updated Value |
| ----- | -------------- | ------------- |
| Listing Name | `شاليه الفخامة القديم` | `شاليه الفخامة ريزورت` |
| Rental Price | `1,000 ر.س` | `1,600 ر.س` |
| Maximum Allowed Propagation Delay | 5 minutes (300 seconds) |

# Preconditions
1. Chalet is published and currently visible in search results under its original name and price.
2. Lessor has valid active session in lessor management portal.

# Steps
1. Lessor updates the chalet listing name to `شاليه الفخامة ريزورت` and price to `1,600 ر.س` and submits/saves the update.
2. Record the exact submission timestamp ($T_0$).
3. From the client app/search interface, execute a search query for the updated chalet immediately ($T_0 + 30\text{s}$) and at 1-minute intervals up to $T_0 + 5\text{m}$.
4. Observe the search results card and filter behavior.

# Expected Result
1. The search projection / listing projection worker synchronizes the changes within at most 5 minutes.
2. At or before $T_0 + 5\text{m}$, the search results card reflects the updated name `شاليه الفخامة ريزورت` and the updated price `1,600 ر.س`.
3. Filtering by price range including 1,600 SAR correctly matches the updated listing.

# Notes
- Requirement: `قواعد البحث و الفلاتر: التحديث يظهر للعامة خلال 5 دقائق.`

# Attachments

# Script

---
*Last Updated: 2026-10-15 11:00*
