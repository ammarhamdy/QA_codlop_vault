---
tc_id: TC-JOIN-001
title: Verify Join as Lessor Introductory Screen Displays Benefits, Steps, and Required Documents
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Lessor’s-Journey/Start-Join-Application.md
tags:
  - test-case
---

# Test Data
| Field | Expected Content |
| ----- | ---------------- |
| Entry Point | "My Account" (`حسابي`) -> "Join as Lessor" (`انضم كمؤجر`) |
| Introductory Information | - Platform lessor benefits.<br>- Application lifecycle steps.<br>- Required documents for Individuals and Companies. |
| Action Choices | **Individual** (`فرد`) or **Company** (`منشأة / شركة`) |

# Preconditions
1. User is authenticated as a customer.
2. User account is not banned.
3. User has no open join application.

# Steps
1. Open the mobile application and navigate to "My Account" (`حسابي`).
2. Locate and tap **"Join as Lessor"** (`انضم كمؤجر`).
3. Verify the introductory landing screen.
4. Verify the presence of scope selection buttons (**Individual** and **Company**).

# Expected Result
1. The introductory screen clearly outlines:
   - Benefits of joining as a chalet lessor.
   - Transparent walkthrough of onboarding steps.
   - Checklist of required documents.
2. Two clear scope selection options are presented: **Individual** (`فرد`) and **Company** (`منشأة / شركة`).
3. Tapping either option opens the corresponding applicant form with admin-defined fields for that scope.

# Notes
- Requirement: UF-28 Main Flow Steps 1 to 2.

# Attachments

# Script

---
*Last Updated: 2026-10-22 10:55*
