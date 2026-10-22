---
tc_id: TC-JOIN-030
title: Verify Application Acceptance Activates Lessor Role and Customer-Lessor Mode Switcher
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Application Final Decision | `Accepted` (`مقبول`, Final) |
| Welcome Banner Message | `«مبروك! أصبحت مؤجّرًا. اختر باقتك لنشر إعلاناتك»` |
| Mode Switcher Control | Toggle between Customer Mode (`وضع العميل`) and Lessor Mode (`وضع المؤجر`) |

# Preconditions
1. Join application `APP-2026-000504` is in `Inspection Complete` or `Under Review`.
2. Reviewer approves the application.

# Steps
1. As Reviewer, submit final decision = **Accept** on `APP-2026-000504`.
2. As the applicant, open or refresh the mobile application.
3. Observe on-screen congratulatory message.
4. Verify the appearance of the Mode Switcher in the user interface.
5. Tap the mode switcher to switch into Lessor Mode.

# Expected Result
1. Application status transitions to `Accepted` (final).
2. The user sees: `«مبروك! أصبحت مؤجّرًا. اختر باقتك لنشر إعلاناتك»`.
3. The Customer/Lessor Mode Switcher immediately appears in the app navigation/profile.
4. Switching to Lessor Mode reveals lessor management screens and prompts package selection (UF-42).

# Notes
- Requirement: UF-33 Main Flow Steps 1 to 3.

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
