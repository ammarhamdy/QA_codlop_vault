---
tc_id: TC-JOIN-023
title: Verify Review and Submit Step Disables Submit and Lists Missing Items with Direct Links
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Incomplete Section | Missing Item | Direct Link Target |
| ------------------ | ------------ | ------------------ |
| Applicant Data | National ID Photo | Navigates to ID Upload Step |
| Places | Place Photos (< 3 photos) | Navigates to Place Photos Step |

# Preconditions
1. User has an active draft with incomplete mandatory items.
2. User taps **"Review and Submit"** (`مراجعة وإرسال الطلب`).

# Steps
1. Open the "Review and Submit" summary screen.
2. Check the enabled/disabled state of the **"Submit Application"** button.
3. Verify the checklist of missing items displayed on screen.
4. Tap the interactive link next to "National ID Photo missing".
5. Upload the ID photo and return to "Review and Submit".
6. Observe checklist update.

# Expected Result
1. The **Submit** button is strictly disabled as long as any mandatory item is incomplete.
2. The screen enumerates every missing requirement with a clickable direct link leading to that exact form step.
3. Completing missing items dynamically updates the checklist in real time.
4. Once all items are marked complete, the Submit button transitions to enabled.

# Notes
- Requirement: UF-30 Main Flow Steps 1 to 2 & Error Flow E3.

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
