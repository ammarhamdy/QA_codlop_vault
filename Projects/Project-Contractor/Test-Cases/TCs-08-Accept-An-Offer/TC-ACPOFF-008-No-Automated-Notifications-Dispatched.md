---
tc_id: TC-ACPOFF-008
title: Verify System Enforces No Automated Notification Dispatch Upon Offer Acceptance
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-08-Accept-An-Offer.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Tender ID | `TND-508` |
| Accepted Offer ID | `OFF-801` (Professional Phone: `+966509876543`) |
| Rejected/Pending Offer ID | `OFF-802` (Professional Phone: `+966501122334`) |

# Preconditions
1. Tender Owner is authenticated.
2. Tender `TND-508` has two submitted offers (`OFF-801` and `OFF-802`).
3. Message queues, SMS dispatch logs, and notification mock listeners are active.

# Steps
1. Navigate to Offer Details for `OFF-801`.
2. Click "Accept Offer" and confirm in the modal.
3. Await successful completion of the award flow.
4. Inspect SMS gateway logs, push notification dispatch queues, and email outbox logs.

# Expected Result
1. The tender is awarded and offer `OFF-801` is accepted.
2. No automated SMS, push, or email notification is triggered or dispatched to the accepted professional (`OFF-801`).
3. No automated rejection notification is dispatched to other bidders (`OFF-802`).
4. Adheres strictly to BR-11 ("The system does not notify Professionals when their offers are accepted or rejected") and UF-08 Main Flow Step 4.

# Notes
- Directly validates BR-11 and post_success notification restriction in UF-08.

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:28*
