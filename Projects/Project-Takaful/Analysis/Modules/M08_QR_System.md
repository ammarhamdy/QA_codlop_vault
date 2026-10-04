# M08 — QR System

## Overview / Module Purpose

This module manages the complete QR system used to identify medical centers, verify membership eligibility, validate location requirements, and record confirmed visits.

---

## Scope

This module covers:

* Medical center QR codes.
* Unique QR identifiers.
* QR generation and management.
* QR activation and deactivation.
* QR reissue.
* QR scanning inside the application.
* QR scanning using the phone camera.
* Active membership QR flow.
* Expired membership QR flow.
* Non-member QR flow.
* Location verification.
* Confirmed visit recording.
* QR scan history.
* QR security.
* Abuse prevention.
* Rate limiting.
* Suspicious activity logging.
* QR audit records.
* Universal Links.
* Deep Links.
* App Links.

---

## Requirements

### Center QR

[[REQ-019_QR_Center]]

### QR — Active Membership

[[REQ-020_QR_Active_Membership]]

### QR — Expired Membership

[[REQ-021_QR_Expired_Membership]]

### QR — Non-Member

[[REQ-022_QR_Non_Member]]

### External QR

[[REQ-023_External_QR]]

### QR Security

[[REQ-024_QR_Security]]

---

## Open Questions

### 1. QR Assignment

**How should QR codes be assigned to medical centers and branches?**

* [ ] One QR code for each medical center.
* [ ] One QR code for each branch.
* [ ] Both center-level and branch-level QR codes.
* [ ] QR assignment depends on the center configuration.
* [ ] Other: __________


### 2. QR Validity

**How long should a generated QR code remain valid?**

* [ ] QR remains valid until manually disabled.
* [ ] QR remains valid until replaced or reissued.
* [ ] QR has a configurable expiration period.
* [ ] QR validity is controlled separately for each center or branch.
* [ ] Other: __________


### 3. Location Verification

**When should customer location verification be required during QR usage?**

* [ ] Always for active membership QR usage.
* [ ] Only for selected centers or branches.
* [ ] Only for direct medical discount usage.
* [ ] Based on configurable rules managed by the admin.
* [ ] Other: __________


### 4. Allowed Distance

**What distance should be considered valid between the customer and the medical center during QR verification?**

* [ ] A fixed distance for all centers.
* [ ] A configurable distance set globally by the admin.
* [ ] A configurable distance for each center or branch.
* [ ] Different distance rules based on center type.
* [ ] Other: __________


### 5. Repeated QR Usage

**How should repeated QR scans be handled?**

* [ ] Allow unlimited scans but record all attempts.
* [ ] Allow one confirmed visit per defined period.
* [ ] Apply configurable limits per customer and center.
* [ ] Block suspicious repeated scans automatically.
* [ ] Other: __________


### 6. Disabled QR

**What should happen when a customer scans a disabled QR code?**

* [ ] Show a message that the QR code is inactive.
* [ ] Show the center page without allowing discount verification.
* [ ] Redirect the customer to contact support.
* [ ] Show a configurable response defined by the admin.
* [ ] Other: __________


### 7. Expired Membership QR Flow

**After a customer renews an expired membership through the QR flow, what should happen?**

* [ ] Automatically return to the QR verification flow.
* [ ] Require the customer to scan the QR again.
* [ ] Return to the medical center page.
* [ ] Admin-configured behavior.
* [ ] Other: __________


### 8. External QR Without App

**What should happen when a non-app user scans a center QR code?**

* [ ] Open a web page showing center information and app download links.
* [ ] Redirect directly to the app store.
* [ ] Open the center page on the website with subscription options.
* [ ] Show different pages depending on the user's membership status when identifiable.
* [ ] Other: __________

---

## Sources

| Source Section | Description                          |
| -------------- | ------------------------------------ |
| Section 18     | نظام QR                              |
| Section 19     | QR من داخل التطبيق – العضوية السارية |
| Section 20     | QR – العضوية المنتهية                |
| Section 21     | QR – غير المشترك                     |
| Section 22     | QR من خارج التطبيق                   |
| Section 23     | حماية QR                             |
