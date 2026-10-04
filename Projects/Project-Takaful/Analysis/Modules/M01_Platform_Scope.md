# M01 — Platform & Scope

## Overview / Module Purpose

This module defines the overall identity and boundaries of the `Takafol` platform.

It explains:

- What `Takafol` is.
    
- What the platform provides.
    
- What is included in the project.
    
- What is outside the project scope.
    
- The supported platforms.
    
- The supported languages.
    
- The overall expected outcome of the project.

---

## Scope

This module covers:

- Project definition.
    
- Project scope.
    
- System components.
    
- Customer application.
    
- Supported operating systems.
    
- Supported languages.
    
- RTL / LTR support.
    
- Multi-language support.
    
- Project exclusions.
    
- Project boundaries.
    
- Final system outcome.
    

---

## Requirements

### Project Definition

[[REQ-001_Project_Definition]]

### Project Boundaries

[[REQ-002_Project_Boundaries]]

### Project Components

[[REQ-003_Project_Components]]

### Customer Application

[[REQ-004_Customer_Application]]

### Languages

[[REQ-005_Languages]]

### Scope Exclusions / Other Projects

[[REQ-100_Scope_Exclusions_Other_Projects]]

### Final System Outcome

[[REQ-101_Final_System_Outcome]]

---

## Open Questions

### 1. Supported Minimum OS Versions

**What is the minimum supported OS version for each platform?**

- [ ]  Use the latest OS versions only.
- [ ]  Support the latest OS version and a defined number of previous versions.
- [ ]  Define a specific minimum version for each platform.
- [x]  Use recommended minimum API level. 
- [ ]  Other: \__________

**iOS Minimum Version:** \__________  
**Android Minimum Version:** \__________  
**Huawei Minimum Version:** \__________

### 2. Officially Supported Devices

**Which devices should be officially supported and tested?**

- [ ]  All devices compatible with the supported OS versions.
- [ ]  Phones only.
- [x]  Phones and tablets.
- [ ]  Specific device models defined by the client.
- [ ]  Other: \__________

**Additional Notes:** __________

### 3. Language Availability

**Should all seven languages be available across all platforms?**

- [ ]  Yes, all seven languages must be available on Mobile App, Website, and **Admin Panel**.
- [ ]  Yes, but only on customer-facing platforms.
- [ ]  Different languages may be available on different platforms.
- [x]  The Admin Panel will support fewer languages.
- [ ]  Language availability will be defined separately per platform.
- [ ]  Other: \__________


### 4. Auto-Translation Technology or Service

**Which auto-translation technology or service should be implemented?**

* [ ]  Google Cloud Translation API.
* [ ]  Microsoft Translator.
* [ ]  Amazon Translate.
* [ ]  Manual by  
* [ ]  Other: \__________

### 5. Feature Consistency Between Platforms

**Should iOS, Android, Huawei, and ==Web== provide the same features?**

- [x]  Yes, all platforms must provide the same features.
- [ ]  Yes, except for platform-specific technical limitations.
- [ ]  Customer Mobile App platforms must have the same features, while Web may have different features.
- [ ]  Features may differ between platforms based on approved scope.
- [ ]  Other: \__________

**Any expected platform-specific differences:** __________

### 6. Additional Scope Exclusions

**Are there any additional features, services, or business areas that are explicitly outside the scope of the project?**

- [x]  No, the current scope exclusions are complete.  
- [ ]  Yes, additional exclusions will be provided.
- [ ]  Some areas are not yet decided and should be marked as out of scope until approved.
- [ ]  Other: \__________

**Additional Exclusions:** \__________


---

## Answer

**1.1 توفر اللغات**
### **هل المفروض كل اللغات السبع تكون متوفرة بكل المنصات؟**
* اللغات السبع: في تطبيق وموقع العملاء، ولوحة الإدارة عربي/إنجليزي.


**1.2 تقنية أو خدمة الترجمة التلقائية**
### **ما هي تقنية أو خدمة الترجمة التلقائية اللي المفروض نعتمد عليها بالنظام؟**
* الترجمة: Google Cloud Translation API مع إمكانية التعديل اليدوي من لوحة التحكم.


**1.3 سيناريوهات فشل خدمة الترجمة التلقائية (API Failure Fallback)**
**ما هو الإجراء المتبع في النظام في حال فشل واجهة الترجمة (Google Cloud Translation API) بالاستجابة أو استنفاد حصة الاستخدام أثناء إضافة محتوى جديد؟**
* [ ] منع الإدارة من حفظ المحتوى الأساسي وإظهار رسالة خطأ حتى تعود خدمة الترجمة للعمل.
* [ ] حفظ النص باللغة الأساسية (العربية) بنجاح، وترك حقول اللغات الأخرى فارغة، مع إشعار الإدارة بإمكانية الترجمة اليدوية لاحقاً.
* [ ] حفظ النص باللغة الأساسية ونسخه كما هو في حقول اللغات الأخرى كإجراء مؤقت لضمان عدم وجود حقول فارغة.
* [ ] غير ذلك: \__________


**1.4 آلية التعامل مع النصوص المفقودة أو الفارغة (Missing Translation Fallback)**
**في حال تم ترك حقل مخصص للغة معينة (مثل: وصف المركز باللغة الهندية) فارغاً بالخطأ في قاعدة البيانات أو لم يتم حفظه، ماذا يجب أن يعرض النظام للمستخدم النهائي لتفادي ظهور واجهة فارغة؟**
* [ ] إخفاء العنصر أو النص بالكامل من واجهة المستخدم (تجاهل العنصر).
* [ ] عرض النص باللغة الأساسية للنظام (اللغة العربية) كبديل افتراضي (Fallback).
* [ ] عرض النص باللغة الإنجليزية كبديل افتراضي ثانوي لجميع اللغات الأجنبية الأخرى.
* [ ] عرض رسالة خطأ مبرمجة في مكان النص (مثل: "الترجمة غير متوفرة").
* [ ] غير ذلك: \__________

**1.5 نطاق التفعيل التلقائي للترجمة (Scope of Auto-Translation)**
**هل تُطبق عملية الترجمة التلقائية بشكل فوري في الخلفية على كافة النصوص المدخلة، أم تقتصر على محتوى محدد لتفادي الأخطاء القانونية في أسماء الكيانات؟**
* [ ] تُطبق تلقائياً على كافة النصوص في النظام بدون استثناء (بما في ذلك أسماء المراكز الطبية، الفروع، والخدمات).
* [ ] تُطبق تلقائياً فقط على محتوى إدارة المحتوى الثابت (CMS) (مثل: الأسئلة الشائعة، الشروط والأحكام، سياسة الخصوصية، والصفحات).
* [ ] تُطبق تلقائياً على المحتوى الثابت، بينما تتطلب تأكيداً يدوياً (الضغط على زر مخصص للترجمة التلقائية) للبيانات التشغيلية والقانونية (كأسماء المراكز والخدمات) لإجبار الإدارة على مراجعتها.
* [ ] غير ذلك: \__________


---
## Sources

| Source Section | Description                        |
| -------------- | ---------------------------------- |
| Section 1      | تعريف مشروع تكافل                  |
| Section 1.1    | ما لا يعتبره المشروع               |
| Section 2      | مكونات المشروع المطلوب تنفيذها     |
| Section 3      | تطبيق العملاء                      |
| Section 4      | اللغات                             |
| Section 99     | قاعدة عدم الخلط مع مشاريع أخرى     |
| Section 100    | النتيجة المطلوبة عند نهاية المشروع |
