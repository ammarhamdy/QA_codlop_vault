# M07 — Discounts & Offers

## Overview / Module Purpose

This module manages medical discounts and temporary offers provided by medical centers.

It covers how discounts and offers are created, configured, made available to customers, and controlled by the administration.

---

## Scope

This module covers:

* Discount types.
* Percentage discounts.
* Special prices.
* Services with special prices.
* Temporary discounts.
* Membership-based discounts.
* Discount conditions.
* Discount validity periods.
* Eligible customer categories.
* Included branches.
* Temporary offers.
* Offer targeting.
* Offer publishing locations.

---

## Requirements

### Discount Types

[[REQ-014_Discount_Types]]

### Direct Medical Discount

[[REQ-015_Direct_Medical_Discount]]

### Offers

[[REQ-030_Offers]]

---

## Open Questions

### 1. Discount Availability

**Who should be eligible to use a medical center discount?**

* [ ] Active members only.
* [ ] All customers.
* [ ] Eligibility depends on the membership level.
* [ ] Eligibility depends on the specific discount configuration.
* [ ] Other: \__________


### 2. Multiple Discounts

**Can a customer use more than one discount or offer on the same service?**

* [ ] No, only one discount or offer can be applied.
* [ ] Yes, discounts can be combined.
* [ ] Only selected discounts can be combined.
* [ ] The combination rules are configurable by the admin.
* [ ] Other: \__________


### 3. Discount Priority

**When multiple eligible discounts exist, which one should be applied?**

* [ ] Apply the highest discount automatically.
* [ ] Apply the discount with the lowest final price.
* [ ] Apply the discount with the highest configured priority.
* [ ] Allow the customer to choose.
* [ ] Other: \__________


### 4. Discount Validity

**How should discount validity be controlled?**

* [ ] Discounts are always active until manually disabled.
* [ ] Discounts must have a start and end date.
* [ ] Dates are optional and configured per discount.
* [ ] Admin can configure the validity rules.
* [ ] Other: \__________


### 5. Membership-Based Discounts

**How should membership levels affect discounts?**

* [ ] All membership levels receive the same discount.
* [ ] Each membership level can receive a different discount.
* [ ] Only selected membership levels are eligible.
* [ ] Discount eligibility is configured separately for each discount.
* [ ] Other: \__________


### 6. Offer Audience

**Who should be able to see a temporary offer?**

* [ ] All customers.
* [ ] Active members only.
* [ ] Selected membership levels.
* [ ] Selected cities or locations.
* [ ] A configured target audience.
* [ ] Other: \__________


### 7. Expired Offers

**What should happen when an offer expires?**

* [ ] Automatically hide the offer from customers.
* [ ] Automatically mark the offer as expired but keep it visible.
* [ ] Keep it visible for historical purposes only.
* [ ] Admin manually controls what happens after expiration.
* [ ] Other: \__________

---

## Sources

| Source Section | Description                |
| -------------- | -------------------------- |
| Section 13     | أنواع الخصومات لدى المراكز |
| Section 14     | الخصم الطبي المباشر        |
| Section 30     | العروض                     |
