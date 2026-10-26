---
tc_id: TC-ACPT-036
title: Own Chalet Fraud Prevention - System Blocks Submitting Rating on Own Chalet
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Operation | User Role | Target Resource | Expected Outcome |
| --------- | --------- | --------------- | ---------------- |
| Submit Review / Rating | Lessor | Own Chalet | Blocked / Prohibited (UF-14 E5) |

# Preconditions
1. Lessor owns Chalet Alpha.
2. The rating interface or API endpoint is accessible.

# Steps
1. Attempt to open a rating modal on Chalet Alpha as the logged-in owner.
2. Attempt to submit a review score and text for Chalet Alpha via direct API POST call.

# Expected Result
1. The system prevents a lessor from rating their own chalet.
2. UI controls for rating are hidden.
3. Backend API strictly rejects the submission with a 403/validation error enforcing self-review prohibition.

# Notes
- Requirement: UF-84 (Error Flow E1: "Lessor tries to rate their own stay -> Not allowed (UF-14 E5)").

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
