# M17 — Admin & Configuration

## Overview / Module Purpose

This module manages the administrative control layer of Takafol, including system configuration, content management, notifications, operational settings, and administrative dashboards.

---

## Scope

This module covers:

* Admin panel.
* Admin dashboard.
* System configuration.
* Customer management.
* Membership management.
* Medical center management.
* Branch management.
* Medical service management.
* Discount management.
* Offer management.
* QR management.
* Coupon management.
* Employee management.
* Roles and permissions.
* Notification management.
* Content management.
* Ads and banners.
* Reels and promotional content.
* System settings.
* Configurable business rules.
* Administrative controls.
* Administrative activity monitoring.

---

## Requirements

### Admin Panel

[[REQ-041_Admin_Panel]]

### Admin Dashboard

[[REQ-042_Admin_Dashboard]]

### Notification Management

[[REQ-063_Notification_Management]]

### Content Management

[[REQ-064_Content_Management]]

---

## Open Questions

### 1. Admin Dashboard

**Which information should be displayed on the main admin dashboard?**

* [ ] Basic customer and membership statistics.
* [ ] Customers, memberships, centers, branches, and visits.
* [ ] Operational, financial, sales, marketing, and quality metrics.
* [ ] Fully configurable dashboard widgets and metrics.
* [ ] Other: __________

---

### 2. System Configuration

**Which settings should administrators be able to configure without code changes?**

* [ ] Basic application settings.
* [ ] Languages, notifications, content, and display settings.
* [ ] Business rules, membership levels, discounts, services, notifications, and content.
* [ ] All approved configurable business and operational settings.
* [ ] Other: __________

---

### 3. Business Rules

**How should configurable business rules be managed?**

* [ ] Fixed rules implemented in the system.
* [ ] Selected rules configurable by Super Admin.
* [ ] Rules configurable through dedicated admin screens.
* [ ] Rules configurable with effective dates and status.
* [ ] Other: __________

---

### 4. Content Management

**Which content should administrators be able to manage?**

* [ ] Banners and sliders only.
* [ ] Banners, sliders, FAQs, and static pages.
* [ ] Banners, sliders, FAQs, pages, articles, images, and Reels.
* [ ] All approved customer-facing content.
* [ ] Other: __________

---

### 5. Content Publishing

**Should content changes require approval before becoming visible to customers?**

* [ ] No, authorized administrators can publish directly.
* [ ] Yes, all content requires approval.
* [ ] Only selected content types require approval.
* [ ] Approval requirements depend on the administrator's role.
* [ ] Other: __________

---

### 6. Notification Management

**How should administrators create and send notifications?**

* [ ] Send immediately to all customers.
* [ ] Select customer groups and send immediately.
* [ ] Select audience, channel, and schedule.
* [ ] Configure audience, channel, schedule, content, deep link, and tracking.
* [ ] Other: __________

---

### 7. Administrative Access

**How should access to admin functions be controlled?**

* [ ] Predefined administrator roles.
* [ ] Individual permissions assigned to users.
* [ ] Custom roles with configurable permissions.
* [ ] Custom roles with permissions and organizational/center restrictions.
* [ ] Other: __________

---

### 8. Configuration Changes

**How should important configuration changes be handled?**

* [ ] Changes take effect immediately.
* [ ] Changes require confirmation before saving.
* [ ] Sensitive changes require approval.
* [ ] Sensitive changes require approval and are recorded in the audit log.
* [ ] Other: __________

---

### 9. Configuration History

**Should previous configuration values be retained?**

* [ ] No, only the current value is stored.
* [ ] History is stored for selected sensitive settings.
* [ ] All important configuration changes are recorded.
* [ ] Full configuration history with user, date/time, old value, and new value.
* [ ] Other: __________

---

## Sources

| Source Section | Description             |
| -------------- | ----------------------- |
| Section 41     | Admin Panel             |
| Section 42     | Admin Dashboard         |
| Section 63     | Notification Management |
| Section 64     | Content Management      |
