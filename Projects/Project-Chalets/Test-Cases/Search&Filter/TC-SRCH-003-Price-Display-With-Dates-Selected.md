---
tc_id: TC-SRCH-003
title: Verify Calculated Total Price Display on Search Cards When Dates Are Selected
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/Home/Search&Filter.md
tags:
  - test-case
---

# Test Data
| Field                | Value                                                  |
| -------------------- | ------------------------------------------------------ |
| Selected Dates       | Check-in: `Thursday`, Check-out: `Saturday` (2 nights) |
| Chalet Nightly Rates | Thursday: `900 ر.س`, Friday: `1,000 ر.س`               |
| Expected Total Price | `1,900 ر.س لليلتين`                                    |

# Preconditions
1. User initiates a search with explicit dates selected (2 nights).
2. Chalet has daily rates defined for Thursday (900 SAR) and Friday (1,000 SAR).

# Steps
1. Perform a search selecting the 2-night date range.
2. Locate the chalet in the search results cards.
3. Inspect the price section on the card.

# Expected Result
1. The price section displays the calculated total sum for the chosen duration rather than a base starting rate.
2. The price is formatted as `1,900 ر.س لليلتين` (Total price in SAR with number of nights).
3. The currency is formatted in Saudi Riyals (`ر.س`) with Latin numerals per project standards.

# Notes
- Requirement: `السعر: مع تواريخ: المجموع المحسوب لها، مثل «1,900 ر.س لليلتين»`.

# Attachments

# Script

---
*Last Updated: 2026-10-14 15:55*
