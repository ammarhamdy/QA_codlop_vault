# M10 — Coupons

## Overview / Module Purpose

This module manages medical coupons and store codes that customers can use for approved medical stores, pharmacies, and medical services.

---

## Scope

This module covers:

* Coupon management.
* Store codes.
* Coupon types.
* Discount values.
* Coupon eligibility.
* Coupon validity.
* Coupon usage limits.
* Coupon redemption.
* Coupon usage tracking.
* Coupon status.
* Coupon conditions.
* Links to external medical stores or services.
* Customer access to available coupons.

---

## Requirements

### Coupons & Store Codes

[[REQ-033_Coupons_Store_Codes]]

---

## Open Questions

### 1. Coupon Eligibility

**Who should be eligible to use a coupon?**

* [ ] All customers.
* [ ] Active members only.
* [ ] Selected membership levels.
* [ ] Selected customers or customer groups.
* [ ] Eligibility is configurable for each coupon.
* [ ] Other: \__________


### 2. Coupon Type

**What types of coupons should the system support?**

* [ ] Percentage discount.
* [ ] Fixed amount discount.
* [ ] Promotional/store code.
* [ ] External store or service link with a code.
* [ ] Multiple coupon types configurable by the admin.
* [ ] Other: \__________


### 3. Coupon Usage Limit

**How many times can a coupon be used?**

* [ ] Unlimited usage.
* [ ] One use per customer.
* [ ] Limited total number of uses.
* [ ] Limited uses per customer and total campaign limit.
* [ ] Usage limit is configurable for each coupon.
* [ ] Other: \__________


### 4. Coupon Validity

**How should the coupon validity period be defined?**

* [ ] Fixed start and end dates.
* [ ] No expiration until manually disabled.
* [ ] Expiration period starts when the coupon is issued.
* [ ] Validity is configurable for each coupon.
* [ ] Other: \__________


### 5. Coupon Redemption

**How should a customer redeem a coupon?**

* [ ] Enter the coupon/store code manually.
* [ ] Open an external store or service link containing the code.
* [ ] Center/store employee verifies the code.
* [ ] QR code is used for redemption.
* [ ] Combination of code and QR verification.
* [ ] Other: \__________


### 6. Coupon Visibility

**Where should available coupons be displayed?**

* [ ] Dedicated coupons section only.
* [ ] Home page and coupons section.
* [ ] Medical center page and coupons section.
* [ ] Home, center page, coupons section, and Discover.
* [ ] Admin can control where each coupon appears.
* [ ] Other: \__________


### 7. Coupon Status

**Which statuses should a coupon have?**

* [ ] Active and Inactive.
* [ ] Draft, Active, Expired, Disabled.
* [ ] Draft, Pending Approval, Active, Expired, Disabled, Archived.
* [ ] Statuses are configurable by the admin.
* [ ] Other: \__________


### 8. Expired Coupons

**What should happen when a coupon expires?**

* [ ] Automatically become unavailable to customers.
* [ ] Remain visible with an "Expired" status.
* [ ] Move to historical records only.
* [ ] Admin can choose the behavior per coupon.
* [ ] Other: \__________


### 9. Coupon Usage Tracking

**What usage information should be recorded?**

* [ ] Customer and coupon only.
* [ ] Customer, coupon, date, and usage status.
* [ ] Customer, coupon, date, store/center, and redemption result.
* [ ] Full redemption history with audit information.
* [ ] Tracking level is configurable by the admin.
* [ ] Other: \__________

---

## Sources

| Source Section | Description           |
| -------------- | --------------------- |
| Section 33     | Coupons / Store Codes |
