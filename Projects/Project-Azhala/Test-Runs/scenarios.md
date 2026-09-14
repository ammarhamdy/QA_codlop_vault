For a **whole- [ ]app acceptance test**, I would focus on **end- [ ]to- [ ]end business- [ ]critical journeys** where one failure means the core marketplace cannot operate.

### 1. Service Provider — Complete Business Lifecycle

- [x] New service provider → register → enter personal information → select service type → submit registration → wait for admin verification → login after approval → add products → add services → create offers → logout
- [x] Login → receive client order → process order through all statuses → complete order → request withdrawal → monitor withdrawal status.
    

### 2. Service Provider — Registration & Verification

- [x] New service provider → register → select existing service type → submit → admin approves → provider can login and access provider features.
    
- [x] New service provider → register with a new service type → service type is created/submitted according to the business rules → admin handles it → provider becomes able to operate.
    

### 3. Service Provider — Product/Service Management

- [x] Provider → add product → configure price/details/availability → product appears correctly to clients → client purchases it → provider receives the order.
    
- [x] Provider → add service → configure price/details/**availability** → service appears correctly to clients → client orders it → provider receives the order.
    
- [x] Provider → edit/disable/delete product or service → client- [ ]side availability reflects the change correctly.


### 4. Service Provider — Offers

- [ ] Provider → create offer → ==offer becomes visible to eligible clients== → client purchases during the offer period → correct offer price is applied.
    
- [x] Provider → offer expires → subsequent orders use the normal price.
    
- [x] Provider → modify/remove offer → client sees the correct current pricing.


### 5. Place Owner — Complete Business Lifecycle
 
- [x] New place owner → register → fill information → login → add bookable place → configure place type, availability, pricing unit and price → place becomes available to clients → receive booking → monitor reservation → reservation ends → complete reservation → receive applicable earnings.
    

### 6. Place Owner — Reservation Lifecycle

- [x] Place owner → receive new reservation → accept/process reservation according to the business rules → reservation progresses correctly → **cannot mark it completed before the reservation end time** → after end time → can complete it.
    
- [x] Place owner → receive reservation → cancel reservation according to allowed rules → client sees the correct reservation status and financial result.


### 7. Place Owner — Availability & Pricing

- [ ] Owner → create place with availability → client searches for it → correct availability is displayed → client books → booked period becomes unavailable according to the rules.
    
- [ ] Owner → configure pricing unit (hour/day/night/etc.) → client selects duration → total price is calculated correctly.
    
- [ ] Owner → create offer for a place → client books within offer period → correct offer price is charged.


### 8. Client — Complete Purchase Journey

- [ ] New client → register → verify/login → browse app → search/filter → select place → select reservation period → book place → add products/services → select delivery date/time → review complete order → pay once through payment gateway → payment succeeds → reservation/order created correctly → monitor progress.


### 9. Client — Combined Marketplace Order

- [ ] Client → book a place → add products from service providers → add services → select required delivery information → **pay for everything in one checkout** → verify that the place reservation, product orders and service orders are all created correctly and linked to the client.
    

### 10. Client — Reservation Lifecycle

- [ ] Client → search place → view details → book available period → successful payment → reservation confirmed → monitor reservation → reservation reaches end time → reservation is completed correctly.
    
- [ ] Client → attempt to book an unavailable/already- [ ]booked period → system prevents invalid booking.
    

### 11. Client — Order Lifecycle

- [ ] Client → purchase product/service → payment succeeds → provider receives order → provider processes order → order status changes correctly → client sees every status update → order reaches completion.
    

### 12. Payment — Successful End- [ ]to- [ ]End Flow

- [ ] Client → create a combined order → payment gateway → successful payment → return to app → correct payment status → reservation/order records created → correct amounts distributed to the relevant parties.
    

### 13. Payment — Failed/Interrupted Payment

- [ ] Client → checkout → payment fails/cancelled → system does **not** create a falsely paid order/reservation → client can recover/retry payment without creating duplicate orders.
    

### 14. Payment — Duplicate Payment/Order Protection

- [ ] Client → submit payment → retry/refresh/back during payment process → system does not create duplicate reservations, products, services, or charges.
    

### 15. Provider Withdrawal

- [ ] Provider → complete eligible orders → earnings become available → submit withdrawal request → request appears correctly → admin/system processes it → provider sees updated withdrawal status and balance.
    

### 16. Order Ownership & Visibility

- [ ] Client places orders → each provider sees **only the orders relevant to them** → place owner sees only their reservations → client sees all of their own orders/reservations together.
    

### 17. Multi- [ ]Provider Order

- [ ] Client → purchase products/services from multiple providers in one checkout → payment succeeds → each provider receives only their corresponding items/orders → client sees the complete combined purchase correctly.
    

### 18. Logout/Login & Data Persistence

- [ ] Client/provider/owner → perform active transactions → logout → login again → all reservations, orders, payments, balances and statuses remain correct and consistent.
    

### 19. Admin → Marketplace Operational Flow

- [ ] Admin → verify new service provider → provider can operate.
    
- [ ] Admin → manage service/product/place- [ ]related configurations required by the marketplace → changes are reflected correctly in the relevant user flows.
    
- [ ] Admin → process withdrawal request → provider receives the correct status/update.
    

### 20. **Golden End- [ ]to- [ ]End Scenario — Full Marketplace**

- [ ] Service provider registers → gets verified → adds products/services/offers → place owner registers → creates bookable place → client registers → discovers place → books place → adds provider products/services → selects delivery date/time → pays once → place owner receives reservation → service provider(s) receive their orders → all parties monitor their respective statuses → reservation/order completion occurs according to the business rules → provider earnings become available → withdrawal request is submitted.
    
