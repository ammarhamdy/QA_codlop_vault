---
tc_id: TC-SUB-011
title: Verify Early Renewal Is Blocked Outside the Configured Renewal Window
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Subscription-Expires-and-Ads-Are-Hidden.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Current Subscription Days Remaining | 45 days |
| Configured Renewal Window | 30 days before end (Default) |

# Preconditions
1. Lessor has an active subscription with 45 days remaining before expiration.
2. System renewal window setting is set to default (30 days).

# Steps
1. In the lessor app, navigate to "My Subscription" (`اشتراكي`).
2. Inspect the availability and enabled state of the **"Renew"** button.
3. If an API request to initiate renewal is dispatched directly for this subscription.

# Expected Result
1. The "Renew" button is either hidden, disabled, or displays an indicator that renewal opens 30 days before expiry.
2. Direct API requests to initiate a renewal are blocked with a validation error (Error Flow E1).
3. Early renewal is restricted strictly to subscriptions within the allowed window.

# Notes
- Requirement: UF-59 Error Flow E1 ("More than the window remains -> Renewal is not available").

# Attachments

# Script

---
*Last Updated: 2026-10-21 15:50*
