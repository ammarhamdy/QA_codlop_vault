# M06 — Memberships

## Overview / Module Purpose

This module manages customer memberships, membership levels, subscriptions, renewals, auto-renewal, gifting, and the customer membership card.

---

## Scope

This module covers:

* Membership plans.
* Membership levels.
* Membership pricing.
* Membership duration.
* Membership benefits.
* Membership activation.
* Membership renewal.
* Auto-renewal.
* Upgrade and downgrade rules.
* Membership status.
* Membership history.
* Membership gifting.
* Customer membership card.

---

## Requirements

### Memberships

[[REQ-025_Memberships]]

### Membership Level Management

[[REQ-026_Membership_Level_Management]]

### Membership Renewal

[[REQ-027_Membership_Renewal]]

### Auto Renewal

[[REQ-028_Auto_Renewal]]

### My Card

[[REQ-029_My_Card]]

### Membership Gifting

[[REQ-038_Membership_Gifting]]

---

## Open Questions

### 1. Membership Levels

**Which membership levels should be available at launch?**

* [ ] ==Basic==, Silver, Gold, and Diamond. 👈
* [ ] Basic, Silver, and Gold.
* [ ] Basic and Premium only.
* [ ] Admin can create and manage membership levels.
* [ ] Other: \__________


### 2. Membership Duration

**What should be the standard membership duration?**

* [ ] One year.
* [ ] Different duration can be configured per membership level.
* [ ] Different duration can be configured per subscription.
* [ ] Admin can configure the available durations.
* [ ] Other: \__________


### 3. Membership Status

**Which membership statuses should be available?**

* [ ] Pending, Active, Expired, and Cancelled.
* [ ] Pending, Active, Suspended, Expired, and Cancelled.
* [ ] Active and Expired only.
* [ ] Admin can configure membership statuses.
* [ ] Other: \__________


### 4. Level Upgrade & Downgrade

**How should membership level changes work?**

* [ ] Customers can only upgrade.
* [ ] Customers can upgrade or downgrade according to configured rules.
* [ ] Level changes happen automatically based on usage.
* [ ] Admin manually approves level changes.
* [ ] Different rules can be configured per membership level.
* [ ] Other: \__________


### 5. Renewal

**When should customers be allowed to renew their membership?**

* [ ] Only after the membership expires.
* [ ] Before expiration only.
* [ ] Both before and after expiration.
* [ ] Renewal period is configurable by the admin.
* [ ] Other: \__________


### 6. Auto-Renewal

**How should auto-renewal work?**

* [ ] Enabled by default. 👈
* [ ] Disabled by default and customer must enable it.
* [ ] Customer chooses during subscription.
* [ ] Auto-renewal is available only for selected membership levels.
* [ ] Admin can configure the auto-renewal policy.
* [ ] Other: \__________


### 7. Membership Gifting

**Who can receive a gifted membership?**

* [ ] Existing customers only.
* [ ] New customers only.
* [ ] Both existing and new customers.
* [ ] Eligibility depends on the membership type.
* [ ] Other: \__________


### 8. Membership Card

**What should the customer membership card contain?**

* [ ] Customer name, membership level, membership number, QR code, start date, and expiry date.
* [ ] The above information plus membership benefits.
* [ ] Complete membership details defined by the admin.
* [ ] Card information is fixed and cannot be configured.
* [ ] Other: \__________

### 20. Membership Levels Naming and Management

**Are the names of the four membership levels fixed, or should they be completely manageable from the control panel?**

* [ ]  Fixed values (Basic, Silver, Gold, Diamond) that cannot be changed.
* [ ]  Fully dynamic and manageable (names can be added, edited, or deleted from the admin panel).
* [ ]  Partially dynamic (default names exist, but admins can modify them).
* [ ]  Other: \__________

### 21. Annual Membership Duration and Calculation

**How should the exact duration (start and end dates) of the annual membership be calculated?**

* [ ]  Exactly 365 days from the precise date of purchase/activation.
* [ ]  Fixed calendar year (e.g., ends on December 31st regardless of purchase date).
* [ ]  Configurable duration entirely managed by the admin per membership level.
* [ ]  Other: \__________

### 22. Membership Level Pricing

**How will the prices for the different membership levels be defined?**

* [ ]  Fixed prices hard-coded into the system. 👈
* [ ]  Dynamic prices fully manageable from the admin control panel.
* [ ]  Variable pricing dynamically based on user segments or promotional campaigns.
* [ ]  Other: \__________

### 23. Membership Level Benefits

**How are the specific benefits for each membership level defined and managed?**

* [ ]  Fixed, pre-defined benefits hard-coded into the system for each level.
* [ ]  Dynamic benefits fully manageable and assignable via the admin control panel.
* [ ]  Hybrid (core fixed benefits, with additional dynamic perks managed by admins).
* [ ]  Other: \__________

### 24. Membership Transition Rules (Upgrades/Downgrades)

**What are the rules and mechanisms for transitioning between membership levels?**

* [ ]  User-initiated only (the user must manually purchase an upgrade/downgrade).
* [ ]  Automatic system transition based on predefined usage metrics or loyalty rules.
* [ ]  Admin-initiated only (manual level change by administrators from the control panel).
* [ ]  A combination of user-initiated purchases and automatic policy-based transitions.
* [ ]  Other: \__________


### 25. Membership Level Change Authority

**Who is responsible for changing or updating a user's membership level: the system automatically, the administration manually, or both?**

* [ ]  Automatically by the system only (based on predefined rules or usage metrics).
* [ ]  Manually by the administration only.
* [ ]  Both (the system applies automatic rules, and the administration can intervene manually).
* [ ]  Other: \__________

---

## Sources

| Source Section | Description           |
| -------------- | --------------------- |
| Section 25     | العضويات              |
| Section 26     | إدارة مستويات العضوية |
| Section 27     | تجديد العضوية         |
| Section 28     | التجديد التلقائي      |
| Section 29     | بطاقتي                |
| Section 38     | إهداء العضوية         |
