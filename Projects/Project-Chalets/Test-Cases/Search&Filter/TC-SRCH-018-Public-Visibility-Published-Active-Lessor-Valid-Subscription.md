---
tc_id: TC-SRCH-018
title: Verify Public Visibility Requires Published Status Active Lessor Account and Valid Subscription
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Search&Filter.md
tags:
  - test-case
---

# Test Data
| Listing | Listing Status | Lessor Account Status | Lessor Subscription | Expected Visibility |
| ------- | -------------- | --------------------- | ------------------- | ------------------- |
| Case 1: Valid | `منشور` (Published) | Active (`نشط`) | Valid (`ساري`) | **Visible** |
| Case 2: Draft Listing | `مسودة` (Draft) | Active (`نشط`) | Valid (`ساري`) | **Hidden** |
| Case 3: Inactive Lessor | `منشور` (Published) | Suspended / Inactive (`معطل`) | Valid (`ساري`) | **Hidden** |
| Case 4: Expired Sub | `منشور` (Published) | Active (`نشط`) | Expired (`منتهي`) | **Hidden** |

# Preconditions
1. Four chalets (Cases 1 through 4) exist in database located in the same city.
2. User is performing a public search as a regular client or visitor.

# Steps
1. Execute a public search query matching the city and characteristics of the 4 test listings.
2. Review the search results list.
3. Check for the presence of Case 1.
4. Check for the presence of Case 2.
5. Check for the presence of Case 3.
6. Check for the presence of Case 4.

# Expected Result
1. Case 1 is visible and searchable by the public.
2. Case 2 (draft / unpublished) does NOT appear in search results.
3. Case 3 (lessor account suspended/inactive) does NOT appear in search results.
4. Case 4 (lessor subscription expired) does NOT appear in search results.
5. Search visibility strictly requires all three conditions simultaneously: `منشور` status + active lessor account + valid subscription.

# Notes
- Requirement: `قواعد البحث و الفلاتر: الإعلان يظهر للعامة فقط وهو «منشور» مع حساب مؤجّر نشط واشتراك ساري.`

# Attachments

# Script

---
*Last Updated: 2026-10-15 11:00*
