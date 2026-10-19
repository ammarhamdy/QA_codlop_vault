---
tc_id: TC-FAV-017
title: Verify Shared Web Page Strictly Excludes Booking Capability and Lessor Contact Data
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
| Shared URL | `https://chalets.codlop.sa/p/z1w8e5r` |
| Sensitive Contact Data | Lessor Mobile Number (`0551234567`) |
| Sensitive Location Data | Exact GPS Coordinates (`24.7136, 46.6753`) |
| Disallowed Actions | "Book", "Check Availability", "Direct Call" |

# Preconditions
1. Active chalet has lessor contact information and exact GPS coordinates stored in the database.
2. Web share URL `https://chalets.codlop.sa/p/z1w8e5r` is publicly accessible.

# Steps
1. Load `https://chalets.codlop.sa/p/z1w8e5r` in a web browser.
2. Inspect the rendered DOM, interactive buttons, and visible text.
3. Check for any booking calendar, date picker, or "Book Now" buttons.
4. Check for any displayed lessor telephone number, WhatsApp contact link, or messaging button.
5. Inspect the HTML source code, embedded JSON-LD scripts, and API network payloads for exact GPS coordinates or lessor phone numbers.
6. Verify robots meta tag in the HTML `<head>`.

# Expected Result
1. The web page provides **NO booking functionality**: no calendar, no slot reservation, and no payment interface.
2. The web page displays **NO lessor contact data**: the lessor's phone number is omitted from both the UI and the underlying network responses.
3. The exact location coordinates and street address are hidden; only general city/neighborhood is shown.
4. The HTML source includes `<meta name="robots" content="noindex, nofollow">` ensuring the share page is not indexed by public search engines.

# Notes
- Requirement: UF-22 Notes ("The share page has no booking and no contact data: no lessor number and no exact location. The page is not indexed by search engines").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:15*
