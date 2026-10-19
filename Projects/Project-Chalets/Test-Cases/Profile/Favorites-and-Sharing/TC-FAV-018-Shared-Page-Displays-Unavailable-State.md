---
tc_id: TC-FAV-018
title: Verify Shared Web Page Displays Unavailable Notice with Store Buttons for Inactive Places
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Customer-Profile/Favorites-and-Sharing.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Shared URL | `https://chalets.codlop.sa/p/p8k2w9q` |
| Inactivity State | Ad is deactivated, suspended, or unlisted by lessor |
| Expected Unavailable Message | `هذا الشاليه غير متاح حاليًا` |
| Re-activation Scenario | Place is re-activated by lessor after 48 hours |

# Preconditions
1. Chalet was previously published and a share link `https://chalets.codlop.sa/p/p8k2w9q` was generated.
2. The chalet's ad is now unavailable (lessor unlisted it or administrative pause).
3. The recipient opens the shared link in a web browser without the app.

# Steps
1. Navigate to `https://chalets.codlop.sa/p/p8k2w9q` while the place is unavailable.
2. Inspect the rendered page components, message text, and store buttons.
3. In the lessor portal, re-publish and reactivate the chalet ad.
4. Refresh `https://chalets.codlop.sa/p/p8k2w9q` in the web browser.

# Expected Result
1. When unavailable, the web page displays the exact Arabic message: `«هذا الشاليه غير متاح حاليًا»`.
2. Both store download buttons (**App Store** and **Google Play**) remain visible and functional.
3. When the place is re-activated, the exact same shared link resumes working seamlessly, displaying full active place details (image, title, price, rating).

# Notes
- Requirement: UF-22 Alternative Flow A2 and Notes ("The ad is unavailable: Shows «هذا الشاليه غير متاح حاليًا» with both store buttons. Does the link keep working after the place becomes unavailable and then available again? It should work").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:15*
