---
tc_id: TC-ACPT-034
title: Own Chalet Restrictions - Favoriting and Sharing Own Chalet Disallowed
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Accepting-Bookings.md
tags:
  - test-case
---

# Test Data
| Feature | State on Own Chalet Page |
| ------- | ------------------------ |
| Favorite Heart Icon | Hidden / Disabled |
| Share Link Icon | Hidden / Disabled |

# Preconditions
1. Lessor is authenticated and viewing their own chalet's public-facing view.

# Steps
1. Inspect the top app bar / header of the chalet view for the Favorite (heart) and Share icons.
2. Attempt to tap the Favorite icon if rendered.
3. Attempt to tap the Share icon if rendered.

# Expected Result
1. The lessor is not permitted to favorite or share their own chalet listing.
2. The Favorite and Share icons are either hidden or disabled to prevent self-promotion manipulation.

# Notes
- Requirement: UF-84 (Notes - closed questions: "Does favoriting and sharing own chalet stay allowed? No").

# Attachments

# Script

---
*Last Updated: 2026-10-26 15:35*
