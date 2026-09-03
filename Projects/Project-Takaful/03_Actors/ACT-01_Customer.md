# ACT-01 — Customer

## Actor Definition

| Property          | Value                                                                                                                                                               |
| ----------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Actor ID**      | ACT-01                                                                                                                                                              |
| **Actor Name**    | Customer                                                                                                                                                            |
| **Actor Type**    | External User                                                                                                                                                       |
| **System Access** | Customer Mobile App / Website                                                                                                                                       |
| **Description**   | A registered Takafol user who uses the platform to discover medical centers and services, manage membership, purchase or book services, and use available benefits. |

---

## Responsibilities

* Manage their account.
* Browse medical centers and medical services.
* Search and filter available content.
* Manage their membership.
* View and use membership benefits.
* Purchase eligible medical services.
* Book eligible medical services.
* Use QR verification at medical centers.
* View purchased and booked services.
* Receive and manage notifications.
* Use available coupons and store codes.
* Submit complaints where supported.
* Manage favorites.
* Share centers, offers, services, and content.

---

## Actions

### Account & Authentication

* Register.
* Login.
* Verify OTP.
* Logout.
* Manage session.
* Delete account.
* Accept Terms & Conditions.
* Accept Privacy Policy.

### Discovery

* Select/change city.
* Browse home page.
* Search.
* Apply filters.
* View nearest medical centers.
* View medical center details.
* View services.
* View discounts and offers.
* View Discover/Reels.
* Add/remove favorites.

### Membership

* Subscribe to a membership.
* View membership details.
* Renew membership.
* Enable/disable auto-renewal.
* View membership card.
* Gift a membership.

### Medical Services

* Purchase a medical service.
* Book a medical service.
* Pay for eligible services.
* View purchase records.
* View booking records.
* View invoices/proof of purchase.
* Contact the medical center.
* Use an eligible purchased/booked service.

### QR

* Scan a medical center QR.
* Verify membership.
* Allow location verification when required.
* Confirm an eligible visit.
* Follow the expired-membership renewal flow.
* Access external QR content.

### Notifications

* Receive notifications.
* Configure notification preferences.
* Open notification-linked content.

### Coupons

* View available coupons.
* View coupon conditions.
* Use a coupon/store code.
* Access linked medical stores/services.

### Complaints

* Submit a complaint.
* View complaint status.
* Follow complaint updates where supported.

---

## Requirements Traceability

| Requirement                                | Relevance                               |
| ------------------------------------------ | --------------------------------------- |
| [[REQ-004_Customer_Application]]           | Customer uses the customer application. |
| [[REQ-006_Authentication_Registration]]    | Registration and authentication.        |
| [[REQ-007_City_Location]]                  | City and location functionality.        |
| [[REQ-008_Bottom_Navigation]]              | Customer navigation.                    |
| [[REQ-009_Home_Page]]                      | Home page interaction.                  |
| [[REQ-010_Search]]                         | Search functionality.                   |
| [[REQ-011_Filters]]                        | Filtering functionality.                |
| [[REQ-012_Nearest]]                        | Nearby center discovery.                |
| [[REQ-013_Medical_Center_Page]]            | Medical center interaction.             |
| [[REQ-016_Buy_Service]]                    | Service purchasing.                     |
| [[REQ-017_Book_Service]]                   | Service booking.                        |
| [[REQ-018_Purchased_Reserved_Services]]    | Purchased/booked services.              |
| [[REQ-020_QR_Active_Membership]]           | Active membership QR flow.              |
| [[REQ-021_QR_Expired_Membership]]          | Expired membership QR flow.             |
| [[REQ-022_QR_Non_Member]]                  | Non-member QR flow.                     |
| [[REQ-023_External_QR]]                    | External QR flow.                       |
| [[REQ-025_Memberships]]                    | Membership management.                  |
| [[REQ-027_Membership_Renewal]]             | Membership renewal.                     |
| [[REQ-028_Auto_Renewal]]                   | Auto-renewal.                           |
| [[REQ-029_My_Card]]                        | Membership card.                        |
| [[REQ-030_Offers]]                         | Offers.                                 |
| [[REQ-031_Discover_Reels]]                 | Discover/Reels.                         |
| [[REQ-032_Favorites]]                      | Favorites.                              |
| [[REQ-033_Coupons_Store_Codes]]            | Coupons and store codes.                |
| [[REQ-034_Notifications]]                  | Customer notifications.                 |
| [[REQ-036_Customer_Notification_Settings]] | Notification preferences.               |
| [[REQ-038_Membership_Gifting]]             | Membership gifting.                     |
| [[REQ-039_Sharing_Referral]]               | Sharing/referral functionality.         |
| [[REQ-049_Complaints_Management]]          | Customer complaints.                    |

---

## Related Actors

* [[ACT-02_Non_Member_Visitor]]
* [[ACT-03_Medical_Center]]
* [[ACT-04_Center_Employee]]
* [[ACT-17_System]]
* [[ACT-18_Payment_Gateway]]

---

## Notes

* The actor represents the **business role**, not a specific person.
* Detailed permissions and access restrictions should be defined separately where applicable.
* Customer actions should be used as the basis for customer-facing workflows and test scenarios.
