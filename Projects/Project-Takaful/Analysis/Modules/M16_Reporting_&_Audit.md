# M16 — Reporting & Audit

## Overview / Module Purpose

This module manages operational, financial, customer, sales, marketing, and system reports, together with audit records for sensitive system activities.

---

## Scope

This module covers:

* Operational reports.
* Customer reports.
* Membership reports.
* Medical center reports.
* Branch reports.
* Medical service reports.
* Purchase reports.
* Booking reports.
* Payment reports.
* QR scan and visit reports.
* Sales reports.
* Marketing and campaign reports.
* Employee reports.
* Complaint and quality reports.
* Financial reports.
* Custom date ranges.
* Report filtering.
* Report export.
* Audit logs.
* Sensitive activity tracking.
* Change history.
* User activity records.

---

## Requirements

### Reporting

[[REQ-060_Reporting]]

### Report Export

[[REQ-061_Report_Export]]

### Audit Log

[[REQ-062_Audit_Log]]

---

## Open Questions

### 1. Report Access

**Who should be able to access reports?**

* [ ] Super Admin only.
* [ ] Admin users with reporting permission.
* [ ] Managers can access reports related to their responsibilities.
* [ ] Access is controlled entirely through RBAC permissions.
* [ ] Other: __________

---

### 2. Report Types

**Which report categories should be available?**

* [ ] Operational reports only.
* [ ] Customer, membership, center, and service reports.
* [ ] Operational, financial, sales, marketing, employee, complaint, and quality reports.
* [ ] All defined system data can be reported where authorized.
* [ ] Admin can configure available report types.
* [ ] Other: __________

---

### 3. Report Filtering

**Which filters should be available in reports?**

* [ ] Date range only.
* [ ] Date, city, and center.
* [ ] Date, city, center, branch, customer, employee, service, and status.
* [ ] Filters depend on the selected report.
* [ ] Admin can configure report filters.
* [ ] Other: __________

---

### 4. Report Period

**Which reporting periods should be supported?**

* [ ] Daily, weekly, and monthly.
* [ ] Daily, weekly, monthly, and yearly.
* [ ] Predefined periods and custom date ranges.
* [ ] Custom date range only.
* [ ] Other: __________

---

### 5. Report Export Formats

**Which formats should users be able to export reports in?**

* [ ] Excel only.
* [ ] CSV and Excel.
* [ ] PDF, CSV, and Excel.
* [ ] Export format depends on the selected report.
* [ ] Other: __________

---

### 6. Audit Log Coverage

**Which activities should be recorded in the audit log?**

* [ ] Login and logout activities.
* [ ] Changes to sensitive business data.
* [ ] Changes to users, permissions, centers, memberships, prices, payments, and campaigns.
* [ ] All sensitive create, update, delete, approve, and configuration operations.
* [ ] Audit coverage is configurable by the admin.
* [ ] Other: __________

---

### 7. Audit Log Information

**What information should each audit record contain?**

* [ ] User, action, and date/time.
* [ ] User, action, date/time, and affected entity.
* [ ] User, action, date/time, affected entity, old value, and new value.
* [ ] Full audit information including device/IP where legally and technically appropriate.
* [ ] Other: __________

---

### 8. Audit Log Retention

**How long should audit records be retained?**

* [ ] Fixed retention period.
* [ ] Retained for the same period as operational records.
* [ ] Retained according to legal and compliance requirements.
* [ ] Audit records are retained permanently unless legally required otherwise.
* [ ] Retention period is configurable by the admin.
* [ ] Other: __________

---

### 9. Audit Log Modification

**Who should be able to modify or delete audit records?**

* [ ] No user can modify or delete audit records.
* [ ] Only Super Admin can delete records.
* [ ] Authorized users can archive records but cannot modify their content.
* [ ] Retention and deletion are handled automatically according to policy.
* [ ] Other: __________

---

## Sources

| Source Section | Description   |
| -------------- | ------------- |
| Section 60     | Reporting     |
| Section 61     | Report Export |
| Section 62     | Audit Log     |
