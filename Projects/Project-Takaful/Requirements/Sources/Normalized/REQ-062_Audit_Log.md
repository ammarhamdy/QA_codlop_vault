---

type: requirement  
project: Takaful  
source_document: Takaful_Client_Requirements_Original_v1.0  
source_section: "61"  
status: extracted  
tags:

- takaful
    
- requirement
    
- audit-log
    
- security
    
- compliance
    
- traceability
    

---

# Requirement Group: Audit Log

## Source Reference

**Document:** Takaful_Client_Requirements_Original_v1.0

**Original Section:** 61

**Original Title:** Audit Log

---

## Normalized Requirements

### RQ-0776

**Requirement:**

> يجب أن يسجل النظام جميع العمليات الحساسة ضمن Audit Log.

**Source:** Section 61 — Audit Log

---

### RQ-0777

**Requirement:**

> يجب أن يتضمن سجل التدقيق المستخدم الذي قام بالعملية.

**Source:** Section 61 — Audit Log

---

### RQ-0778

**Requirement:**

> يجب أن يتضمن سجل التدقيق تاريخ العملية.

**Source:** Section 61 — Audit Log

---

### RQ-0779

**Requirement:**

> يجب أن يتضمن سجل التدقيق وقت العملية.

**Source:** Section 61 — Audit Log

---

### RQ-0780

**Requirement:**

> يجب أن يتضمن سجل التدقيق نوع أو وصف العملية التي تم تنفيذها.

**Source:** Section 61 — Audit Log

---

### RQ-0781

**Requirement:**

> يجب أن يدعم سجل التدقيق تسجيل الجهاز أو عنوان IP عند الحاجة.

**Source:** Section 61 — Audit Log

---

### RQ-0782

**Requirement:**

> يجب أن يتضمن سجل التدقيق البيانات القديمة عند إجراء عملية تغيير على كيان.

**Source:** Section 61 — Audit Log

---

### RQ-0783

**Requirement:**

> يجب أن يتضمن سجل التدقيق البيانات الجديدة عند إجراء عملية تغيير على كيان.

**Source:** Section 61 — Audit Log

---

### RQ-0784

**Requirement:**

> يجب أن يتضمن سجل التدقيق الكيان المتأثر بالعملية.

**Source:** Section 61 — Audit Log

---

### RQ-0785

**Requirement:**

> يجب تسجيل تعديل الخصم ضمن العمليات الحساسة في Audit Log.

**Source:** Section 61 — Audit Log

---

### RQ-0786

**Requirement:**

> يجب تسجيل تعديل سعر ضمن العمليات الحساسة في Audit Log.

**Source:** Section 61 — Audit Log

---

### RQ-0787

**Requirement:**

> يجب تسجيل تعديل عضوية ضمن العمليات الحساسة في Audit Log.

**Source:** Section 61 — Audit Log

---

### RQ-0788

**Requirement:**

> يجب تسجيل تعديل مركز ضمن العمليات الحساسة في Audit Log.

**Source:** Section 61 — Audit Log

---

### RQ-0789

**Requirement:**

> يجب تسجيل تغيير صلاحية ضمن العمليات الحساسة في Audit Log.

**Source:** Section 61 — Audit Log

---

### RQ-0790

**Requirement:**

> يجب تسجيل إلغاء عملية ضمن العمليات الحساسة في Audit Log.

**Source:** Section 61 — Audit Log

---

### RQ-0791

**Requirement:**

> يجب تسجيل تغيير حملة ضمن العمليات الحساسة في Audit Log.

**Source:** Section 61 — Audit Log

---

## Source Notes

- عبارة «جميع العمليات الحساسة» تحتاج إلى تعريف رسمي للعمليات التي تعتبر حساسة.
    
- تسجيل الجهاز/IP مشروط بعبارة «عند الحاجة».
    
- لم يتم تحديد مدة الاحتفاظ بسجلات التدقيق.
    
- لم يتم تحديد صلاحيات الوصول إلى Audit Log.
    
- لم يتم تحديد إمكانية البحث والفلترة والتصدير لسجل التدقيق.
    
- لم يتم تحديد ما إذا كان Audit Log غير قابل للتعديل أو الحذف.