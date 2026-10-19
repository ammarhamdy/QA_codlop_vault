---
tc_id: TC-FAV-014
title: Verify Shared Web Page Displays Mandatory Content Elements on Devices Without the App
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
| Shared URL | `https://chalets.codlop.sa/p/m4n8p2r` |
| Place Title & Location | `شاليه سعف — الريان، بريدة` |
| Today's Price | `1,500 ريال / يوم` |
| Rating Score | `4.8 ★ (24 تقييم)` |
| Inspection Status | Inspected (Badge: `تمت المعاينة`) |
| Store Buttons | `App Store`, `Google Play` |

# Preconditions
1. Test device / desktop browser does NOT have the Chalets mobile app installed.
2. The shared place is published, active, and has verified inspection status.

# Steps
1. Open `https://chalets.codlop.sa/p/m4n8p2r` in a standard desktop or mobile web browser.
2. Inspect the rendered web page structure and visual elements.
3. Verify presence of place primary image.
4. Verify title formatting includes place type, title, neighborhood, and city (`شاليه سعف — الريان، بريدة`).
5. Verify display of today's price.
6. Verify rating display (`4.8 ★`).
7. Verify presence of the verified "Inspected" (`تمت المعاينة`) badge.
8. Verify presence and placement of both store download buttons (**App Store** and **Google Play**).

# Expected Result
1. The web page renders cleanly and responsively without demanding login.
2. All 6 mandatory components are visible:
   - High-quality hero image
   - Formatted title with place type prefix and location
   - Current day's price
   - Rating score
   - "Inspected" (`تمت المعاينة`) badge
   - "App Store" and "Google Play" download buttons.

# Notes
- Requirement: UF-22 Step 2 ("Shows the share page: image, title with the type word, today's price, rating, and the 'Inspected' badge").

# Attachments

# Script

---
*Last Updated: 2026-10-19 12:15*
