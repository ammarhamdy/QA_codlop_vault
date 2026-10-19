---
tc_id: TC-FAV-012
title: Verify Shared Public Link Displays Place Title and Image in Messaging Apps Rich Preview
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
| Chalet Name | `شاليه سعف — الريان، بريدة` |
| Primary Image URL | `https://cdn.codlop.sa/chalets/saaf_hero.jpg` |
| Messaging Apps Tested | WhatsApp, Telegram, iMessage |
| Open Graph Tags | `og:title`, `og:image`, `og:type` |

# Preconditions
1. Chalet has a valid title, place type, city/neighborhood, and at least one high-resolution hero photo.
2. The public web share endpoint renders valid HTML Open Graph meta tags.

# Steps
1. In the mobile app, tap **"Share"** and choose WhatsApp (or messaging simulator).
2. Paste or send the generated link into a chat thread.
3. Allow the messaging client to fetch URL metadata.
4. Inspect the rich preview card rendered in the chat window.
5. In an automated test/curl session, query the web share URL and verify HTML `<meta property="og:title">` and `<meta property="og:image">` tags.

# Expected Result
1. The messaging client displays an interactive rich preview card.
2. The preview card displays the exact place title including the type descriptor (`شاليه سعف — الريان، بريدة`).
3. The preview card renders the primary place image thumbnail clearly without broken image icons.

# Notes
- Requirement: UF-21 Step 3 ("The preview shows the place title and image").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:15*
