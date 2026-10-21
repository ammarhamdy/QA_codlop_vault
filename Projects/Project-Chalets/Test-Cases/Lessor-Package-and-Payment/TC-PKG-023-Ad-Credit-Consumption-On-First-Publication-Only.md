---
tc_id: TC-PKG-023
title: Verify Ad Credit Consumption Rules Enforce Single Deduction on First Publication Only
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Package-and-Payment-Method.md
tags:
  - test-case
---

# Test Data
| Action on Ad | Does It Consume Credit? | Credit Balance Impact |
| ------------ | ----------------------- | --------------------- |
| Saving Ad as Draft | NO | Balance remains unchanged |
| Submitting for Review | NO | Balance remains unchanged |
| Ad Rejected by Admin | NO | Balance remains unchanged |
| First Successful Publication | **YES** | Consumes exactly 1 ad credit |
| Editing Published Ad | NO | Balance remains unchanged |
| Disabling Published Ad | NO (Does not restore) | Credit is NOT returned |
| Re-enabling Disabled Ad | NO | Balance remains unchanged |
| Publishing New Ad while another is disabled | **YES** | Consumes another 1 credit |
| Featuring an ad within package limit | NO (Needs no review) | Consumes 0 ad credits |

# Preconditions
1. Lessor has an active subscription with 3 total ad credits and 1 featured credit.
2. Initial available ad balance: 3 credits.

# Steps
1. Create an ad draft; verify available credits count.
2. Submit ad for review; verify credits.
3. Simulate admin rejection; verify credits.
4. Correct ad and achieve first approved publication; verify available credits count.
5. Edit the published ad; verify credits.
6. Disable the published ad; verify if credit is restored.
7. Re-enable the disabled ad; verify credits.
8. Create and publish a second new ad while the first is disabled; verify credits count.
9. Apply the featured status to a published ad within the allowed featured limit.

# Expected Result
1. Exactly one ad credit is consumed ONLY upon the initial first publication.
2. Drafts, reviews, rejections, edits, and re-showing do not consume credits.
3. Disabling an ad does NOT restore the credit.
4. Publishing a new chalet always consumes a credit even if an earlier ad was disabled.
5. Featuring an ad within package limit is immediate, requires no administrative review, and consumes zero regular ad credits.

# Notes
- Requirement: UF-46 Notes ("Credit rule: one ad is consumed only at the first publication... Disabling does not give the credit back").

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
