# M13 — Operations & Workforce

## Overview / Module Purpose

This module manages the operational workforce responsible for managing medical centers, contracts, follow-ups, tasks, attendance, and employee performance.

---

## Scope

This module covers:

* Employee management.
* Employee roles.
* Role-based responsibilities.
* Employee access.
* Center employees.
* Employee attendance.
* Login and logout records.
* Employee location tracking where applicable.
* Task assignment.
* Task status.
* Task deadlines.
* Center-related tasks.
* Contract renewal follow-ups.
* Customer complaint follow-ups.
* Quality follow-ups.
* Employee performance.
* Employee activity reports.
* Task notifications.

---

## Requirements

### Employees & Roles

[[REQ-045_Employees_Roles]]

### RBAC & Permissions

[[REQ-046_RBAC_Permissions]]

### Employee Attendance & Performance

[[REQ-047_Employee_Attendance_Performance]]

### Center Tasks

[[REQ-048_Center_Tasks]]

---

## Open Questions

### 1. Employee Roles

**Who should be able to create and manage employee roles?**

* [ ] Super Admin only.
* [ ] Super Admin and General Manager.
* [ ] Authorized administrators with permission.
* [ ] Managers can create custom roles within their permitted scope.
* [ ] Other: __________

---

### 2. Employee Scope

**How should an employee's access to medical centers be controlled?**

* [ ] Employees can access all centers.
* [ ] Employees are assigned to specific centers.
* [ ] Employees are assigned to cities or regions.
* [ ] Access is controlled through configurable roles and assignments.
* [ ] Other: __________

---

### 3. Employee Permissions

**How should employee permissions be managed?**

* [ ] Fixed permissions based on predefined roles.
* [ ] Admin can enable or disable individual permissions.
* [ ] Custom roles with configurable permissions.
* [ ] Custom roles with permissions and center/region restrictions.
* [ ] Other: __________

---

### 4. Attendance Tracking

**How should employee attendance be recorded?**

* [ ] Login and logout times only.
* [ ] Login, logout, and working hours.
* [ ] Login, logout, location, and working hours.
* [ ] Attendance method depends on the employee role.
* [ ] Other: __________

---

### 5. Employee Location

**When should employee location be recorded?**

* [ ] Never.
* [ ] Only during attendance check-in/check-out.
* [ ] During assigned field tasks.
* [ ] During attendance and field activities where required.
* [ ] Location tracking is configurable by role.
* [ ] Other: __________

---

### 6. Task Assignment

**Who should be able to assign tasks to employees?**

* [ ] Super Admin only.
* [ ] Managers only.
* [ ] Managers and authorized employees.
* [ ] Any employee with task-management permission.
* [ ] Other: __________

---

### 7. Task Status

**Which statuses should be available for employee tasks?**

* [ ] Pending, In Progress, Completed.
* [ ] New, Assigned, In Progress, Completed.
* [ ] New, Assigned, In Progress, Blocked, Completed, Cancelled.
* [ ] Statuses are configurable by the admin.
* [ ] Other: __________

---

### 8. Task Deadlines

**How should task deadlines be handled?**

* [ ] Tasks have no deadline.
* [ ] Optional deadline per task.
* [ ] Mandatory deadline for selected task types.
* [ ] Deadline depends on the task priority or type.
* [ ] Admin can configure deadline rules.
* [ ] Other: __________

---

### 9. Performance Measurement

**How should employee performance be measured?**

* [ ] Completed tasks only.
* [ ] Completed tasks and completion time.
* [ ] Tasks, deadlines, attendance, and activity.
* [ ] Configurable performance indicators per employee role.
* [ ] Other: __________

---

### 10. Task Notifications

**When should employees receive task notifications?**

* [ ] When a task is assigned.
* [ ] When a task is assigned or updated.
* [ ] Before the task deadline.
* [ ] When assigned, updated, approaching deadline, or overdue.
* [ ] Notification rules are configurable by the admin.
* [ ] Other: __________

---

## Sources

| Source Section | Description                       |
| -------------- | --------------------------------- |
| Section 45     | Employees & Roles                 |
| Section 46     | RBAC / Permissions                |
| Section 47     | Employee Attendance & Performance |
| Section 48     | Center Tasks                      |
