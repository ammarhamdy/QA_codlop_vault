---
tc_id: TC-AUTH-PROFILE-045
title: Complete Customer Profile - Already Completed
priority: Medium
status: Draft
type: API
linked_requirement: Customer Profile - Complete Customer Profile
tags:
  - test-case
  - api
  - business-rule
  - customer-profile
run_result: Fail
---

# Test Data

| Field | Value         |
| ----- | ------------- |
| name  | محمود السالمي |

# Preconditions

- A customer has an already completed profile and a valid bearer token.

# Steps

1. Send POST `/auth/complete-customer-profile` with a valid name for an already completed customer.
2. Check the response and the customer profile.

# Expected Result

- The API handles the request according to the documented behavior for an already completed profile.
- No duplicate customer profile is created.
- The existing customer profile data remains consistent.

# Notes

- Required header: `X-APP-ACCESS-KEY`.
- For authenticated cases, use `Authorization: Bearer <valid access token>` unless the case tests that header.

# Attachments

# Script
