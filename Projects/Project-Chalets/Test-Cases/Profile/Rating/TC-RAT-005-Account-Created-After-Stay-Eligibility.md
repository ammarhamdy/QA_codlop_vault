---
tc_id: TC-RAT-005
title: Verify Rating Eligibility When Account Is Created After Stay Check-out
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Rating.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| New Customer Mobile | `0561199228` |
| External Stay ID | `EXT-1055` |
| Chalet Name | `شاليه الأندلس` |
| Star Rating | `5` |
| Comment | `حجزت هاتفياً وسجلت في التطبيق لاحقاً، تجربة رائعة جداً.` |

# Preconditions
1. Lessor previously recorded external stay `EXT-1055` using phone number `0561199228`.
2. Check-out time has already passed.
3. At the time of the stay, no registered account existed in the system for `0561199228`.

# Steps
1. On the mobile app, initiate sign-up/registration using mobile number `0561199228`.
2. Complete OTP verification and create profile.
3. Navigate to **"My Stays and Rating Invitations"** (`إقاماتي ودعوات التقييم`).
4. Verify whether stay `EXT-1055` for `شاليه الأندلس` is listed.
5. Tap **"Rate Your Stay"** and complete rating submission with 5 stars and valid comment.

# Expected Result
1. The system automatically associates the past external stay with the newly registered user based on mobile number matching.
2. The user sees `EXT-1055` listed under "My Stays and Rating Invitations".
3. The user is permitted to open the rating form and submit their review successfully.
4. The review is published with status `Visible` on the place page.

# Notes
- Requirement: UF-14 Alternative Flow A2 ("The phone owner created the account after the stay -> Still eligible").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:30*
