# M11 — Notifications

## Overview / Module Purpose

This module manages customer notifications across the Takafol platform, including transactional, membership, promotional, proximity-based, and security notifications.

---

## Scope

This module covers:

* Customer notifications.
* Notification types.
* Push notifications.
* SMS notifications.
* WhatsApp notifications.
* Email notifications.
* Notification preferences.
* Transactional notifications.
* Membership notifications.
* Promotional notifications.
* Nearby medical center notifications.
* Notification scheduling.
* Notification delivery tracking.
* Notification history.
* Notification deep links.
* Notification targeting.
* Notification frequency controls.
* Essential notification rules.

---

## Requirements

### Notification Types

[[REQ-035_Notification_Types]]

### Customer Notification Settings

[[REQ-036_Customer_Notification_Settings]]

### Nearby Center Notifications

[[REQ-037_Nearby_Center_Notifications]]

---

## Open Questions

### 1. Notification Channels

**Which channels should be supported?**

* [ ] Push notifications only.
* [ ] Push notifications and SMS.
* [ ] Push, SMS, WhatsApp, and Email.
* [ ] Channel depends on the notification type.
* [ ] Channel is configurable by the admin.
* [ ] Other: __________

---

### 2. Transactional Notifications

**Which events should generate mandatory notifications?**

* [ ] Purchase and booking confirmations only.
* [ ] Purchase, booking, payment, and visit confirmations.
* [ ] All important transaction status changes.
* [ ] Admin can configure mandatory transactional notifications.
* [ ] Other: __________

---

### 3. Membership Notifications

**Which membership events should notify customers?**

* [ ] Upcoming expiration only.
* [ ] Renewal, upcoming expiration, and expiration.
* [ ] Subscription, renewal, upcoming expiration, and expiration.
* [ ] Notification timing is configurable by the admin.
* [ ] Other: __________

---

### 4. Promotional Notifications

**Who should receive promotional notifications?**

* [ ] All customers.
* [ ] Active members only.
* [ ] Selected membership levels.
* [ ] Selected cities, centers, or customer groups.
* [ ] Admin can define the target audience for each campaign.
* [ ] Other: __________

---

### 5. Customer Notification Settings

**Which notifications should customers be able to disable?**

* [ ] All promotional and marketing notifications.
* [ ] Marketing, offers, and nearby-center notifications.
* [ ] All non-essential notifications.
* [ ] Settings depend on notification category.
* [ ] Essential security and transaction notifications cannot be disabled.
* [ ] Other: __________

---

### 6. Nearby Center Notifications

**When should a nearby medical center notification be sent?**

* [ ] Whenever the customer enters the configured distance.
* [ ] Only once per center within a defined period.
* [ ] Only when a center has an active offer or discount.
* [ ] Based on configurable location and frequency rules.
* [ ] Other: __________

---

### 7. Notification Frequency

**How should repeated notifications be controlled?**

* [ ] No frequency limitation.
* [ ] Fixed global limit.
* [ ] Limit notifications per customer.
* [ ] Different limits per notification category.
* [ ] Admin can configure frequency rules.
* [ ] Other: __________

---

### 8. Notification Actions

**What should happen when a customer taps a notification?**

* [ ] Open the application home page.
* [ ] Open the related center, service, offer, or membership page.
* [ ] Open a specific screen using a deep link.
* [ ] Behavior is configurable for each notification.
* [ ] Other: __________

---

### 9. Delivery Tracking

**What notification delivery information should be recorded?**

* [ ] Sent status only.
* [ ] Sent, delivered, and failed status.
* [ ] Sent, delivered, failed, opened, and clicked status where supported.
* [ ] Tracking depends on the notification channel.
* [ ] Other: __________

---

## Sources

| Source Section | Description                    |
| -------------- | ------------------------------ |
| Section 34     | Notifications                  |
| Section 35     | Notification Types             |
| Section 36     | Customer Notification Settings |
| Section 37     | Nearby Center Notifications    |
