---
tc_id: TC-SRCH-002
title: Verify Search Results Card Components and Badge Displays
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
| Listing 1 (Rated, Verified, Featured) | Name: `شاليه الرمال`, Rating: `4.8 (25)`, Badges: `معاين` & `مميز` |
| Listing 2 (New, No Reviews) | Name: `شاليه الواحة`, Rating: `جديد`, Badge: `معاين` |

# Preconditions
1. Active search results are loaded on screen containing verified, featured, and newly published chalets.

# Steps
1. Navigate to the search results page.
2. Inspect individual chalet result cards.
3. For Listing 1, verify the presence of:
   - Main photo (`الصورة الرئيسية`).
   - Name (`الاسم`).
   - Location (`المدينة والحي`).
   - Capacity (`السعة`).
   - Rating and review count (`متوسط التقييم وعدده`).
   - Verified badge (`شارة «معاين»`).
   - Featured badge (`شارة «مميز»`).
   - Favorite button (`زر المفضلة`).
4. For Listing 2 (no prior reviews), verify rating label displays `جديد` (New).

# Expected Result
1. Every result card accurately renders all mandatory elements:
   - High-quality main photo.
   - Chalet name.
   - City and district label.
   - Capacity information.
   - Favorite heart button.
2. Chalets with existing ratings display the average score and total review count (e.g. `4.8 (25)`).
3. Chalets without prior ratings explicitly display `جديد` instead of `0` or empty text.
4. Badges `معاين` (Inspected/Verified) and `مميز` (Featured) are clearly visible when applicable.

# Notes
- Requirement: `شكل نتائج البحث: بطاقات؛ كل بطاقة: الصورة الرئيسية، الاسم، المدينة والحي، السعة، متوسط التقييم وعدده أو «جديد»، شارة «معاين»، شارة «مميز». إن وُجدت، زر المفضلة`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:55*
