### Customer — QR Scan at the Center

### ( How the Client Scans the QR)

**1. Customer — Scan QR Inside the App**

- Client → arrives at the center → opens the app → scans the center QR from inside the app → the system checks the package subscription status (Active / Expired / Not Subscribed).

**2. Customer — Scan QR Using Phone Camera (App Installed)**

- Client → arrives at the center → scans the center QR using the phone camera outside the app → the system uses Universal Link / Deep Link / App Link → the app is installed → the requested content opens inside the app → the system checks the package subscription status (Active / Expired / Not Subscribed).

**3. Customer — Scan QR Using Phone Camera (App Not Installed)**

- Client → arrives at the center → scans the center QR using the phone camera outside the app → the system uses Universal Link / Deep Link / App Link → the app is not installed → an appropriate web page opens → the page displays: center name, center overview, benefits, app download link, and the subscription option according to the client's status.

   ### **(Active Subscription)**

**4. Customer — Active Subscription, Eligible, Purchase**

- Client (active subscription) → after scanning the center QR → the system verifies the client's eligibility for the service → the client is eligible → is allowed to complete the service → scans the invoice / voucher QR → the system verifies the transaction and payment data → the transaction type is Purchase → the purchase is confirmed → the service is executed.

**5. Customer — Active Subscription, Eligible, Booking**

- Client (active subscription) → after scanning the center QR → the system verifies the client's eligibility for the service → the client is eligible → is allowed to complete the service → scans the invoice / voucher QR → the system verifies the transaction and payment data → the transaction type is Booking → the paid amount and the remaining amount are displayed → the booking is confirmed → the service is executed.

**6. Customer — Active Subscription, Not Eligible**

- Client (active subscription) → after scanning the center QR → the system verifies the client's eligibility for the service → the client is not eligible → the client is denied the service benefit.

### (Expired Subscription) 

**7. Customer — Expired Subscription, Not Renewed**

- Client (expired subscription) → after scanning the center QR → the system displays that the package subscription has expired → displays the Renew option → the client does not renew → the client is not allowed to benefit from the package benefits.

**8. Customer — Expired Subscription, Renewed, Eligible, Purchase**

- Client (expired subscription) → after scanning the center QR → the system displays that the package subscription has expired → displays the Renew option → the client renews → the package subscription is activated → the system verifies the client's eligibility for the service → the client is eligible → scans the invoice / voucher QR → the system verifies the transaction and payment data → the transaction type is Purchase → the purchase is confirmed → the service is executed.

**9. Customer — Expired Subscription, Renewed, Eligible, Booking**

- Client (expired subscription) → after scanning the center QR → the system displays that the package subscription has expired → displays the Renew option → the client renews → the package subscription is activated → the system verifies the client's eligibility for the service → the client is eligible → scans the invoice / voucher QR → the system verifies the transaction and payment data → the transaction type is Booking → the paid amount and the remaining amount are displayed → the booking is confirmed → the service is executed.

**10. Customer — Expired Subscription, Renewed, Not Eligible**

- Client (expired subscription) → after scanning the center QR → the system displays that the package subscription has expired → displays the Renew option → the client renews → the package subscription is activated → the system verifies the client's eligibility for the service → the client is not eligible → the client is denied the service benefit.

  ### (No subscription) 

**11. Customer — Not Subscribed to a Package**

- Client (not subscribed to any package) → after scanning the center QR → the system displays that the client is not subscribed to a package → the client scans the invoice / voucher QR → the system verifies the purchase transaction data → the purchase is confirmed → the service is executed.