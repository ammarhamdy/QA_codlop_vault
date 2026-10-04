---
requirement_id: REQ-TAKAFUL-MEM-004
title: "Sequential Membership Level Upgrade Based on Service Usage"
priority: High
status: Draft
epic_link: "Membership Management"
tags:
  - requirement
---

## Description
As a subscribed customer uses the application and benefits from actual platform services, membership upgrade conditions are fulfilled. The system shall process membership tier upgrades strictly in the defined sequential order: **Classic → فضية (Silver) → ذهبية (Gold) → ماسية (Diamond)**. Upgrades must not skip any intermediate tier.

## Acceptance Criteria

### AC-01 — Sequential Progression of Membership Tiers
* **GIVEN** a customer meets the upgrade conditions through actual service usage
* **WHEN** a membership upgrade is triggered
* **THEN** the upgrade shall progress strictly in the sequential order: **Classic → فضية → ذهبية → ماسية**.

### AC-02 — Prevention of Tier Skipping
* **GIVEN** an active member is upgraded
* **WHEN** transitioning to a higher membership level
* **THEN** the system shall not skip any intermediate tier in the sequence.

### AC-03 — Immediate Visibility of Upgraded Tier
* **GIVEN** a customer's membership tier is upgraded
* **WHEN** the customer views "بطاقتي" or uses app services
* **THEN** the system shall reflect the newly attained membership tier and its corresponding benefits.

---
*Last Updated: {{date}} {{time}}*
