# ACT-01 — Customer

## Actor Definition

|Property|Value|
|:--|:--|
|**Actor ID**|ACT-01|
|**Actor Name**|Customer|
|**Actor Type**|External User|
|**System Access**|Customer Mobile App / Website|
|**Description**|A registered Takafol user who uses the platform to discover medical centers and services, manage membership, purchase or book services, and use available benefits.|

---

## Properties

### Identity Data

- **Mobile Number** * (required any way)

- **Notional ID** * (required only if have a membership)

- **Full Name** * (required only if have a membership)

- **Email Address**
        
- **T&C/Privacy Consent Status**
    
- **Account Status**
    

[[REQ-006_Authentication_Registration]]

### Membership Data

- **Membership Number**
    
- **Level/Tier**
    
- **Status (Active/Expired)**
    
- **Expiry Date**
    
- **Auto-Renewal Preference**
    
- **Membership History**
    

[[REQ-025_Memberships]]

### Location Preferences

- **Selected City**
    
- **District**
    
- **Geolocation Coordinates (when permitted)**
    

[[REQ-007_City_Location]]

### Behavioral Data

- **Favorites List**
    

[[REQ-032_Favorites]]

- **Search History (last 20 operations stored locally and on the server)**
    

[[REQ-010_Search]]

### Transactional Data

- **Purchased & Reserved Services**
    
- **Invoices**
    

[[REQ-059_Invoices_Documents]]

- **Marketing Attribution Source (UTM/Referral)**
    

[[REQ-039_Sharing_Referral]]

---

## Responsibilities

- Manage their account, identity details, and search history.
    

[[REQ-010_Search]]

- Browse medical centers, services, and filter available content.
    

[[REQ-011_Filters]]

- Perform all actions normally without location permission; only functionality directly related to location is stopped until permission is granted.
    

[[REQ-007_City_Location]]

- Manage their membership, including upgrades, renewals, and auto-renewal settings.
    

[[REQ-027_Membership_Renewal]]

- Utilize Direct Medical Discounts at centers.
    

[[REQ-015_Direct_Medical_Discount]]

- Purchase eligible medical services (full payment).
    

[[REQ-016_Buy_Service]]

- Book eligible medical services (fee payment only).
    

[[REQ-017_Book_Service]]

- Use QR verification at medical centers.
    

[[REQ-020_QR_Active_Membership]]

- View purchased/booked services and download PDF invoices.
    

[[REQ-059_Invoices_Documents]]

- Configure contextual notification preferences (offers, proximity, renewals, etc.).
    

[[REQ-036_Customer_Notification_Settings]]

- Use available coupons and store codes.
    

[[REQ-033_Coupons_Store_Codes]]

- Submit and track complaints where supported.
    

[[REQ-049_Complaints_Management]]

- Share centers, offers, and gift memberships.
    

[[REQ-039_Sharing_Referral]]

[[REQ-038_Membership_Gifting]]

---

## Actions

### Account & Authentication

- Register, Login, and manage session duration.
    

[[REQ-006_Authentication_Registration]]

- Delete account (subject to retention policies).
    

[[REQ-006_Authentication_Registration]]

- Accept Terms & Conditions and Privacy Policy.
    

[[REQ-006_Authentication_Registration]]

---

### Discovery & Location

- Select/change city and district manually.
    

[[REQ-011_Filters]]

- Use the application normally without GPS; allow contextual location verification only when required (Nearest, Maps, QR, Proximity).
    

[[REQ-007_City_Location]]

- Browse home page, Discover/Reels, and nearest medical centers.
    

[[REQ-008_Bottom_Navigation]]

[[REQ-009_Home_Page]]

[[REQ-012_Nearest]]

[[REQ-031_Discover_Reels]]

- Search entities with typo tolerance support.
    

[[REQ-010_Search]]

- Manage and delete specific searched keys from the search history.
    

[[REQ-010_Search]]

- Apply global and contextual filters.
    

[[REQ-011_Filters]]

- View medical center details, maps, and directions.
    

[[REQ-013_Medical_Center_Page]]

- Add/remove centers, services, offers, and content to favorites.
    

[[REQ-032_Favorites]]

---

### Membership

- Subscribe to a membership.
    

[[REQ-025_Memberships]]

- View membership details, card, and history.
    

[[REQ-029_My_Card]]

- Renew membership (pre- or post-expiration) utilizing specific renewal offers/discounts.
    

[[REQ-027_Membership_Renewal]]

- Enable/disable auto-renewal and manage the linked payment method.
    

[[REQ-028_Auto_Renewal]]

- Gift a membership to another user, with the option to hide the sender's name.
    

[[REQ-038_Membership_Gifting]]

---

### Medical Services & Transactions

- Utilize Direct Medical Discount (no in-app payment for the service).
    

[[REQ-015_Direct_Medical_Discount]]

- Purchase a medical service (pay full value in-app).
    

[[REQ-016_Buy_Service]]

- Book a medical service (pay booking fee in-app, balance at center without day/time selection).
    

[[REQ-017_Book_Service]]

- View purchase/booking records and download invoices/proof of purchase.
    

[[REQ-018_Purchased_Reserved_Services]]

[[REQ-059_Invoices_Documents]]

---

### QR

- Scan a medical center QR and verify active membership.
    

[[REQ-020_QR_Active_Membership]]

- Follow the expired-membership renewal flow directly upon scanning an expired QR (location verification bypassed).
    

[[REQ-021_QR_Expired_Membership]]

- View center details as a non-member via QR.
    

[[REQ-022_QR_Non_Member]]

- Access external web QR content (web fallback).
    

[[REQ-023_External_QR]]

---

### Notifications

- Receive targeted push notifications (Offers, Centers, Proximity).
    

[[REQ-035_Notification_Types]]

- Receive controlled proximity alerts for nearby centers (if location and notification permissions are enabled).
    

[[REQ-037_Nearby_Center_Notifications]]

---

### Coupons & Support

- View available coupons and use them for external medical e-commerce.
    

[[REQ-033_Coupons_Store_Codes]]

- Submit a categorized complaint and track its status.
    

[[REQ-049_Complaints_Management]]

---

## Requirements Traceability

|Requirement|Relevance|
|:--|:--|
|[[REQ-004_Customer_Application]]|Customer uses the customer application.|
|[[REQ-006_Authentication_Registration]]|Registration, session management, and account deletion.|
|[[REQ-007_City_Location]]|Customer can use the app without location permission; location logic is contextual.|
|[[REQ-008_Bottom_Navigation]]|Customer navigation between primary application sections.|
|[[REQ-009_Home_Page]]|Home page interaction and sections.|
|[[REQ-010_Search]]|Search and search history management.|
|[[REQ-011_Filters]]|Filtering functionality.|
|[[REQ-012_Nearest]]|Nearby medical center discovery.|
|[[REQ-013_Medical_Center_Page]]|Viewing medical center details, maps, and directions.|
|[[REQ-015_Direct_Medical_Discount]]|Utilizing direct medical discounts at centers.|
|[[REQ-016_Buy_Service]]|Full service purchasing (Buy Service).|
|[[REQ-017_Book_Service]]|Fee-based service booking without date/time scheduling.|
|[[REQ-018_Purchased_Reserved_Services]]|Viewing purchased and reserved services.|
|[[REQ-020_QR_Active_Membership]]|Active membership QR flow.|
|[[REQ-021_QR_Expired_Membership]]|Expired membership QR flow, bypassing location check.|
|[[REQ-022_QR_Non_Member]]|Non-member QR flow.|
|[[REQ-023_External_QR]]|External QR web flow.|
|[[REQ-025_Memberships]]|Membership subscription and membership data.|
|[[REQ-027_Membership_Renewal]]|Membership renewal and offers.|
|[[REQ-028_Auto_Renewal]]|Auto-renewal management and payment link.|
|[[REQ-029_My_Card]]|Membership card and membership history.|
|[[REQ-031_Discover_Reels]]|Discover/Reels content interaction.|
|[[REQ-032_Favorites]]|Favorites management.|
|[[REQ-033_Coupons_Store_Codes]]|Coupons and medical store codes.|
|[[REQ-035_Notification_Types]]|Customer notification types.|
|[[REQ-036_Customer_Notification_Settings]]|Customer notification preferences.|
|[[REQ-037_Nearby_Center_Notifications]]|Contextual push and proximity alerts.|
|[[REQ-038_Membership_Gifting]]|Membership gifting.|
|[[REQ-039_Sharing_Referral]]|Smart link sharing and referral tracking.|
|[[REQ-049_Complaints_Management]]|Complaint submission and tracking.|
|[[REQ-059_Invoices_Documents]]|Invoices and financial documents.|
|[[REQ-066_Personal_Data_Protection]]|Data ownership and privacy compliance.|

---

## Related Actors

- [[ACT-02_Non_Member_Visitor]]
    
- [[ACT-03_Medical_Center]]
    
- [[ACT-04_Center_Employee]]
    
- [[ACT-17_System]]
    
- [[ACT-18_Payment_Gateway]]