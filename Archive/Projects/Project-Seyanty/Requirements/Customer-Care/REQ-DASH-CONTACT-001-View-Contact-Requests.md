---

requirement_id: REQ-DASH-CONTACT-001  
title: View Contact Us Requests  
priority: High  
status: Draft  
epic_link: Customer Care  
tags:

- requirement
    
- dashboard
    
- customer-care
    
- contact-us
    
- view
    

---

## Description

The system shall allow an authorized dashboard user to view Contact Us requests submitted through the public website.

The dashboard shall display the information associated with each Contact Us request and allow the user to access the details of an individual request.

## Acceptance Criteria

### AC-01 — Access Contact Us Requests

**GIVEN** an authorized dashboard user accesses the Customer Care module  
**WHEN** the user opens Contact Us requests  
**THEN** the system shall display the available Contact Us requests.

### AC-02 — Display Request Information

**GIVEN** Contact Us requests are available  
**WHEN** the user views the requests  
**THEN** the system shall display the relevant request information.

### AC-03 — View Request Details

**GIVEN** a Contact Us request exists  
**WHEN** the user selects the request  
**THEN** the system shall display its available details, including the submitted name, email, phone number, and message.

### AC-04 — Empty Request List

**GIVEN** no Contact Us requests exist  
**WHEN** the user accesses the Contact Us requests  
**THEN** the system shall display an appropriate empty-state message.