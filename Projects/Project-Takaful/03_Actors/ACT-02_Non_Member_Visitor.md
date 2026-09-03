# ACT-02 — Non-Member Visitor

## Actor Definition

| Property          | Value                                                                                                                                                                                                               |
| ----------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Actor ID**      | ACT-02                                                                                                                                                                                                              |
| **Actor Name**    | Non-Member Visitor                                                                                                                                                                                                  |
| **Actor Type**    | External User                                                                                                                                                                                                       |
| **System Access** | Public Website / Customer Mobile App / External QR                                                                                                                                                                  |
| **Description**   | A visitor who interacts with Takafol without having an active membership. The visitor can browse publicly available information and access eligible QR or promotional content, but cannot use member-only benefits. |

---

## Responsibilities

* Browse publicly available Takafol content.
* Discover medical centers and available services.
* View eligible discounts and offers.
* Access medical center information.
* Access external QR content.
* Understand membership benefits.
* Start the membership subscription process.
* Access publicly available website content.

---

## Actions

### Discovery

* Browse the home page where publicly accessible.
* Select/change city where supported.
* Search for medical centers and services where publicly accessible.
* Apply available filters.
* View nearest medical centers when location access is granted.
* View medical center details.
* View available services.
* View discounts and offers.
* View Discover/Reels where publicly accessible.

### QR

* Scan a medical center QR using the phone camera.
* Open the external QR page.
* View the identified medical center.
* View available benefits and discounts.
* View membership subscription options.
* Continue to the application or website subscription flow.

### Membership

* View membership information.
* View membership levels and benefits.
* Start the subscription process.
* Complete registration before becoming an active member.

### Website

* Browse public website pages.
* View medical centers.
* View services.
* View offers.
* View coupons where publicly available.
* View terms and privacy information.
* Access app download links.

---

## Restrictions

* Cannot claim member-only discounts without meeting membership requirements.
* Cannot confirm a member-only QR visit.
* Cannot use active-membership QR verification.
* Cannot access another customer's account or membership information.
* Cannot access customer-only purchased or booked services.
* Cannot access customer-only notification settings.
* Cannot perform member-only actions unless the visitor becomes eligible.

---

## Requirements Traceability

| Requirement                      | Relevance                                                         |
| -------------------------------- | ----------------------------------------------------------------- |
| [[REQ-004_Customer_Application]] | Public interaction with the customer application where supported. |
| [[REQ-007_City_Location]]        | City selection and location-dependent discovery.                  |
| [[REQ-009_Home_Page]]            | Access to publicly available home content.                        |
| [[REQ-010_Search]]               | Public search where enabled.                                      |
| [[REQ-011_Filters]]              | Public filtering where enabled.                                   |
| [[REQ-012_Nearest]]              | Nearby center discovery where location is granted.                |
| [[REQ-013_Medical_Center_Page]]  | View medical center information.                                  |
| [[REQ-022_QR_Non_Member]]        | Non-member QR flow.                                               |
| [[REQ-023_External_QR]]          | External QR access without the application.                       |
| [[REQ-025_Memberships]]          | View membership information and subscription options.             |
| [[REQ-030_Offers]]               | View publicly available offers.                                   |
| [[REQ-031_Discover_Reels]]       | Access publicly available Discover/Reels content.                 |
| [[REQ-033_Coupons_Store_Codes]]  | View publicly available coupons/store codes.                      |
| [[REQ-040_Website]]              | Public website access.                                            |

---

## Related Actors

* [[ACT-01_Customer]]
* [[ACT-03_Medical_Center]]
* [[ACT-04_Center_Employee]]
* [[ACT-17_System]]

---

## Notes

* A Non-Member Visitor is not necessarily an unregistered user; the actor is defined by **membership eligibility/status**, not only account existence.
* Once the visitor becomes an eligible active member, interactions should follow [[ACT-01_Customer]].
