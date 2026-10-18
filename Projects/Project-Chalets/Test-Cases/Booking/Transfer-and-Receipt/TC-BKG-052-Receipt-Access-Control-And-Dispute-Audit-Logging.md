---
tc_id: TC-BKG-052
title: Verify Receipt Access Control and Dispute-Only Admin Access with Mandatory Audit Logging
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Transfer-and-Receipt-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000612` |
| Uploading Customer | Customer A |
| Authorized Lessor | Lessor of the Chalet |
| Unrelated Customer | Customer B |
| Unrelated Lessor | Lessor of another property |
| Platform Administrator | Admin User |

# Preconditions
1. Customer A uploaded a receipt for booking `BKG-2026-000612`.
2. Initially, no dispute is open on `BKG-2026-000612`.

# Steps
1. As Customer A, verify access to view the uploaded receipt on `BKG-2026-000612`.
2. As the authorized Lessor, verify access to view the uploaded receipt.
3. As Customer B (unrelated customer), attempt to access the receipt URL/API.
4. As unrelated Lessor, attempt to access the receipt URL/API.
5. As Admin User, attempt to view the receipt while NO dispute is open on the booking.
6. Open an active dispute on `BKG-2026-000612`.
7. As Admin User, view the receipt during the active dispute.
8. Inspect the system security audit log for admin access entries.

# Expected Result
1. Only the uploading customer (Customer A) and the authorized lessor can view the receipt during normal flow.
2. Unrelated customer and unrelated lessor attempts receive `403 Forbidden`.
3. Admin is strictly prevented from viewing the receipt when no dispute is active on the booking.
4. When a dispute is open, Admin is granted view access.
5. Every single view action by Admin is recorded in the security audit log with admin ID, timestamp, and dispute ID.

# Notes
- Requirement: UF-02 Notes ("Visible only to the uploading customer and the lessor. Admin can view it only when a dispute is open on the booking, and every view is logged. The lessor cannot share or download it externally").

# Attachments

# Script

---
*Last Updated: 2026-10-18 14:35*
