---
tc_id: TC-EXPTND-011
title: Verify Real-Time Query Fallback Prevents Viewing Expired Tenders When Cache Invalidation Fails
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-13-Tender-Automatic-Expiration.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-912` |
| DB Status | Successfully updated to `Expired` |
| Cache Service State | Invalidation service offline / purge call times out |

# Preconditions
1. Tender `TND-912` has reached expiration, and the database status is updated to `Expired`.
2. Cache invalidation / Redis service fails or lags during Step 4 of worker execution.

# Steps
1. Simulate cache invalidation failure during worker execution.
2. Verify that worker logs the cache purge error.
3. Access the public Browse Available Tenders catalog (`SCR-PUB-01`) as a Professional.
4. Attempt to submit an offer for `TND-912` via direct API POST.

# Expected Result
1. The real-time database query filter (`WHERE status = 'Open' AND end_date > CURRENT_TIMESTAMP`) acts as a safeguard.
2. Even if cache invalidation lags or fails, the catalog retrieval fallback excludes `TND-912`.
3. Any attempt to submit an offer directly queries the database and is rejected because `status = 'Expired'`.
4. Professionals are prevented from bidding on the expired tender despite cache sync issues.

# Notes
- Directly validates alternative flow E2 in UF-13.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:48*
