---

requirement_id: REQ-CONTACT-001  
title: Submit Contact Us Request  
priority: High  
status: Draft  
epic_link: Customer Care  
tags:

- requirement
    
- customer-care
    
- contact-us
    
- public-site
    
- submission
    

---

## Description

The system shall provide a Contact Us form on the public website that allows visitors to submit inquiries or messages to the platform.

The form shall collect the visitor's name, email address, phone number, and message.

When the submitted information is valid, the system shall create a Contact Us request that can be viewed by authorized dashboard users.

## Acceptance Criteria

### AC-01 — Display Contact Us Form

**GIVEN** a visitor accesses the Contact Us section of the website  
**WHEN** the page is loaded  
**THEN** the system shall display the Contact Us form.

### AC-02 — Contact Information Fields

**GIVEN** the Contact Us form is displayed  
**WHEN** the visitor views the form  
**THEN** the form shall provide fields for:

- Name
    
- Email
    
- Phone number
    
- Message
    

### AC-03 — Required Fields

**GIVEN** the visitor submits the Contact Us form  
**WHEN** one or more required fields are empty  
**THEN** the system shall reject the submission  
**AND** display appropriate validation messages.

### AC-04 — Email Validation

**GIVEN** the visitor enters an email address  
**WHEN** the email format is invalid  
**THEN** the system shall reject the submission  
**AND** display an appropriate validation message.

### AC-05 — Valid Contact Request

**GIVEN** the visitor provides valid contact information and message content  
**WHEN** the visitor submits the form  
**THEN** the system shall create a Contact Us request.

### AC-06 — Successful Submission

**GIVEN** the Contact Us request has been successfully created  
**WHEN** the submission is completed  
**THEN** the system shall provide the visitor with an appropriate success confirmation.

### AC-07 — Invalid Submission

**GIVEN** one or more submitted values are invalid  
**WHEN** the visitor submits the form  
**THEN** the system shall not create the Contact Us request  
**AND** display appropriate validation feedback.

### AC-08 — Request Availability

**GIVEN** a Contact Us request has been successfully submitted  
**WHEN** an authorized dashboard user accesses the Contact Us requests  
**THEN** the submitted request shall be available for viewing.