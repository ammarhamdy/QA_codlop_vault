---
tc_id: TC-SUB-021
title: Verify Selective Ad Restoration Workflow When New Package Is Smaller Than Hidden Ads
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Subscription-Expires-and-Ads-Are-Hidden.md
tags:
  - test-case
---

# Test Data
| Hidden Ads | Saved State | New Package Quota | Lessor Selection | Expected Status |
| ---------- | ----------- | ----------------- | ---------------- | --------------- |
| `AD-601` | `Published` | 2 ads max | Selected | `Published` |
| `AD-602` | `Published` | 2 ads max | Selected | `Published` |
| `AD-603` | `Published` | 2 ads max | Unselected | Stays `Hidden for Subscription Expiry` |
| `AD-604` | `Disabled` | 2 ads max | Unselected | Stays `Hidden for Subscription Expiry` |

# Preconditions
1. Lessor has 4 ads currently in status `Hidden for Subscription Expiry`.
2. Lessor renews late with a smaller package allowing a maximum of 2 published ads.
3. The new subscription is `Active`.

# Steps
1. In the lessor app, open the ad restoration / ads management screen.
2. Observe the notification prompting the lessor to select which ads to restore up to the 2-ad limit.
3. Select `AD-601` and `AD-602`.
4. Tap **Confirm Selection** (`تأكيد الاختيار`).
5. Inspect the status of all 4 ads in the database and lessor dashboard.
6. Check public search results.

# Expected Result
1. The system permits the lessor to selectively restore ads up to the package capacity limit (2 ads).
2. Selected ads (`AD-601` and `AD-602`) return to their previous `Published` state and reappear in public search.
3. Unselected ads (`AD-603` and `AD-604`) remain in status `Hidden for Subscription Expiry`.
4. Total visible ads never exceed the package limit of 2 ads.

# Notes
- Requirement: UF-61 Main Flow Steps 3 to 4 & Notes.

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
