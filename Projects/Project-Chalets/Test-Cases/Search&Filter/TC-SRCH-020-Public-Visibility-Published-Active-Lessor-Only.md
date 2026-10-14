---
tc_id: TC-SRCH-020
title: Verify Public Visibility Requires Published Ad Active Lessor and Valid Subscription
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
| Listing 1 (Fully Compliant) | Status: `منشور`, Lessor Account: `نشط`, Subscription: `ساري` |
| Listing 2 (Draft / Unpublished) | Status: `مسودة`, Lessor Account: `نشط`, Subscription: `ساري` |
| Listing 3 (Suspended Lessor) | Status: `منشور`, Lessor Account: `موقوف`, Subscription: `ساري` |
| Listing 4 (Expired Subscription) | Status: `منشور`, Lessor Account: `نشط`, Subscription: `منتهي` |
| Propagation Window | Within 5 minutes of ad update |

# Preconditions
1. Four test listings with the configurations above exist in the database under the same city.
2. User is searching as a member of the public (unauthenticated visitor or customer).

# Steps
1. Perform a search encompassing the target city.
2. Review the resulting listings.
3. Verify the presence of Listing 1.
4. Verify whether Listings 2, 3, or 4 appear in the public search results.
5. In the backend, update Listing 1's title or details and observe the elapsed time until the change reflects in public search results.

# Expected Result
1. Only Listing 1 is visible in public search results.
2. Listing 2 (Unpublished/Draft), Listing 3 (Suspended lessor), and Listing 4 (Expired subscription) are strictly hidden from public view.
3. Newly published updates reflect in search results within 5 minutes.

# Notes
- Requirement: `الإعلان يظهر للعامة فقط وهو «منشور» مع حساب مؤجّر نشط واشتراك ساري؛ التحديث يظهر للعامة خلال 5 دقائق`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:55*
