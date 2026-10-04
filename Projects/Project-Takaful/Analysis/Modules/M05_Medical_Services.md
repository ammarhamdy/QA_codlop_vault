# M05 — Medical Services

## Overview / Module Purpose

This module manages medical services available through Takafol, including purchasing, booking, payment, usage, and service records.

---

## Scope

This module covers:

* Medical service management.
* Service details and conditions.
* Buying medical services.
* Booking services.
* Service payments.
* Purchase records.
* Booking records.
* Service validity.
* Service usage status.
* Service invoices and proof of purchase.
* Customer access to purchased and booked services.
* Center verification of purchased services.

---

## Requirements

### Buy Service

[[REQ-016_Buy_Service]]

### Book Service

[[REQ-017_Book_Service]]

### Purchased & Reserved Services

[[REQ-018_Purchased_Reserved_Services]]

---

## Open Questions

### 1. Service Availability

**Who can purchase or book a medical service?**

* [ ] All customers, including non-members.
* [ ] Active members only.
* [ ] Only customers who meet the service's configured eligibility rules.
* [ ] Different eligibility rules can be configured per service.
* [ ] Other: __________

---

### 2. Service Payment

**How should payment for a "Buy Service" service work?**

* [ ] Full payment is required before purchase.
* [ ] Partial payment is allowed.
* [ ] Payment method depends on the service.
* [ ] Admin can configure the required payment method and amount.
* [ ] Other: __________

---

### 3. Book Service Payment

**How should the booking fee be configured?**

* [ ] Fixed booking fee for all services.
* [ ] Different fixed fee per service.
* [ ] Percentage of the service price.
* [ ] Booking fee is configurable by the admin.
* [ ] Some services can be booked without a booking fee.
* [ ] Other: __________

---

### 4. Service Validity

**How should the validity period of purchased or booked services be defined?**

* [ ] Fixed validity period configured per service.
* [ ] Expiration date is specified for each service.
* [ ] Validity starts from the purchase/booking date.
* [ ] Validity starts from the first use.
* [ ] Admin can configure the validity method per service.
* [ ] Other: __________

---

### 5. Service Usage

**How should the center verify that a purchased or booked service is valid?**

* [ ] Customer provides the purchase/booking number.
* [ ] Center scans a QR code.
* [ ] Center verifies the service through the center system.
* [ ] Combination of purchase/booking number and QR code.
* [ ] Other: __________

---

### 6. Booking Process

**After booking a service, what should the customer do to use it?**

* [ ] Contact the center by phone.
* [ ] Contact the center through WhatsApp.
* [ ] Visit the center directly.
* [ ] Customer chooses how to contact or visit the center.
* [ ] Other: __________

---

### 7. Service Cancellation

**Should customers be able to cancel purchased or booked services?**

* [ ] No cancellation is allowed.
* [ ] Cancellation is allowed before the service is used.
* [ ] Cancellation is allowed within a configurable period.
* [ ] Cancellation rules are configured separately for each service.
* [ ] Other: __________

---

### 8. Refunds

**What should happen when an eligible purchased service is cancelled?**

* [ ] Full refund.
* [ ] Partial refund.
* [ ] No refund.
* [ ] Refund depends on the service's cancellation policy.
* [ ] Other: __________

---

## Sources

| Source Section | Description                |
| -------------- | -------------------------- |
| Section 15     | شراء خدمة                  |
| Section 16     | حجز خدمة                   |
| Section 17     | الخدمات المشتراة والمحجوزة |
