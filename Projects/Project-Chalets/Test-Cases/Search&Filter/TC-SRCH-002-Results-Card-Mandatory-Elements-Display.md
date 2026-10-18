---
tc_id: TC-SRCH-002
title: Verify Search Result Cards Render All Mandatory Structural Elements
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Search&Filter.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Listing Name | `شاليه روز بارك` |
| City & District | `الرياض`، `الرمال` |
| Capacity | `15` شخص |
| Price | `1,200 ر.س` |
| Verification Status | Inspected / Verified (`معاين`) |

# Preconditions
1. At least one published and verified chalet exists in the target search location.
2. User has executed a search query matching this listing.

# Steps
1. Navigate to the search results screen.
2. Inspect the rendered result card for `شاليه روز بارك`.
3. Check for the following required elements:
   - Main image (`الصورة الرئيسية`)
   - Listing name (`الاسم`)
   - City and district combined display (`المدينة و الحي`)
   - Capacity label (`السعة`)
   - Verification badge (`شارة «معاين»`)
   - Favorite action button (`زر المفضلة`)
   - Rental price (`السعر`)

# Expected Result
1. Every result card displays:
   - High-resolution main image with correct aspect ratio.
   - Clear listing title/name.
   - City and district clearly displayed together.
   - Capacity indication.
   - Visible and styled `معاين` badge.
   - Functional favorite toggle button.
   - Formatted price with currency indicator.
2. No placeholder errors, missing text strings, or overlapping elements appear on the card.

# Notes
- Requirement: `شكل نتائج البحث: النتائج بطاقات؛ كل بطاقة: الصورة الرئيسية، الاسم، المدينة و الحي، السعة، شارة «معاين»، زر المفضلة، السعر.`

# Attachments

# Script

---
*Last Updated: 2026-10-15 11:00*
