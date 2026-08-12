---

requirement_id: REQ-DASH-EMP-004  
title: Deactivate Dashboard Employee  
priority: High  
status: Draft  
epic_link: Dashboard Employees Management  
tags:

- requirement
    
- dashboard
    
- employees
    
- deactivation
    

---

## Description

The system shall allow an authorized dashboard user to deactivate an active employee account.

A deactivated employee shall no longer be permitted to perform activities that require an active employee account.

Deactivation shall preserve the employee record and its associated information so that the employee can be activated again when required.

## Acceptance Criteria

### AC-01 — Deactivate Employee

**GIVEN** an existing employee is active  
**WHEN** an authorized dashboard user deactivates the employee  
**THEN** the system shall change the employee's status to inactive.

### AC-02 — Verify Inactive Status

**GIVEN** the employee has been successfully deactivated  
**WHEN** the operation is completed  
**THEN** the system shall display the employee as inactive.

### AC-03 — Prevent Inactive Employee Access

**GIVEN** an employee account is inactive  
**WHEN** the employee attempts to access functionality that requires an active employee account  
**THEN** the system shall deny the access.

### AC-04 — Preserve Employee Data

**GIVEN** an employee has been deactivated  
**WHEN** an authorized dashboard user views the employee record  
**THEN** the system shall preserve the employee's existing information.

### AC-05 — Reactivate Employee

**GIVEN** an employee is inactive  
**WHEN** an authorized dashboard user activates the employee  
**THEN** the system shall change the employee status to active.