# M02 — Customer & Authentication

## Overview / Module Purpose

This module manages the customer account and authentication lifecycle, from registration and login to session management and account deletion.

---

## Scope

This module covers:

- Customer registration.
    
- Login.
    
- Mobile number authentication.
    
- Email authentication.
    
- OTP verification.
    
- OTP delivery channels.
    
- OTP security controls.
    
- Session management.
    
- Logout.
    
- Account deletion.
    
- Terms and conditions consent.
    
- Privacy policy consent.
    

---

## Requirements

### Authentication & Registration

[[REQ-006_Authentication_Registration]]

---

## Open Questions

### 1. Primary Login Method -

**Which login method is the primary method: Mobile, Email, or both equally?**

* [ ]  Mobile number is the primary method.
* [ ]  Email address is the primary method.
* [ ]  Both are treated equally (users can choose either).
* [ ]  Other: \__________

### 2. Account Credentials - x

**Can one customer account have both a mobile number and email?**

* [ ]  Yes, both can be added and both are mandatory.
* [ ]  Yes, both can be added, but only one is mandatory.
* [ ]  No, an account can only have either a mobile number or an email, not both.
* [ ]  Other: \__________

### 3. Credential Uniqueness - x

**Can the same mobile number or email be linked to multiple accounts?**

* [ ]  Yes, multiple accounts can share the same mobile number or email.
* [x]  No, mobile numbers and emails must be strictly unique to a single account.
* [ ]  Other: \__________

### 4. OTP Delivery Channels -

**Which OTP channels should be enabled initially: SMS, WhatsApp, Email, or all or depends on the login method ?**

* [ ]  SMS only.
* [ ]  WhatsApp only.
* [ ]  Email only.
* [ ]  All of the above (SMS, WhatsApp, and Email).
* [ ]  Other: \__________

### 5. OTP Verification Frequency -

**Is OTP verification required for every login or only selected situations?**

* [ ]  Required for every single login attempt.
* [ ]  Required only for selected situations (e.g., new devices, unrecognized IP addresses).
* [ ]  Required only for password resets and critical account changes.
* [ ]  Other: \__________

### 6. OTP Security and Rate Limiting -

**What security rules should apply to OTP resend and failed attempts?**

* [ ]  Standard limits (e.g., temporary block after 3-5 failed attempts, 60-second resend cooldown).
* [ ]  Strict limits (e.g., account lock after 3 failed attempts requiring admin intervention).
* [ ]  No specific rate limits applied initially.
* [ ]  Other: \__________

### 7. Data Retention Post-Deletion -

**What should happen to the customer's data after account deletion?**

* [ ]  Hard delete (immediate and permanent removal of all personal data).
* [ ]  Soft delete (account deactivated and hidden, but data retained for a specific legal/recovery period).
* [ ]  Anonymization (personal identifiable information removed, but transaction history kept for analytics).
* [ ]  Other: \__________ 

### 8. Session Management and Duration -

**What should be the mechanism and duration for user sessions before they expire?**

* [ ]  Short duration for high security (e.g., expires after 15-30 minutes of inactivity).
* [ ]  Standard duration (e.g., expires after 24 hours of inactivity).
* [ ]  Persistent sessions / "Remember Me" (e.g., remains active for 30 days unless explicitly logged out).
* [ ]  Platform-specific (e.g., persistent on Mobile apps, shorter duration on Web).
* [ ]  Other: \__________


## Answer

**2.1 تكرار التحقق عبر رمز OTP**
### **هل التحقق برمز (OTP) مطلوب في كل عملية تسجيل دخول أم في حالات محددة فقط؟**
* العميل: تسجيل الدخول برقم الجوال فقط، ويصل رمز التحقق عبر SMS أو WhatsApp.
* الإدارة والموظفون والشركاء: تسجيل الدخول برقم الجوال أو البريد الإلكتروني حسب اختيار المستخدم، ويرسل رمز التحقق إلى الوسيلة المختارة.
* لا يطلب OTP عند كل فتح للتطبيق طالما الجلسة صالحة.


**2.2 الاحتفاظ بالبيانات بعد حذف الحساب**
### **ما هو الإجراء المتبع تجاه بيانات العميل بعد حذف الحساب؟**
* حذف الحساب: Soft Delete مع إخفاء الهوية والاحتفاظ فقط بالبيانات المطلوب حفظها نظاميًا.


**2.3 إدارة الجلسات ومدتها**
### **ما هي الآلية والمدة المحددة لجلسات المستخدمين قبل انتهاء صلاحيتها؟**
* الجلسة: تذكرني لمدة 30 يومًا ما لم يسجل المستخدم الخروج أو توجد حالة أمنية تستوجب إعادة التحقق.


**2.4 طريقة تسجيل الدخول الأساسية**
### **ما هي طريقة تسجيل الدخول الأساسية: رقم الجوال، أم البريد الإلكتروني، أم كلاهما بالتساوي؟**
* العميل: رقم الجوال فقط.
* الإدارة والموظفون والشركاء: الجوال أو البريد الإلكتروني حسب الاختيار.


 **2.5 تصميم واجهة تسجيل الدخول**
### **كيف يجب أن يكون شكل شاشة تسجيل الدخول؟**
* العميل: حقل رقم الجوال فقط.
* الإدارة والموظفون والشركاء: اختيار «رقم الجوال / البريد الإلكتروني».


**2.6 أمان رمز التحقق (OTP) ومعدل المحاولات**
### **ما هي القواعد الأمنية التي يجب تطبيقها على إعادة إرسال رمز التحقق ومحاولات الإدخال الفاشلة؟**
* قيود قياسية، إعادة الإرسال بعد 60 ثانية، وصلاحية الرمز 10 دقائق، مع حظر مؤقت عند تكرار المحاولات الفاشلة.


**2.7 بيانات العميل الإلزامية**
### **ما هي البيانات الإلزامية التي يجب على العميل إدخالها لإتمام التسجيل وإنشاء الحساب؟**
* رقم الجوال إلزامي ومتحقق منه عبر OTP، وتُستكمل بقية البيانات المطلوبة للعضوية.


**2.8 صلاحية الموقع الجغرافي (GPS) للعميل**
### **ما هو السلوك المعتمد في حال رفض العميل منح صلاحية الموقع الجغرافي (Location Permission)؟**
- لا يمنع استخدام التطبيق عند رفضه. تتوقف فقط الوظائف المعتمدة على الموقع، مثل «الأقرب» والتحقق من الموقع عند استخدام QR. يمكن اختيار المدينة يدويًا للتصفح والبحث. العضوية السارية تتطلب الموقع عند استخدام QR لتأكيد وجود العميل بالمركز، والمنتهية تنتقل للتجديد دون طلب الموقع، وغير المشترك يستطيع مشاهدة المركز والخصم دون طلب الموقع.


---

## Sources

|Source Section|Description|
|---|---|
|Section 5|الدخول والتسجيل|