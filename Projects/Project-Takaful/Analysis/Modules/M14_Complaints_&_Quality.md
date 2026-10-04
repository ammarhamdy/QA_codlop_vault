# M14 — Complaints & Quality

## Overview / Module Purpose

This module manages customer complaints, medical center quality monitoring, operational violations, follow-up actions, and resolution tracking.

---

## Scope

This module covers:

* Customer complaints.
* Complaint registration.
* Complaint categories.
* Complaint priorities.
* Complaint assignment.
* Complaint status.
* Complaint SLA.
* Complaint escalation.
* Complaint comments and communication.
* Complaint attachments.
* Complaint timeline.
* Complaint resolution.
* Medical center quality monitoring.
* Center visits and inspection reports.
* Quality violations.
* Quality notes.
* Discount compliance monitoring.
* Document verification.
* Photos and evidence.
* Corrective actions.
* Quality follow-up.
* Quality closure.
* Quality reports.

---

## Requirements

### Complaints Management

[[REQ-049_Complaints_Management]]

### Monitoring & Quality

[[REQ-050_Monitoring_Qualityv]]

---

## Open Questions

### 1. Complaint Sources

**How can a complaint be submitted?**

* [ ] Customer application only.
* [ ] Website only.
* [ ] Customer application and website.
* [ ] Admin/employee can also create complaints on behalf of customers.
* [ ] Other: __________

---

### 2. Complaint Categories

**How should complaint categories be managed?**

* [ ] Fixed predefined categories.
* [ ] Admin can add, edit, and deactivate categories.
* [ ] Categories are configurable by center type.
* [ ] Categories and subcategories are configurable by the admin.
* [ ] Other: __________

---

### 3. Complaint Priority

**How should complaint priority be determined?**

* [ ] Fixed priority selected by the customer.
* [ ] Employee determines the priority.
* [ ] Admin determines the priority.
* [ ] Priority is automatically determined based on complaint category.
* [ ] Priority can be manually changed by authorized employees.
* [ ] Other: __________

---

### 4. Complaint Assignment

**Who should be responsible for handling a complaint?**

* [ ] A specific employee.
* [ ] A specific department.
* [ ] Automatically assigned based on complaint category.
* [ ] Manager assigns the complaint to an employee.
* [ ] Combination of automatic assignment and manual reassignment.
* [ ] Other: __________

---

### 5. Complaint Status

**Which statuses should be available for complaints?**

* [ ] New, In Progress, Resolved, Closed.
* [ ] New, Assigned, In Progress, Pending Customer, Resolved, Closed.
* [ ] New, Assigned, In Progress, Escalated, Resolved, Rejected, Closed.
* [ ] Statuses are configurable by the admin.
* [ ] Other: __________

---

### 6. Complaint SLA

**How should complaint response and resolution deadlines be managed?**

* [ ] No SLA tracking.
* [ ] Fixed SLA for all complaints.
* [ ] Different SLA based on complaint priority.
* [ ] Different SLA based on complaint category and priority.
* [ ] Admin can configure response and resolution targets.
* [ ] Other: __________

---

### 7. Quality Monitoring

**How should medical center quality be monitored?**

* [ ] Employee inspection visits.
* [ ] Customer feedback and complaints.
* [ ] Document and contract verification.
* [ ] Combination of inspections, complaints, documents, and center performance.
* [ ] Other: __________

---

### 8. Quality Violations

**How should quality violations be handled?**

* [ ] Record the violation only.
* [ ] Record the violation and assign a corrective action.
* [ ] Record, assign corrective action, and set a deadline.
* [ ] Escalate violations based on severity.
* [ ] Admin can configure violation and escalation rules.
* [ ] Other: __________

---

### 9. Quality Evidence

**What evidence should employees be able to attach to quality records?**

* [ ] Notes only.
* [ ] Notes and photos.
* [ ] Notes, photos, and documents.
* [ ] Notes, photos, documents, and other approved attachments.
* [ ] Other: __________

---

### 10. Quality Closure

**When should a quality issue be considered closed?**

* [ ] Employee marks it as completed.
* [ ] Responsible manager approves the resolution.
* [ ] Corrective action is completed and verified.
* [ ] Corrective action is completed, verified, and approved by an authorized manager.
* [ ] Closure rules depend on the issue type or severity.
* [ ] Other: __________

---

## Sources

| Source Section | Description           |
| -------------- | --------------------- |
| Section 49     | Complaints Management |
| Section 50     | Monitoring & Quality  |
