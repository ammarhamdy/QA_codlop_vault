---
id: UF-INSP-01
name: Reveal Lessor Contact Details
actor: Customer
goal: "Access lessor direct communication channels (phone call, WhatsApp, copy number) and exact location on the map for a chalet listing"
entry: "Primary action button «إظهار بيانات التواصل» on the Chalet Details screen"
pre: "Chalet listing is published and active; customer is viewing the listing details"
post_success: "Customer accesses lessor contact channels and exact map pin; lessor receives an interested customer record (type: contact reveal) and real-time notification"
post_failure: "Contact details and exact location remain hidden; no interested customer record is created; error message is displayed"
reqs:
  - FR-INSP-01
  - FR-INSP-03
  - BR-INSP-01
  - BR-INSP-02
  - BR-INSP-03
  - BR-INSP-04
  - BR-INSP-05
  - BR-INSP-06
  - BR-INSP-07
  - BR-INSP-08
  - BR-INSP-09
  - BR-INSP-10
status: Draft
---
## Main Flow

| # | Actor Action | System Response | Ref |
|---|--------------|-----------------|-----|
| 1 | Taps «إظهار بيانات التواصل» (Show Contact Details) on the chalet listing screen. | Verifies customer authentication status, daily reveal quota, listing availability, and listing ownership. | SCR-CHALET-01, BR-INSP-01, BR-INSP-04, BR-INSP-06, BR-INSP-07 |
| 2 | Awaits system display. | Detects this is the customer's first contact reveal for this ad and displays the Disclosure Bottom Sheet («ورقة الإفصاح») with text: «سيصل اسمك ورقم جوالك إلى المؤجّر ليتواصل معك» and safety advisory: «عاين المكان بنفسك قبل أن تدفع أي مبلغ. الاتفاق والدفع بينك وبين المؤجّر خارج المنصة», along with «موافق، أظهر البيانات» and «إلغاء». | SCR-DISCLOSE-01, BR-INSP-02, FR-INSP-01 |
| 3 | Taps «موافق، أظهر البيانات» (Agree, Show Data). | Validates connection and begins consent and reveal transaction. | SCR-DISCLOSE-01, FR-INSP-01 |
| 4 | Awaits transaction completion. | Records customer as an interested customer («عميل مهتم») with type «إظهار تواصل», discloses customer name and phone to the lessor, and dispatches real-time notification to the lessor: «{الاسم} ({الرقم}) أظهر بيانات التواصل {المكان}». | BR-INSP-02, BR-INSP-05, FR-INSP-03 |
| 5 | Awaits contact presentation. | Dismisses disclosure sheet and reveals direct communication actions: «اتصال» (Call), «واتساب» (WhatsApp), «نسخ الرقم» (Copy Number), and updates map from approximate area to exact pin with «افتح في الخرائط» (Open in Maps). | SCR-CHALET-01, FR-INSP-01, BR-INSP-09 |
| 6 | Taps «واتساب» (or «اتصال») to reach the lessor. | Triggers direct external communication action. | SCR-CHALET-01, FR-INSP-01, BR-INSP-09 |
| 7 | Awaits app launch. | Opens WhatsApp directly with prefilled message: «السلام عليكم، أستفسر عن {اسم المكان} في تطبيق تنفيذ» (or opens native phone dialer with lessor's number). | SCR-CHALET-01, FR-INSP-01, BR-INSP-09, BR-INSP-10 |

## Alternatives & Errors

| ID | At Step | Condition | System Behavior | Resumes At |
|----|---------|-----------|-----------------|------------|
| A1 | 2 | Customer has previously accepted disclosure for this listing | Bypasses the Disclosure Sheet entirely. Directly reveals contact actions («اتصال», «واتساب», «نسخ الرقم») and exact map location. Checks 24-hour deduplication window (`BR-INSP-05`): if > 24 hours since last reveal, records a new interested record and notifies lessor; if within 24 hours, creates no new record and sends no notification. | Step 5 |
| A2 | 1 | Actor is an unauthenticated Visitor (guest user) | Displays login prompt: visitor must authenticate via mobile OTP. Upon successful login, redirects back to the chalet listing screen with the contact reveal action activated. | Step 1 |
| A3 | 6 | Customer taps «نسخ الرقم» (Copy Number) | Copies lessor phone number to device clipboard and displays confirmation toast: «تم نسخ الرقم». | Step 5 |
| A4 | 6 | Customer taps «افتح في الخرائط» (Open in Maps) | Launches external map application (e.g., Google Maps / Apple Maps) centered on the exact geo-coordinates of the chalet. | Step 5 |
| A5 | 3 | Customer taps «إلغاء» (Cancel) on Disclosure Sheet | Dismisses Disclosure Sheet and returns to chalet listing screen without disclosing identity or showing contact details. No interested customer is recorded and no notification is sent. | End (canceled) |
| E1 | 1 | Customer daily reveal limit reached (30 listings/day) | Rejects request, logs attempt, and displays error toast/dialog: «وصلت للحد اليومي لإظهار بيانات التواصل. حاول غدًا». Access is restored the following day. | End (fail) |
| E2 | 4 | Network disconnection during or immediately after consent | Automatically retries the transaction once. If retry fails, aborts transaction, does not record an interested customer, keeps contact details hidden, and displays: «تعذر إظهار البيانات. تحقق من الاتصال وأعد المحاولة». | End (fail) |
| E3 | 1 | Actor is the owner lessor of this listing (via old or direct link) | Prevents action, shows notice: «هذا إعلانك» (This is your ad), and suppresses recording of an interested customer. | End (fail) |
| E4 | 1 | Listing is no longer active or available (suspended, expired, deleted) | Prevents action and displays notice: «هذا المكان لم يعد متاحًا» (This place is no longer available). | End (fail) |

## Diagram (optional: only if 3+ branches)

```mermaid
flowchart TD
    A([Start: Tap 'Show Contact Details']) --> B{User Logged In?}
    B -- "No: Visitor (A2)" --> C[Prompt Login / OTP] --> D{Login Success?}
    D -- No --> E([End: Canceled])
    D -- Yes --> F[Return to Chalet Screen] --> G
    B -- Yes --> G{Lessor owns listing?}
    G -- "Yes: E3" --> H["Display: «هذا إعلانك»"] --> I([End: Blocked])
    G -- No --> J{Listing Available?}
    J -- "No: E4" --> K["Display: «هذا المكان لم يعد متاحًا»"] --> I
    J -- Yes --> L{Daily Limit Reached (30)?}
    L -- "Yes: E1" --> M["Display: «وصلت للحد اليومي لإظهار بيانات التواصل. حاول غدًا»"] --> I
    L -- No --> N{First Time for this Listing?}
    N -- "No (A1)" --> O{Within 24h Window?}
    O -- Yes --> P[Suppress New Record & Notification] --> Q[Reveal Contact Channels & Exact Map]
    O -- No --> R[Record Interested & Notify Lessor] --> Q
    N -- Yes --> S["Display Disclosure Sheet («ورقة الإفصاح»)"]
    S --> T{Actor Decision}
    T -- "Cancel (A5)" --> U[Dismiss Sheet, Keep Hidden] --> E
    T -- "Agree" --> V{Network Connection OK?}
    V -- "No (Auto-Retry Failed: E2)" --> W["Display: «تعذر إظهار البيانات. تحقق من الاتصال وأعد المحاولة»"] --> I
    V -- Yes --> X[Record Interested Record & Notify Lessor] --> Q
    Q --> Y{Selected Action}
    Y -- "Call / WhatsApp" --> Z[Launch Dialer or WhatsApp with Prefilled Text] --> AA([End: Success])
    Y -- "Copy Number (A3)" --> AB["Copy to Clipboard & Toast: «تم نسخ الرقم»"] --> AA
    Y -- "Open Maps (A4)" --> AC[Launch Map App at Exact Pin] --> AA
```

## Notes & Assumptions

- **Traceability:**
  - `FR-INSP-01`: Customer Contact Reveal interface, disclosure sheet, and contact options.
  - `FR-INSP-03`: Lessor real-time notification dispatch upon customer engagement.
  - `BR-INSP-01`: Guest users must authenticate before accessing contact information.
  - `BR-INSP-02`: First-time disclosure sheet acceptance required before customer data is passed to lessor or lessor data revealed to customer.
  - `BR-INSP-03`: Subsequent visits to the same listing bypass disclosure sheet.
  - `BR-INSP-04`: Daily quota of 30 reveals/inspections across different listings; automated system constraint, not a penalty.
  - `BR-INSP-05`: 24-hour duplicate window prevents duplicate interested customer logs and duplicate notifications for the same customer, ad, and type.
  - `BR-INSP-06`: Lessors are blocked from revealing contact details on their own listings.
  - `BR-INSP-07`: Inactive/unavailable listings cannot be contacted.
  - `BR-INSP-08`: Single automatic retry upon network loss; roll back state if retry fails.
  - `BR-INSP-09`: Phase 1 contact channels are phone call and WhatsApp direct link with canned message; no in-app chat; no bulk export of contacts.
  - `BR-INSP-10`: Contact reveal is non-binding and does not constitute a booking confirmation.
- **Assumptions Requiring Clarification:**
  - *Daily Limit Reset:* Assumed to reset at 00:00 local KSA time (Asia/Riyadh) rather than a rolling 24-hour window.
  - *WhatsApp App Availability:* If WhatsApp is not installed on the user's device, assumed system falls back to opening `https://wa.me/` via the device web browser or displays an alert indicating WhatsApp is unavailable.
