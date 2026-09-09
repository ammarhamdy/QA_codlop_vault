Pass / Fail

| ID    | Critical Test Case                                             | Expected Result                                                          | Status |
| ----- | -------------------------------------------------------------- | ------------------------------------------------------------------------ | ------ |
| SP-01 | Register as Service Provider with valid data                   | Registration succeeds and provider enters **Pending Verification** state | Pass   |
| SP-02 | Try to login before Admin verification                         | **Login must be rejected**                                               | Pass   |
| SP-03 | Login after Admin approval                                     | Provider can successfully login                                          | Pass   |
| SP-04 | Register using an existing service-provider type               | Correct existing type is assigned                                        | Pass   |
| SP-05 | Register with a new service-provider type                      | New type is handled according to the defined approval/business rule      | Pass   |
| SP-06 | Verify OTP with invalid/expired OTP                            | Verification fails; account must not be activated                        | Pass   |
| SP-07 | Access provider APIs using another provider's token            | **403/Unauthorized**; no data access or modification                     | Pass   |
| SP-08 | Create product using another provider's category ID            | **Rejected**; provider cannot use another provider's category            | Pass   |
| SP-09 | Update another provider's product/service                      | **Rejected**; no modification allowed                                    | Pass   |
| SP-10 | Delete another provider's product/category                     | **Rejected**                                                             |        |
| SP-11 | Create service with invalid/negative/zero price                | Request rejected                                                         |        |
| SP-12 | Create product without required category                       | Request rejected                                                         |        |
| SP-13 | Create product/service with invalid or missing required fields | Request rejected with validation errors                                  |        |
| SP-14 | Create offer containing another provider's product/service     | **Rejected**                                                             |        |
| SP-15 | Create offer with invalid dates (`end < start`)                | Request rejected                                                         |        |
| SP-16 | Create offer with invalid discount value                       | Request rejected; no invalid financial offer created                     |        |
| SP-17 | Create offer for a deleted/non-existing product/service        | Request rejected                                                         |        |
| SP-18 | Receive a newly created order                                  | Order appears to provider with initial state **Accepted**                |        |
| SP-19 | Complete an Accepted order                                     | Order changes to **Completed**                                           |        |
| SP-20 | Cancel an Accepted order                                       | Order changes to **Cancelled**                                           |        |
| SP-21 | Try to complete a Cancelled order                              | **Rejected**; state remains Cancelled                                    |        |
| SP-22 | Try to cancel a Completed order                                | **Rejected**; state remains Completed                                    |        |
| SP-23 | Try to manipulate another provider's order                     | **Rejected**                                                             |        |
| SP-24 | Provider creates duplicate/duplicate-submission order action   | System prevents unintended duplicate processing                          |        |
| SP-25 | Provider adds invalid bank account information                 | Validation/rejection; invalid financial data must not be accepted        |        |



| ID     | Happy Path Case                                                            | Expected Result                                                              | Status |
| ------ | -------------------------------------------------------------------------- | ---------------------------------------------------------------------------- | ------ |
| SP-L01 | Register with an **existing service type**                                 | Provider is registered with the selected type and enters verification status | Pass   |
| SP-L02 | Register with a **new service type**                                       | Provider registration accepts the new type according to the defined flow     | Pass   |
| SP-L03 | Admin approves the newly registered provider                               | Provider becomes active and can login                                        | Pass   |
| SP-L04 | Login using valid phone + OTP                                              | Provider successfully enters dashboard                                       | Pass   |
| SP-L05 | Complete provider profile with commercial registration and tax information | Profile is saved successfully                                                | Pass   |
| SP-L06 | Add a valid bank account                                                   | Bank account is successfully associated with provider                        | Pass   |
| SP-L07 | Create a service with title, images, description and price                 | Service appears in provider's service list                                   |        |
| SP-L08 | Update an existing service                                                 | Updated information is displayed correctly                                   |        |
| SP-L09 | Retrieve provider's services                                               | All provider-owned services are returned correctly                           |        |
| SP-L10 | Create a main product category                                             | Category appears in provider's categories                                    |        |
| SP-L11 | Create a subcategory under an existing category                            | Subcategory is correctly linked to the parent                                |        |
| SP-L12 | Create main category with multiple subcategories                           | Main category and all subcategories are created correctly                    |        |
| SP-L13 | Create a product under a category                                          | Product appears under the selected category                                  |        |
| SP-L14 | Create product with images and description                                 | Product information and images are saved correctly                           |        |
| SP-L15 | Delete an existing product                                                 | Product is removed from provider's product list                              |        |
| SP-L16 | Create an offer for **one service**                                        | Offer is created and associated with the service                             |        |
| SP-L17 | Create an offer for **one product**                                        | Offer is created and associated with the product                             |        |
| SP-L18 | Create an offer containing **both products and services**                  | Offer contains all selected items                                            |        |
| SP-L19 | Create a fixed-value discount offer                                        | Discount is calculated/applied correctly                                     |        |
| SP-L20 | Offer becomes active within its configured date range                      | Eligible product/service uses the offer according to the business rules      |        |
| SP-L21 | Offer expires after its end date                                           | Normal price is used after the offer expires                                 |        |
| SP-L22 | Customer places an order for provider's **product**                        | Order is created and appears in provider orders                              |        |
| SP-L23 | Customer places an order for provider's **service**                        | Order is created and appears in provider orders                              |        |
| SP-L24 | Customer orders an item with an active offer                               | Order total reflects the applicable discount                                 |        |
| SP-L25 | Customer orders an item without an applicable offer                        | Order uses the normal price                                                  |        |
| SP-L26 | Provider opens a newly received order                                      | Correct customer, items, quantities, prices and total are displayed          |        |
| SP-L27 | Provider completes an accepted order                                       | Order status changes to **Completed**                                        |        |
| SP-L28 | Provider cancels an accepted order                                         | Order status changes to **Cancelled**                                        |        |
| SP-L29 | Provider manages multiple products/services                                | Each item maintains its own independent information and pricing              |        |
| SP-L30 | Provider creates multiple offers                                           | Each offer maintains its own items, dates and discount configuration         |        |
