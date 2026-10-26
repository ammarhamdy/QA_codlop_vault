---
tc_id: TC-ACPT-014
title: Sensitive Information Disclosure - Exact Location and Lessor Phone Revealed Only After Confirmation
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Sensitive Field | Pre-Confirmation Customer Visibility | Post-Confirmation Customer Visibility |
| --------------- | ------------------------------------ | ------------------------------------- |
| Exact Chalet Coordinates / Map Pin | Hidden / Approximate neighborhood only | **Revealed** (Exact GPS pin & address) |
| Lessor Direct Phone Number | Hidden / Inaccessible | **Revealed** (Callable phone number shown) |

# Preconditions
1. Customer has a temporary booking in "Awaiting Lessor Confirmation" status.
2. Chalet has exact GPS coordinates and lessor has a registered mobile number.

# Steps
1. As the customer, view the booking details screen before the lessor confirms.
2. Inspect the location/map section and host contact section.
3. As the lessor, confirm the booking.
4. As the customer, refresh or re-open the booking details screen.
5. Inspect the location section and lessor phone details again.

# Expected Result
1. Before confirmation:
   - The exact geographic location coordinates and precise street address are strictly hidden.
   - The lessor's direct phone number is completely hidden.
2. After confirmation:
   - The exact GPS location pin, driving directions link, and full address become visible.
   - The lessor's direct phone number is displayed and enabled for calling.

# Notes
- Requirement: UF-04 (Main Flow Step 6; Notes: "Location and phone are hidden before this point").

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
