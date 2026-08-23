---

requirement_id: REQ-DASH-ADMIN-002  
title: Edit Dashboard Administrator  
priority: High  
status: Draft  
epic_link: Dashboard Admins Management  
tags:

- requirement
    
- dashboard
    
- admins
    
- edit
    

---

## Description

The system shall allow an authorized dashboard administrator to edit the information of an existing dashboard administrator.

The system shall allow modification of the administrator's editable profile information while preserving the administrator account and its existing identity.

The system shall validate all updated information before saving the changes.

## Acceptance Criteria

### AC-01 — Access Edit Administrator

**GIVEN** an authorized administrator is accessing the Admins Management module  
**WHEN** the administrator selects an existing administrator for editing  
**THEN** the system shall display the administrator's current information in an editable form.

### AC-02 — Update Administrator Name

**GIVEN** the administrator edits the target administrator's name  
**WHEN** the changes are submitted with valid data  
**THEN** the system shall save the updated name.

### AC-04 — Update Email

**GIVEN** the administrator edits the target administrator's email  
**WHEN** the changes are submitted  
**THEN** the system shall validate the email format  
**AND** prevent the update when the email is invalid or already associated with another administrator.

### AC-05 — Update Profile Photo

**GIVEN** the administrator provides a new profile photo  
**WHEN** the changes are submitted  
**THEN** the system shall validate the photo  
**AND** associate the new photo with the administrator account.

### AC-06 — Update Account Information

**GIVEN** the administrator modifies valid editable information  
**WHEN** the changes are submitted  
**THEN** the system shall update the administrator account  
**AND** display a successful update confirmation.

### AC-07 — Invalid Update

**GIVEN** one or more updated values are invalid  
**WHEN** the administrator submits the changes  
**THEN** the system shall reject the update  
**AND** preserve the previously saved valid information.

### AC-08 — Non-Existent Administrator

**GIVEN** the selected administrator account no longer exists  
**WHEN** the administrator attempts to edit it  
**THEN** the system shall reject the operation  
**AND** inform the user that the administrator account is unavailable.