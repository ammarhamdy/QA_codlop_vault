---

type: requirement  
project: Takaful  
source_document: Takaful_Client_Requirements_Original_v1.0  
source_section: "67"  
status: extracted  
tags:

- takaful
    
- requirement
    
- environments
    
- development
    
- staging
    
- production
    
- deployment
    

---

# Requirement Group: Operating Environments

## Source Reference

**Document:** Takaful_Client_Requirements_Original_v1.0

**Original Section:** 67

**Original Title:** بيئات التشغيل

---

## Normalized Requirements

### RQ-0856

**Requirement:**

> يجب فصل بيئة Development عن بيئة Staging وبيئة Production.

**Source:** Section 67 — بيئات التشغيل

---

### RQ-0857

**Requirement:**

> يجب توفير بيئة Staging منفصلة عن بيئة Production لاختبار التغييرات قبل تشغيلها على النظام الفعلي.

**Source:** Section 67 — بيئات التشغيل

---

### RQ-0858

**Requirement:**

> يجب عدم اختبار الوظائف الجديدة مباشرة على بيئة Production.

**Source:** Section 67 — بيئات التشغيل

---

## Source Notes

- لم يتم تحديد آلية إدارة النشر بين البيئات.
    
- لم يتم تحديد صلاحيات الوصول لكل بيئة.
    
- لم يتم تحديد استراتيجية CI/CD.
    
- لم يتم تحديد مدى تطابق Staging مع Production.