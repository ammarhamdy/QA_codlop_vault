# M15 — Finance & Payments

## Overview / Module Purpose

This module manages the financial and payment lifecycle of Takafol, including payment methods, transactions, refunds, invoices, financial records, and settlement information.

---

## Scope

This module covers:

* Financial transaction management.
* Payment methods.
* Payment gateway integration.
* Membership payments.
* Medical service payments.
* Booking fee payments.
* Payment status.
* Payment lifecycle.
* Payment callbacks and webhooks.
* Duplicate payment prevention.
* Refunds.
* Partial refunds where supported.
* Invoices.
* Payment documents.
* Center financial shares.
* Gateway fees.
* Discounts.
* Commissions where applicable.
* Takafol revenue.
* Net transaction value.
* Settlement status.
* Financial reconciliation.

---

## Requirements

### Operational Finance

[[REQ-056_Operational_Finance]]

### Payment Methods

[[REQ-057_Payment_Methods]]

### Payment Lifecycle

[[REQ-058_Payment_Lifecycle]]

### Invoices & Documents

[[REQ-059_Invoices_Documents]]

---

## Open Questions

### 1. Payment Gateway

**Which payment gateway should be used?**

* [ ] Client-selected payment gateway.
* [ ] One approved payment gateway selected during technical planning.
* [ ] Multiple payment gateways.
* [ ] Gateway selection depends on payment type or country.
* [ ] Other: __________

---

### 2. Payment Methods

**Which payment methods should customers be able to use?**

* [ ] Mada.
* [ ] Visa and Mastercard.
* [ ] Apple Pay and Google Pay where supported.
* [ ] Mada, Visa, Mastercard, Apple Pay, Google Pay, and other approved methods.
* [ ] Payment methods depend on the selected gateway.
* [ ] Other: __________

---

### 3. Payment Status

**Which payment states should the system support?**

* [ ] Pending, Successful, Failed.
* [ ] Initiated, Pending, Successful, Failed, Cancelled.
* [ ] Initiated, Pending, Successful, Failed, Cancelled, Refunded.
* [ ] Partial Refund should also be supported.
* [ ] Statuses depend on the payment gateway.
* [ ] Other: __________

---

### 4. Payment Failure

**What should happen when a payment fails?**

* [ ] Show a failure message and allow the customer to retry.
* [ ] Keep the transaction as failed and create a new payment attempt.
* [ ] Allow retry using the same transaction.
* [ ] Behavior depends on the payment gateway.
* [ ] Other: __________

---

### 5. Duplicate Payments

**How should duplicate payment attempts be prevented?**

* [ ] Prevent duplicate requests using transaction identifiers.
* [ ] Prevent duplicate requests using idempotency controls.
* [ ] Both request-level and transaction-level duplicate prevention.
* [ ] Duplicate detection depends on the payment gateway.
* [ ] Other: __________

---

### 6. Refunds

**When should a customer be eligible for a refund?**

* [ ] Refunds are not supported.
* [ ] Refunds are allowed for cancelled eligible transactions.
* [ ] Refunds depend on the service or membership cancellation policy.
* [ ] Admin can approve refunds according to configured rules.
* [ ] Other: __________

---

### 7. Refund Processing

**How should refunds be processed?**

* [ ] Full refund only.
* [ ] Full and partial refunds.
* [ ] Refund amount depends on the cancellation policy.
* [ ] Authorized employees can manually process refunds.
* [ ] Combination of automatic and manual refunds.
* [ ] Other: __________

---

### 8. Financial Fees

**Which financial components should be recorded for each transaction?**

* [ ] Transaction amount only.
* [ ] Transaction amount and payment gateway fee.
* [ ] Transaction amount, gateway fee, discount, commission, and center share.
* [ ] Full financial breakdown including Takafol revenue and net amount.
* [ ] Other: __________

---

### 9. Settlement

**How should center settlement information be managed?**

* [ ] Settlement status only.
* [ ] Settlement amount and status.
* [ ] Settlement amount, status, date, and transaction references.
* [ ] Full settlement and reconciliation records.
* [ ] Other: __________

---

### 10. Invoice Availability

**When should an invoice or payment document be generated?**

* [ ] After successful payment only.
* [ ] After successful payment and refund transactions.
* [ ] For every completed financial transaction.
* [ ] Invoice generation depends on transaction type and accounting requirements.
* [ ] Other: __________

---

## Sources

| Source Section | Description          |
| -------------- | -------------------- |
| Section 56     | Operational Finance  |
| Section 57     | Payment Methods      |
| Section 58     | Payment Lifecycle    |
| Section 59     | Invoices & Documents |
