---

requirement_id: REQ-DASH-EMP-002  
title: Edit Dashboard Employee  
priority: High  
status: Draft  
epic_link: Dashboard Employees Management  
tags:

- requirement
    
- dashboard
    
- employees
    
- edit
    

---

## Description

The system shall allow an authorized dashboard user to edit an existing employee record.

The system shall allow the user to update the employee's editable information and shall validate the updated information before saving the changes.

## Acceptance Criteria

### AC-01 — Access Edit Employee

**GIVEN** an authorized dashboard user is accessing the Employees Management module  
**WHEN** the user selects an existing employee for editing  
**THEN** the system shall display the employee's current information in an editable form.

### AC-02 — Update Employee Information

**GIVEN** the employee edit form is displayed  
**WHEN** the user modifies the employee information with valid data  
**THEN** the system shall save the updated information.

### AC-03 — Update Name

**GIVEN** the user modifies the employee's name  
**WHEN** the changes are submitted with valid data  
**THEN** the system shall save the updated name.

### AC-04 — Update Phone

**GIVEN** the user modifies the employee's phone number  
**WHEN** the changes are submitted  
**THEN** the system shall validate and save the updated phone number when valid.

### AC-05 — Update Email

**GIVEN** the user modifies the employee's email address  
**WHEN** the changes are submitted  
**THEN** the system shall validate the email address  
**AND** reject the update when the email is invalid or conflicts with another employee account.

### AC-06 — Update Job Title

**GIVEN** the user modifies the employee's job title  
**WHEN** the changes are submitted with valid data  
**THEN** the system shall save the updated job title.

### AC-07 — Update Overview

**GIVEN** the user modifies the employee's overview  
**WHEN** the changes are submitted with valid data  
**THEN** the system shall save the updated overview.

### AC-08 — Update Profile Photo

**GIVEN** the user provides a new profile photo  
**WHEN** the changes are submitted  
**THEN** the system shall validate the photo  
**AND** update the employee's profile photo when valid.

### AC-09 — Invalid Update

**GIVEN** one or more updated values are invalid  
**WHEN** the user submits the changes  
**THEN** the system shall reject the update  
**AND** preserve the previously saved employee information.

### AC-10 — Successful Update

**GIVEN** all submitted employee information is valid  
**WHEN** the user saves the changes  
**THEN** the system shall update the employee record  
**AND** display a successful update confirmation.