---
tc_id: TC-DYN-BAN-SEC-036
title: "Verify Admin Panel Unique ID Validation (System Generated)"
priority: High
status: Draft
requirement_link: "REQ-DYN-BAN-SEC-002.3, REQ-DYN-BAN-SEC-004.2"
tags:
  - banner
  - admin-panel
  - validation
  - negative
---

## Description
This test case verifies that the system ensures unique `id`s for banner sections and prevents any attempt to create a banner section with a duplicate `id` (even if by API manipulation).

## Pre-Conditions
- User is logged into the Admin Panel with appropriate permissions.
- At least one banner section exists.

## Test Steps
1. Identify the `id` of an existing banner section (e.g., from network traffic or backend).
2. Attempt to create a new banner section with the exact same `id` as the existing one (e.g., via direct API call if Admin Panel UI prevents it).

## Expected Result
- The system prevents the creation of a new banner section with a duplicate `id`.
- An error message indicating the duplicate `id` is returned.
