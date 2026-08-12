---

requirement_id: REQ-DASH-ADMIN-004  
title: Deactivate Dashboard Administrator  
priority: High  
status: Draft  
epic_link: Dashboard Admins Management  
tags:

- requirement
    
- dashboard
    
- admins
    
- deactivation
    

---

## Description

The system shall allow an authorized dashboard administrator to deactivate an active dashboard administrator account.

A deactivated administrator shall no longer be permitted to authenticate and access the dashboard.

Deactivation shall preserve the administrator account and its associated information so that the account can be reactivated when required.

## Acceptance Criteria

### AC-01 — Deactivate Administrator

**GIVEN** an existing administrator account is active  
**WHEN** an authorized administrator deactivates the account  
**THEN** the system shall change the account status to inactive.

### AC-02 — Deactivation Confirmation

**GIVEN** the administrator account has been successfully deactivated  
**WHEN** the operation is completed  
**THEN** the system shall display the updated inactive status.

### AC-03 — Login After Deactivation

**GIVEN** an administrator account is inactive  
**WHEN** the administrator attempts to log in  
**THEN** the system shall deny authentication  
**AND** prevent access to the dashboard.

### AC-04 — Preserve Administrator Data

**GIVEN** an administrator account has been deactivated  
**WHEN** an authorized administrator views the account  
**THEN** the system shall preserve the administrator's existing information.

### AC-05 — Reactivation

**GIVEN** an administrator account has been deactivated  
**WHEN** an authorized administrator activates the account  
**THEN** the system shall restore the account to an active status.