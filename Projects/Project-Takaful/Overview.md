# تكافل — Project Overview

> [!abstract] Project  
> **Project:** تكافل — منصة الخصومات والخدمات الطبية  
> **Document:** Project Overview  
> **Specification Version:** Executive Version 1.0  
> **Documentation Status:** In Analysis  
> **Last Updated:** 2026-09-01

---

# 1. Project Summary

تكافل هي منصة رقمية للعضويات والخصومات والخدمات الطبية، تربط العملاء بالمراكز والمنشآت الطبية والصحية المشاركة.

تهدف المنصة إلى تمكين العميل من:

- الاستفادة من الخصومات الطبية.
    
- شراء خدمات طبية محددة.
    
- حجز خدمات مقابل رسوم حجز دون تحديد موعد.
    
- الاستفادة من العروض الطبية.
    
- استخدام الكوبونات والأكواد الطبية.
    
- إدارة وتجديد العضوية.
    
- البحث عن المراكز والخدمات.
    
- اكتشاف المراكز والعروض من خلال المحتوى المرئي.
    
- استخدام QR للتحقق من العضوية والخصومات والزيارات.
    

---

# 2. Project Vision

بناء منظومة رقمية متكاملة تجعل تكافل حلقة وصل بين:

```text
Customer
    ↓
Membership
    ↓
Medical Center
    ↓
Discount / Service
    ↓
QR / Location
    ↓
Visit
    ↓
Purchase / Booking
    ↓
Payment
    ↓
Notification
    ↓
Operations
    ↓
Sales / Marketing
    ↓
Contracts
    ↓
Complaints / Quality
    ↓
Finance
    ↓
Reporting
```

المطلوب النهائي ليس مجموعة شاشات منفصلة، وإنما **نظام واحد مترابط وقابل للتشغيل التجاري الفعلي**.

---

# 3. System Channels

يشمل المشروع عدة قنوات وأنظمة رئيسية:

|Channel / System|Purpose|
|---|---|
|Customer App|تجربة العميل والاستفادة من خدمات تكافل|
|Website|الوصول العام والاشتراك والبحث والخدمات|
|Admin Panel|إدارة وتشغيل المنصة|
|Medical Center System|إدارة المراكز والفروع والخدمات والعمليات المرتبطة بها|
|Backend|منطق النظام والـ APIs|
|Database|تخزين بيانات النظام|
|External Integrations|الدفع، SMS، WhatsApp، Maps وغيرها|

---

# 4. Target Platforms

## Customer Application
- iOS
- Android
- Huawei
    

## Web
- Customer Website
- Administration Panel
    

---

# 5. Supported Languages

الإصدار الأول يدعم:

- العربية
    
- الإنجليزية
    
- الفرنسية
    
- الهندية
    
- الأردية
    
- الفلبينية
    
- الصينية
    

مع:

- RTL للعربية.
    
- LTR لبقية اللغات.
    
- إدارة الترجمات من لوحة الإدارة.
    
- تعديل الترجمات دون إعادة برمجة.
    
- إمكانية استخدام الترجمة التلقائية مع المراجعة اليدوية.
    

---

# 6. Major System Modules

> هذه هي خريطة النظام عالية المستوى.  
> التفاصيل موجودة داخل كل Module.

|ID|Module|Responsibility|
|---|---|---|
|[[M01_Platform_Scope]]|Platform & Scope|حدود المشروع ومكونات النظام|
|[[M02_Customer_Authentication]]|Customer & Authentication|التسجيل والدخول والحساب والجلسات|
|[[M03_Location_Discovery]]|Location & Discovery|المدينة والموقع والأقرب والبحث|
|[[M04_Medical_Centers]]|Medical Centers|المراكز والفروع والبيانات|
|[[M05_Medical_Services]]|Medical Services|الخدمات الطبية والشراء والحجز|
|[[M06_Membership]]|Membership|العضويات والمستويات والتجديد|
|[[M07_Discounts_Offers]]|Discounts & Offers|الخصومات والعروض|
|[[M08_QR]]|QR System|QR والتحقق والزيارات|
|[[M09_Content_Discovery]]|Content & Discovery|اكتشف والريلز والمحتوى|
|[[M10_Coupons]]|Coupons|الكوبونات وأكواد المتاجر|
|[[M11_Notifications]]|Notifications|Push / SMS / WhatsApp / Email|
|[[M12_Marketing_Sales]]|Marketing & Sales|الحملات والمبيعات والإحالات|
|[[M13_Operations_Workforce]]|Operations & Workforce|الموظفون والمهام والأدوار|
|[[M14_Complaints_Quality]]|Complaints & Quality|الشكاوى والرقابة والجودة|
|[[M15_Finance_Payments]]|Finance & Payments|المدفوعات والفواتير والتسويات|
|[[M16_Reporting_Audit]]|Reporting & Audit|التقارير والتصدير وAudit Logs|
|[[M17_Admin_Configuration]]|Admin & Configuration|إعدادات النظام وإدارة المحتوى|
|[[M18_Platform_Engineering]]|Platform Engineering|Infrastructure / Security / Backup / Deployment|

---

# 7. Core Business Domains

يمكن تجميع الموديولات السابقة في نطاقات أكبر:

## Customer Domain

- [[M02_Customer_Authentication]]
    
- [[M03_Location_Discovery]]
    
- [[M06_Membership]]
    
- [[M08_QR]]
    
- [[M09_Content_Discovery]]
    
- [[M10_Coupons]]
    
- [[M11_Notifications]]
    

## Medical Domain

- [[M04_Medical_Centers]]
    
- [[M05_Medical_Services]]
    
- [[M07_Discounts_Offers]]
    
- [[M08_QR]]
    

## Commercial Domain

- [[M06_Membership]]
    
- [[M07_Discounts_Offers]]
    
- [[M10_Coupons]]
    
- [[M12_Marketing_Sales]]
    
- [[M15_Finance_Payments]]
    

## Operations Domain

- [[M04_Medical_Centers]]
    
- [[M13_Operations_Workforce]]
    
- [[M14_Complaints_Quality]]
    
- [[M17_Admin_Configuration]]
    

## Platform Domain

- [[M15_Finance_Payments]]
    
- [[M16_Reporting_Audit]]
    
- [[M18_Platform_Engineering]]
    

---

# 8. Core Business Model

المفهوم الأساسي للنظام:

```text
Customer
    │
    ├── Membership
    │       │
    │       └── Membership Level
    │
    └── Discover
            │
            ├── Medical Center
            │       │
            │       ├── Branch
            │       ├── Discount
            │       ├── Service
            │       └── Offer
            │
            ├── Buy Service
            │
            ├── Book Service
            │
            └── QR
                    │
                    ├── Membership Validation
                    ├── Location Validation
                    └── Visit
```

---

# 9. Core Customer Journey

التجربة الرئيسية للعميل يمكن تلخيصها مبدئيًا:

```text
Open App
    ↓
Select / Detect City
    ↓
Login / Register
    ↓
Browse / Search / Discover
    ↓
Find Medical Center
    ↓
Choose:
    ├── Direct Discount
    ├── Buy Service
    ├── Book Service
    ├── Offer
    └── Coupon
```

ثم حسب العملية:

```text
Direct Discount
    ↓
Membership Validation
    ↓
QR
    ↓
Location Validation
    ↓
Confirmed Visit
```

أو:

```text
Buy Service
    ↓
Service Details
    ↓
Payment
    ↓
Purchase
    ↓
Reference Number
    ↓
My Purchases
```

أو:

```text
Book Service
    ↓
Booking Fee
    ↓
Payment
    ↓
Booking Number
    ↓
Contact Center
    ↓
Visit Center
    ↓
Pay Remaining Amount at Center
```

> لا يعتبر «احجز خدمة» في الإصدار الحالي نظام حجز مواعيد.

---

# 10. Core Administrative Journey

```text
Admin
  ↓
Dashboard
  ↓
Manage
  ├── Customers
  ├── Memberships
  ├── Centers
  ├── Branches
  ├── Services
  ├── Discounts
  ├── Offers
  ├── QR
  ├── Coupons
  ├── Content
  ├── Notifications
  ├── Marketing
  ├── Sales
  ├── Contracts
  ├── Complaints
  ├── Quality
  ├── Finance
  ├── Reports
  └── Permissions
```

---

# 11. Major Integrations

The project may integrate with:

- Payment Gateway
    
- SMS Provider
    
- WhatsApp Provider
    
- Email Provider
    
- Maps / Location Services
    
- Apple Developer Services
    
- Google Play Services
    
- Huawei Services
    
- Firebase
    
- Analytics
    
- Crash Reporting
    
- Cloud / Hosting
    
- CDN
    

All external services must be documented with:

- Purpose
    
- Provider
    
- Pricing
    
- Pricing model
    
- Account ownership
    
- Technical dependency
    

---

# 12. Project-Wide Cross-Cutting Concerns

These concerns affect multiple modules and therefore must not be treated as isolated features:

### Security

- Authentication
    
- Authorization
    
- RBAC
    
- Rate Limiting
    
- Session Security
    
- API Security
    
- Input Validation
    
- Secure File Upload
    
- Secret Management
    
- Logging
    

### Localization

- Multi-language
    
- RTL / LTR
    
- Translation Management
    

### Payments

- Payment lifecycle
    
- Webhooks
    
- Duplicate prevention
    
- Refunds
    
- Reconciliation
    

### Auditability

- Audit Logs
    
- User actions
    
- Data changes
    
- Sensitive operations
    

### Notifications

- Push
    
- SMS
    
- WhatsApp
    
- Email
    

### Observability

- Monitoring
    
- Error Logs
    
- Crash Reporting
    
- Performance Monitoring
    
- Alerts
    

---

# 13. Project Environments

The system must have separated environments:

```text
Development
     ↓
Staging
     ↓
Production
```

New functionality must not be tested directly on Production.

---

# 14. Delivery Lifecycle

The project is expected to follow:

```text
Requirements Analysis
        ↓
Architecture
        ↓
UI/UX
        ↓
Backend
        ↓
Customer App
        ↓
Website
        ↓
Admin Panel
        ↓
Employees & Permissions
        ↓
Integrations
        ↓
Payments
        ↓
QR
        ↓
Testing
        ↓
UAT
        ↓
Deployment
        ↓
Final Handover
```

---

# 15. Quality & Acceptance

A phase is not considered complete merely because a screen or URL has been delivered.

Completion requires:

- Functionality implemented.
    
- Backend integration where required.
    
- Testing completed.
    
- Major defects addressed.
    
- Client testing completed.
    
- Client approval.
    

---

# 16. Definition of Change

### Bug

أي وظيفة لا تعمل وفق المواصفة المعتمدة.

### Missing Requirement

متطلب موجود في النطاق المعتمد ولم يتم تنفيذه.

### Change Request

وظيفة جديدة غير موجودة في:

- العقد.
    
- هذا الملحق.
    
- المتطلبات المعتمدة.
    
- التصاميم المعتمدة.
    
- المتطلبات اللازمة مباشرة لتشغيل وظيفة منصوص عليها.
    

ويجب أن يخضع Change Request لاتفاق كتابي مستقل عند الحاجة.

---

# 17. Final System

النتيجة المطلوبة:

> نظام تكافل حي ومتكامل وقابل للتشغيل التجاري الفعلي.

ويجب أن تعمل المكونات كمنظومة واحدة:

```text
Customer
    ↓
Membership
    ↓
Medical Center
    ↓
Discount
    ↓
QR
    ↓
Location
    ↓
Visit
    ↓
Service
    ↓
Purchase / Booking
    ↓
Payment
    ↓
Notification
    ↓
Reporting
    ↓
Employees
    ↓
Sales
    ↓
Marketing
    ↓
Contracts
    ↓
Complaints
    ↓
Quality
    ↓
Finance
    ↓
Administration
```

---

# 18. Documentation Navigation

## Requirements

[[01_Requirements]]

## Modules

[[02_Modules]]

## Workflows

[[03_Workflows]]

## Business Rules

[[04_Business_Rules]]

## Test Cases

[[05_Test_Cases]]

## UI / UX

[[06_UI_UX]]

## Technical Documentation

[[07_Technical]]

## Architecture Decisions

[[08_Decisions]]

## References

[[09_References]]

---

# 19. Project Traceability Model

The documentation follows this relationship:

```text
CLIENT DOCUMENT
      │
      ↓
REQUIREMENTS
      │
      ↓
MODULES
      │
      ↓
SUB-MODULES
      │
      ↓
BUSINESS RULES
      │
      ↓
WORKFLOWS
      │
      ↓
UI / UX
      │
      ↓
TEST CASES
      │
      ↓
IMPLEMENTATION
      │
      ↓
UAT / ACCEPTANCE
```

Each layer should reference the layer above and below it.

---

# 20. Current Analysis Status

> [!warning] Analysis In Progress  
> The client document is currently being transformed from a linear specification into a structured requirements system.

### Current Status

-  Client document received.
    
-  Initial project scope identified.
    
-  High-level system domains identified.
    
-  Atomic requirements extraction.
    
-  Final module boundaries.
    
-  Sub-module decomposition.
    
-  Business rule extraction.
    
-  Workflow extraction.
    
-  Cross-module dependencies.
    
-  UI/UX traceability.
    
-  Test-case traceability.
    
-  Final requirements baseline.
    

---

# 21. Source of Truth

The original client specification remains the source document.

Structured documentation in this vault is a **derived representation** of that specification.

No requirement should be removed during restructuring merely because it appears redundant, unclear, or difficult to implement.

Potential conflicts, ambiguities, and questions should be recorded separately as analysis findings.

---

# 22. Project-Level Open Questions

-  Confirm final technology stack.
    
-  Confirm architecture.
    
-  Confirm payment provider.
    
-  Confirm SMS provider.
    
-  Confirm WhatsApp provider.
    
-  Confirm Maps provider.
    
-  Confirm hosting provider and region.
    
-  Confirm analytics solution.
    
-  Confirm supported device versions.
    
-  Confirm browser support.
    
-  Confirm final UI/UX design scope.
    
-  Confirm legal/compliance requirements.
    
-  Confirm exact membership rules.
    
-  Confirm financial settlement rules.
    
-  Confirm SLA values.
    
-  Confirm external-service ownership.
    

---

# 23. Change Log

|Date|Change|Author|
|---|---|---|
|2026-09-01|Initial Project Overview created|—|