# M04 — Medical Centers

## Overview / Module Purpose

This module manages medical centers and their branches, from creation and verification to services, discounts, contracts, locations, and operational information.

---

## Scope

This module covers:

* Medical center management.
* Branch management.
* Center verification.
* Center information.
* Center locations.
* Specialties.
* Services.
* Discounts.
* Center contracts.
* Center employees.
* Center activation and status.
* Center QR codes.
* Center visits and records.
* Center-related reports.

---

## Requirements

### Medical Center Page

[[REQ-013_Medical_Center_Page]]

### Center Management

[[REQ-043_Center_Management]]

### Center Contracts

[[REQ-044_Center_Contracts]]

---

## Open Questions

### 1. Center Verification

**Who should be responsible for approving and verifying a medical center?**

* [ ] Admin only.
* [ ] A designated center-management employee.
* [ ] Admin approval after employee review.
* [ ] Automatic approval after all required information is completed.
* [ ] Other: \__________


### 2. Center Publishing

**When should a medical center become visible to customers?**

* [ ] Immediately after creation.
* [ ] After admin approval.
* [ ] After verification and approval of all required information.
* [ ] After the center contract is active.
* [ ] Other: \__________


### 3. Branch Management

**How should branches be managed?**

* [ ] Each branch is managed independently.
* [ ] Branches are managed under one main medical center.
* [ ] Both: common center information with independent branch information.
* [ ] Other: \__________


### 4. Center Information

**Which information should be mandatory for a medical center to be published?**

* [ ] Name, contact information, city, location, and specialties.
* [ ] Name, branches, location, specialties, services, and discounts.
* [ ] Complete profile including legal, contact, operational, and service information.
* [ ] Mandatory fields are configurable by the admin.
* [ ] Different mandatory information depending on the center type.
* [ ] Other: \__________


### 5. Center Status

**Which statuses should be available for a medical center?**

* [ ] Draft, Active, Suspended, and Closed.
* [ ] Draft, Pending Approval, Active, Suspended, and Closed.
* [ ] Active and Inactive only. 👈
* [ ] Admin can configure the available statuses.
* [ ] Other: \__________


### 6. Contract Dependency

**Should an active contract be required before a center can become active?**

* [ ] Yes, an active contract is mandatory.
* [ ] No, the center can become active without a contract.
* [ ] Contract is mandatory only for specific center types.
* [ ] Contract status should only be displayed and not control activation.
* [ ] Other: \__________

---

## Sources

| Source Section | Description       |
| -------------- | ----------------- |
| Section 12     | صفحة المركز الطبي |
| Section 43     | إدارة المراكز     |
| Section 44     | عقود المراكز      |
