Pass / Fail




| ID        | Critical Test Case                          | Expected Result                                                                                                               | Status |
| --------- | ------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------- | ------ |
| **CB-01** | View a published Place                      | Place details load correctly, including available units, price, pricing unit, capacity, images, and amenities.                | Pass   |
| **CB-02** | Select a valid booking date/duration        | Client can select a valid period supported by the Place's availability.                                                       | Pass   |
| **CB-03** | Available Unit exists for selected period   | System identifies at least one available Unit and allows the Client to continue.                                              | Pass   |
| **CB-04** | Select an available Unit                    | Client can select a Unit and the correct Unit information is added to the booking.                                            | Pass   |
| **CB-05** | Unit is unavailable for selected period     | System prevents that Unit from being booked and allows the Client to choose another available Unit.                           | Pass   |
| **CB-06** | Validate number of persons                  | Booking is allowed when persons ≤ Unit/Place capacity and rejected when capacity is exceeded.                                 | Pass   |
| **CB-07** | Calculate booking price                     | Total price is correctly calculated according to the configured pricing unit and booking duration.                            | Pass   |
| **CB-08** | Valid offer applies                         | If the booking falls within the offer period, the offer price is used instead of the original price.                          | Pass   |
| **CB-09** | Offer does not apply outside its period     | Normal price is used when the booking is outside the offer period.                                                            | Pass   |
| **CB-10** | Add Unit booking to cart                    | Cart contains the correct Place, Unit, dates, duration, persons, price, and total.                                            | Pass   |
| **CB-11** | Revalidate Unit availability before payment | System prevents checkout if the selected Unit became unavailable after it was added to the cart.                              |        |
| **CB-12** | Successful payment                          | Payment succeeds and the reservation is created.                                                                              | Pass   |
| **CB-13** | Automatic reservation confirmation          | Successfully paid reservation becomes **Confirmed** without Place Owner approval.                                             | Pass   |
| **CB-14** | Failed payment                              | No confirmed reservation is created and the Unit remains/reverts to available inventory.                                      | Pass   |
| **CB-15** | Prevent double booking                      | The same Unit cannot be successfully booked by two Clients for overlapping periods.                                           | Pass   |
| **CB-16** | Booking confirmation                        | Client receives/displays the correct Place, Unit, dates, duration, persons, price, payment status, and reservation reference. | Pass   |
| **CB-17** | Reservation appears in Client account       | Confirmed reservation is visible in the Client's reservations/orders immediately after successful booking.                    | Pass   |

# Scenarios

- [x] Login as a client -> Book a place on 15-9-2026 : 17-9-2026 -> Cancel the reservation -> The duration (15-09-2026 : ..) have to be available again.





