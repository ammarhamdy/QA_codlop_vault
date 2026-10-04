---

type: requirement  
project: Takaful  
source_document: Takaful_Client_Requirements_Original_v1.0  
source_section: "68"  
status: extracted  
tags:

- takaful
    
- requirement
    
- backup
    
- recovery
    
- disaster-recovery
    

---

# Requirement Group: Backup & Recovery

## Source Reference

**Document:** Takaful_Client_Requirements_Original_v1.0

**Original Section:** 68

**Original Title:** النسخ الاحتياطية

---

## Normalized Requirements

### RQ-0859

**Requirement:**

> يجب دعم النسخ الاحتياطي لقاعدة البيانات (Database Backup).

**Source:** Section 68 — النسخ الاحتياطية

---

### RQ-0860

**Requirement:**

> يجب دعم النسخ الاحتياطي للملفات (File Backup).

**Source:** Section 68 — النسخ الاحتياطية

---

### RQ-0861

**Requirement:**

> يجب دعم النسخ الاحتياطي للوسائط (Media Backup).

**Source:** Section 68 — النسخ الاحتياطية

---

### RQ-0862

**Requirement:**

> يجب أن يطبق النظام سياسة احتفاظ (Retention Policy) للنسخ الاحتياطية.

**Source:** Section 68 — النسخ الاحتياطية

---

### RQ-0863

**Requirement:**

> يجب توفير نسخة احتياطية خارج الخادم الرئيسي عند الحاجة.

**Source:** Section 68 — النسخ الاحتياطية

---

### RQ-0864

**Requirement:**

> يجب توفير إجراء موثق لاستعادة النسخ الاحتياطية (Restore Procedure).

**Source:** Section 68 — النسخ الاحتياطية

---

### RQ-0865

**Requirement:**

> يجب اختبار عملية الاسترجاع دوريًا للتأكد من إمكانية استعادة البيانات.

**Source:** Section 68 — النسخ الاحتياطية

---

## Source Notes

- لم يتم تحديد تكرار النسخ الاحتياطي.
    
- لم يتم تحديد مدة الاحتفاظ.
    
- «نسخة خارج الخادم الرئيسي» مشروطة بالحاجة.
    
- لم يتم تحديد RPO/RTO.
    
- لم يتم تحديد موقع النسخ الاحتياطية أو متطلبات تشفيرها.