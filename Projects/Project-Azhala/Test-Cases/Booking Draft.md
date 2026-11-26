# Booking Draft – QA Release Checklist

### 1. Draft Creation

- [x] BD-01 – Create a booking draft with a valid place and booking dates.
- [x] BD-02 – Add multiple products and verify quantities and prices.
- [x] BD-03 – Add multiple services and verify prices.
- [x] BD-04 – Apply an available offer and verify the discount.
- [x] BD-05 – Create a complete draft containing a place, products, services, and an offer.

### 2. Draft Persistence & Management

- [x] BD-06 – Close and reopen the application; verify draft persistence.
- [x] BD-07 – Reopen an existing draft and verify all saved details.
- [ ] BD-08 – Edit an existing draft without losing or duplicating data.
- [ ] BD-17 – Logout and login again; verify saved drafts remain accessible.

### 3. Booking Confirmation

- [ ] BD-09 – Confirm an existing booking draft successfully.
- [ ] BD-10 – Prevent duplicate confirmation and duplicate charges.
- [ ] BD-14 – Prevent confirmation if another client has already booked the same dates.

### 4. Booking Cancellation

- [ ] BD-11 – Cancel an existing booking draft successfully.
- [ ] BD-12 – Prevent confirmation of a cancelled draft.

### 5. Availability & Pricing Validation

- [ ] BD-13 – Verify overlapping booking drafts and confirmed reservations are handled correctly.
- [ ] BD-15 – Revalidate availability and offer eligibility after expiration.
- [ ] BD-16 – Verify correct price calculations after reopening the draft.

### 6. Authorization

- [ ] BD-18 – Prevent clients from accessing other clients' booking drafts.


---


- [x] ==🔴**التحقق من رقم الهاتف في الملف الشخصي:** إضافة تحقق من صحة رقم الهاتف عند إدخاله أو تعديله في صفحة الملف الشخصي.==

- [x] ==🔴تسجيل الخروج دون إعادة إرسال OTP: عند تسجيل الخروج، يجب ألا يتم إرسال رمز تحقق OTP مرة أخرى تلقائيًا.==
