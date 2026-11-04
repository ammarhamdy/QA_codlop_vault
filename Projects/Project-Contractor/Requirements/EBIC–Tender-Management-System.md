# EBIC – Tender Management System

## 1. System Overview

EBIC is a tender management platform that connects individuals who need project-related services with professionals who can execute those projects.

The system allows Tender Owners to create and manage tenders, receive offers from professionals, review submitted offers, and accept one suitable offer.

Professionals can access the application without registration, browse available tenders, view project details, and submit offers.

Newly created tenders are published immediately and become available to professionals.

---

## 2. Actors

|Actor|Description|Authentication|
|---|---|---|
|Tender Owner|Creates and manages tenders, reviews received offers, and accepts an offer.|Mobile Number + 4-digit OTP|
|Professional|Browses available tenders and submits offers.|No Registration|
|System|Manages authentication, tenders, offers, expiration, and visibility.|System-controlled|

---

## 3. Business Rules

### BR-01: Tender Owner Authentication

- Tender Owners authenticate using their mobile phone numbers.
    
- The system sends a 4-digit OTP for verification.
    
- Successful verification grants access to Tender Owner features.
    

### BR-02: Professional Access

- Professionals can access the application without registration or login.
    
- Phone verification is not required.
    
- Professionals can browse tenders and submit offers directly.
    

### BR-03: Tender Creation

- Only authenticated Tender Owners can create tenders.
    
- Each tender must contain the required project information.
    
- Tenders can include images and additional attachments.
    
- Tender Owners define the tender expiration date.
    
- Newly created tenders are published immediately.
    

### BR-04: Tender Visibility

- Professionals can browse open and published tenders.
    
- Closed or expired tenders must not appear in the Professional tender listing.
    
- Tender details are accessible without authentication.
    
- Closed or expired tenders cannot receive new offers.
    

### BR-05: Tender Editing

- Tender Owners can edit their own tenders.
    
- Editing is allowed even after receiving offers.
    
- Editing is not allowed after an offer has been accepted.
    

### BR-06: Tender Closing

- Tender Owners can manually close their tenders.
    
- Closing a tender immediately prevents new offer submissions.
    
- Closed tenders are no longer visible in the Professional tender listing.
    

### BR-07: Tender Expiration

- Tenders automatically expire when their expiration dates are reached.
    
- Expired tenders are removed from the Professional tender listing.
    
- Expired tenders cannot receive new offers.
    

### BR-08: Offer Submission

- Professionals can submit offers without registration or phone verification.
    
- Each offer must be associated with an existing tender.
    
- An offer must include the proposed price, execution duration, and description.
    
- Professionals must provide their name and phone number.
    
- Professionals can provide a WhatsApp number.
    
- Offers can include supporting attachments.
    
- The same professional can submit multiple offers for the same tender.
    

### BR-09: Offer Modification

- Professionals cannot edit submitted offers.
    
- Professionals cannot withdraw submitted offers.
    

### BR-10: Offer Management

- Tender Owners can view all offers submitted against their tenders.
    
- Tender Owners can review professional information and offer details.
    
- A Tender Owner can accept only one offer per tender.
    
- Other offers remain listed and associated with the tender after an offer is accepted.
    

### BR-11: Offer Notifications

- The system does not notify Tender Owners when new offers are submitted.
    
- The system does not notify Professionals when their offers are accepted or rejected.
    

### BR-12: Tender Ownership

- Tender Owners can only manage tenders they have created.
    
- A Tender Owner cannot access or manage another owner's private tender information.
    

---

## 4. Functional Requirements

|ID|Requirement|Actor|
|---|---|---|
|FR-01|Authenticate using mobile number and OTP.|Tender Owner|
|FR-02|Browse available tenders.|Professional|
|FR-03|View tender details.|Professional|
|FR-04|Create and publish a new tender.|Tender Owner|
|FR-05|View and track created tenders.|Tender Owner|
|FR-06|View tender details.|Tender Owner|
|FR-07|Edit an existing tender.|Tender Owner|
|FR-08|Submit an offer against an available tender.|Professional|
|FR-09|View received offers.|Tender Owner|
|FR-10|View offer details.|Tender Owner|
|FR-11|Accept one offer for a tender.|Tender Owner|
|FR-12|Close an existing tender.|Tender Owner|
|FR-13|Automatically expire tenders based on expiration dates.|System|
|FR-14|Manage tender visibility based on its status.|System|

---

## 5. User Flows

### 5.1 Tender Owner Flows

|Flow ID|Flow Name|Actor|
|---|---|---|
|UF-01|Tender Owner Authentication|Tender Owner|
|UF-02|Create a Tender|Tender Owner|
|UF-03|View My Tenders|Tender Owner|
|UF-04|View Tender Details|Tender Owner|
|UF-05|Edit a Tender|Tender Owner|
|UF-06|View Received Offers|Tender Owner|
|UF-07|View Offer Details|Tender Owner|
|UF-08|Accept an Offer|Tender Owner|
|UF-09|Close a Tender|Tender Owner|

### 5.2 Professional Flows

|Flow ID|Flow Name|Actor|
|---|---|---|
|UF-10|Browse Available Tenders|Professional|
|UF-11|View Tender Details|Professional|
|UF-12|Submit a Tender Offer|Professional|

### 5.3 System Flows

|Flow ID|Flow Name|Actor|
|---|---|---|
|UF-13|Tender Automatic Expiration|System|
|UF-14|Tender Visibility Management|System|

---

## 6. Main Data Entities

### 6.1 User

- id
    
- mobile_number
    
- authentication_token
    

### 6.2 Tender

- id
    
- owner_id
    
- title
    
- description
    
- project_type
    
- city
    
- district
    
- latitude
    
- longitude
    
- project_area
    
- budget
    
- status
    
- end_date
    
- tender_image
    
- attachments
    
- created_at
    
- updated_at
    

### 6.3 Tender Offer

- id
    
- tender_id
    
- professional_name
    
- professional_phone
    
- professional_whatsapp
    
- professional_price
    
- duration
    
- description
    
- attachments
    
- status
    
- device_token
    
- created_at
    

---

## 7. Tender Lifecycle

|Status|Description|
|---|---|
|Open|Tender is published and accepting offers.|
|Closed|Tender is manually closed by its owner and cannot receive new offers.|
|Expired|Tender has reached its expiration date and cannot receive new offers.|
|Awarded|An offer has been accepted for the tender.|

### Lifecycle Transitions

- Created → Open
    
- Open → Closed
    
- Open → Expired
    
- Open → Awarded
    

---

## 8. Offer Lifecycle

|Status|Description|
|---|---|
|Pending|Offer has been submitted and is awaiting the owner's decision.|
|Accepted|Offer has been accepted by the Tender Owner.|

### Lifecycle Transitions

- Submitted → Pending
    
- Pending → Accepted
    

**Important:** Other offers remain listed under the tender after one offer is accepted. They are not automatically removed.

---

## 9. System Scope Summary

### Tender Owner

- Authenticate using mobile number and OTP.
    
- Create and publish tenders.
    
- View created tenders.
    
- View tender details.
    
- Edit tenders before offer acceptance.
    
- View received offers.
    
- Review offer details.
    
- Accept one offer per tender.
    
- Close tenders.
    

### Professional

- Access without registration.
    
- Browse available tenders.
    
- View tender details.
    
- Submit multiple offers, including multiple offers for the same tender.
    
- Provide personal and contact information.
    
- Upload supporting attachments.
    
- View available project information.
    

### System

- Handle Tender Owner authentication.
    
- Publish newly created tenders immediately.
    
- Manage tender availability and visibility.
    
- Automatically expire tenders.
    
- Prevent submissions against closed or expired tenders.
    
- Validate offer submissions.
    
- Enforce the single accepted offer rule.
    
- Preserve all submitted offers after acceptance.
    

---