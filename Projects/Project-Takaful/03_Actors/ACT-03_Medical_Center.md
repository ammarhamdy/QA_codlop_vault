# ACT-03 — Medical Center

## Actor Definition

| Property          | Value                                                                                                                                                       |
| ----------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Actor ID**      | ACT-03                                                                                                                                                      |
| **Actor Name**    | Medical Center                                                                                                                                              |
| **Actor Type**    | External Organization                                                                                                                                       |
| **System Access** | Center Portal / Admin-managed Center Account                                                                                                                |
| **Description**   | A medical or healthcare center partnered with Takafol that provides approved medical services, discounts, offers, and other benefits to eligible customers. |

---

## Responsibilities

* Provide accurate center and branch information.
* Provide approved medical services.
* Provide agreed discounts and offers.
* Maintain service and discount information.
* Maintain branch information where applicable.
* Validate customer eligibility when required.
* Verify QR-based customer visits.
* Verify purchased or booked services.
* Fulfill eligible medical services.
* Maintain required contractual and operational information.
* Respond to operational or quality issues.
* Cooperate with Takafol monitoring and quality processes.

---

## Actions

### Center & Branch

* Provide center information.
* Manage branch information where authorized.
* Provide locations and contact information.
* Provide specialties and services.
* Provide images and descriptions.
* Maintain operating information where supported.
* View center status.

### Services

* Provide medical services.
* Define service details and conditions.
* Define service availability.
* Confirm service validity requirements.
* Verify purchased services.
* Verify booked services.
* Complete eligible service usage.

### Discounts & Offers

* Provide agreed discounts.
* Provide discount conditions.
* Provide promotional offers.
* Provide offer validity information.
* Apply agreed customer benefits.
* Confirm discount eligibility when required.

### QR & Visits

* Display the assigned QR code.
* Use the QR code to identify the center/branch.
* Verify customer membership eligibility.
* Verify customer QR visit requests.
* Confirm eligible visits.
* Review relevant visit records where authorized.

### Customer Interaction

* Receive customers using Takafol benefits.
* Verify customer purchase or booking information.
* Provide eligible services.
* Handle customer-related operational issues.
* Respond to complaints or follow-up requests where assigned.

### Operations

* Provide required contractual information.
* Provide required documents.
* Respond to Takafol employee tasks.
* Participate in quality inspections.
* Address quality violations.
* Complete required corrective actions.

---

## Restrictions

* Cannot access customers outside its authorized scope.
* Cannot modify Takafol-wide system configuration.
* Cannot modify membership rules unless explicitly authorized.
* Cannot approve its own contractual or quality decisions where segregation of duties is required.
* Cannot manually confirm an invalid or unauthorized customer benefit.
* Cannot access financial information beyond its authorized center scope.
* Cannot modify audit records.
* Cannot bypass QR, membership, service, or payment validation rules.

---

## Requirements Traceability

| Requirement                             | Relevance                                                         |
| --------------------------------------- | ----------------------------------------------------------------- |
| [[REQ-013_Medical_Center_Page]]         | Center information presented to customers.                        |
| [[REQ-014_Discount_Types]]              | Center-provided discount types.                                   |
| [[REQ-015_Direct_Medical_Discount]]     | Delivery of agreed direct medical discounts.                      |
| [[REQ-016_Buy_Service]]                 | Medical services available for purchase.                          |
| [[REQ-017_Book_Service]]                | Medical services available for booking.                           |
| [[REQ-018_Purchased_Reserved_Services]] | Verification and fulfillment of purchased/booked services.        |
| [[REQ-019_QR_Center]]                   | Center/branch QR identification.                                  |
| [[REQ-020_QR_Active_Membership]]        | Active membership verification and confirmed visits.              |
| [[REQ-022_QR_Non_Member]]               | Center information shown during non-member QR flow.               |
| [[REQ-023_External_QR]]                 | External access to center information.                            |
| [[REQ-030_Offers]]                      | Center offers.                                                    |
| [[REQ-043_Center_Management]]           | Center and branch operational management.                         |
| [[REQ-044_Center_Contracts]]            | Center contractual relationship with Takafol.                     |
| [[REQ-048_Center_Tasks]]                | Operational tasks related to the center.                          |
| [[REQ-049_Complaints_Management]]       | Complaints involving the center.                                  |
| [[REQ-050_Monitoring_Qualityv]]         | Center monitoring and quality management.                         |
| [[REQ-056_Operational_Finance]]         | Center-related financial transactions and settlement information. |

---

## Related Actors

* [[ACT-01_Customer]]
* [[ACT-02_Non_Member_Visitor]]
* [[ACT-04_Center_Employee]]
* [[ACT-09_Operations_Manager]]
* [[ACT-12_Quality_Employee]]
* [[ACT-14_Finance_Employee]]
* [[ACT-15_Contracts_Manager]]
* [[ACT-17_System]]

---

## Notes

* The Medical Center represents the **partner organization**, not an individual employee.
* Human users operating on behalf of the center should use their specific center-side actor/role.
* A center may have one or more branches.
* Access to center data and operations should be controlled by authorization and assigned scope.
