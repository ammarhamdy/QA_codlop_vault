---

requirement_id: REQ-DASH-EMP-003  
title: Activate Dashboard Employee  
priority: High  
status: Draft  
epic_link: Dashboard Employees Management  
tags:

- requirement
    
- dashboard
    
- employees
    
- activation
    

---

## Description

The system shall allow an authorized dashboard user to activate a deactivated employee account.

An active employee shall be considered eligible to perform the activities permitted to an employee by the system.

## Acceptance Criteria

### AC-01 — Activate Employee

**GIVEN** an existing employee is deactivated  
**WHEN** an authorized dashboard user activates the employee  
**THEN** the system shall change the employee's status to active.

### AC-02 — Verify Active Status

**GIVEN** the employee has been successfully activated  
**WHEN** the operation is completed  
**THEN** the system shall display the employee as active.

### AC-03 — Active Employee Access

**GIVEN** an employee account is active  
**WHEN** the employee attempts to access functionality available to active employees  
**THEN** the system shall allow access according to the employee's permissions.

### AC-04 — Already Active Employee

**GIVEN** an employee is already active  
**WHEN** an authorized dashboard user attempts to activate the employee  
**THEN** the system shall preserve the active status.