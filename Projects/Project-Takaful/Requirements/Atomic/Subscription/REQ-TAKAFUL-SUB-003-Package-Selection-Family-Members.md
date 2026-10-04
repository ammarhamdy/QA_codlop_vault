---
requirement_id: REQ-TAKAFUL-SUB-003
title: "Subscription Package Selection and Family Members Configuration"
priority: High
status: Draft
epic_link: "Subscription Management"
tags:
  - requirement
---

## Description
During the subscription process, the customer can select their desired package type (Individual Package or Family Package). When selecting a Family Package, the customer is required to specify the number of family members within the maximum permitted limit and complete the required information for each family member before proceeding to payment.

## Acceptance Criteria

### AC-01 — Package Type Selection
* **GIVEN** the customer is on the subscription package selection step
* **WHEN** choosing a package
* **THEN** the system shall allow the customer to select either the Individual Package (الباقة الفردية) or Family Package (الباقة العائلية).

### AC-02 — Family Package Member Limit Validation
* **GIVEN** the customer selects the Family Package
* **WHEN** specifying the number of family members
* **THEN** the system shall enforce the maximum permitted member limit defined for the family package.

### AC-03 — Family Member Information Completion
* **GIVEN** the number of family members is specified for a Family Package
* **WHEN** proceeding through the subscription configuration
* **THEN** the system shall require the customer to enter and complete the required information for all added family members
* **AND** transition to the payment step upon successful completion.

---
*Last Updated: {{date}} {{time}}*
