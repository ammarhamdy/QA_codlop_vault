---

type: requirement  
project: Takaful  
source_document: Takaful_Client_Requirements_Original_v1.0  
source_section: "64"  
status: extracted  
tags:

- takaful
    
- requirement
    
- cybersecurity
    
- authentication
    
- api-security
    
- application-security
    
- data-security
    

---

# Requirement Group: Cybersecurity

## Source Reference

**Document:** Takaful_Client_Requirements_Original_v1.0

**Original Section:** 64

**Original Title:** الأمن السيبراني

---

## Normalized Requirements

### RQ-0815

**Requirement:**

> يجب استخدام HTTPS/TLS لحماية الاتصالات بين مكونات النظام والمستخدمين وفق البنية المعتمدة.

**Source:** Section 64 — الأمن السيبراني

---

### RQ-0816

**Requirement:**

> يجب تشفير كلمات المرور وفق آلية آمنة ومعتمدة.

**Source:** Section 64 — الأمن السيبراني

---

### RQ-0817

**Requirement:**

> يجب تطبيق آلية Secure Authentication لحماية عمليات المصادقة.

**Source:** Section 64 — الأمن السيبراني

---

### RQ-0818

**Requirement:**

> يجب توفير حماية مناسبة لرموز OTP.

**Source:** Section 64 — الأمن السيبراني

---

### RQ-0819

**Requirement:**

> يجب تطبيق Rate Limiting على العمليات التي تتطلب الحماية من الاستخدام المتكرر أو المسيء.

**Source:** Section 64 — الأمن السيبراني

---

### RQ-0820

**Requirement:**

> يجب تطبيق RBAC للتحكم في وصول المستخدمين إلى وظائف وبيانات النظام.

**Source:** Section 64 — الأمن السيبراني

---

### RQ-0821

**Requirement:**

> يجب تطبيق Session Security لحماية جلسات المستخدمين.

**Source:** Section 64 — الأمن السيبراني

---

### RQ-0822

**Requirement:**

> يجب تطبيق API Authentication لحماية واجهات API.

**Source:** Section 64 — الأمن السيبراني

---

### RQ-0823

**Requirement:**

> يجب تطبيق Input Validation على البيانات المدخلة إلى النظام.

**Source:** Section 64 — الأمن السيبراني

---

### RQ-0824

**Requirement:**

> يجب توفير حماية ضد SQL Injection.

**Source:** Section 64 — الأمن السيبراني

---

### RQ-0825

**Requirement:**

> يجب توفير حماية ضد XSS.

**Source:** Section 64 — الأمن السيبراني

---

### RQ-0826

**Requirement:**

> يجب تطبيق حماية CSRF حسب البنية التقنية للنظام.

**Source:** Section 64 — الأمن السيبراني

---

### RQ-0827

**Requirement:**

> يجب تطبيق آلية آمنة لرفع الملفات والتحقق من الملفات المرفوعة.

**Source:** Section 64 — الأمن السيبراني

---

### RQ-0828

**Requirement:**

> يجب توفير آلية آمنة لإدارة الأسرار والمفاتيح وبيانات الاعتماد الحساسة (Secret Management).

**Source:** Section 64 — الأمن السيبراني

---

### RQ-0829

**Requirement:**

> يجب توفير Logging مناسب للعمليات والأحداث الأمنية والتشغيلية وفق الحاجة.

**Source:** Section 64 — الأمن السيبراني

---

### RQ-0830

**Requirement:**

> يجب تطبيق آلية آمنة لمعالجة الأخطاء (Error Handling) بحيث لا تكشف معلومات حساسة.

**Source:** Section 64 — الأمن السيبراني

---

### RQ-0831

**Requirement:**

> يجب عدم إظهار المعلومات الحساسة للمستخدمين غير المصرح لهم أو ضمن رسائل النظام غير المناسبة.

**Source:** Section 64 — الأمن السيبراني

---

## Source Notes

- هذا القسم يحدد متطلبات أمنية عالية المستوى وليس Security Architecture تفصيليًا.
    
- بعض المتطلبات تعتمد على البنية التقنية، مثل CSRF.
    
- لم يتم تحديد خوارزميات التشفير أو سياسات كلمات المرور.
    
- لم يتم تحديد آليات إدارة الأسرار.
    
- لم يتم تحديد سياسة الاحتفاظ بالسجلات الأمنية.
    
- لم يتم تحديد معايير الاختبار الأمني أو Penetration Testing.