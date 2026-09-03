# M03 — Customer Discovery

## Overview / Module Purpose

This module manages how customers discover and explore medical centers, services, offers, and nearby locations.

---

## Scope

This module covers:

- City and location.
    
- Bottom navigation.
    
- Home page.
    
- Search.
    
- Filters.
    
- Nearest centers.
    
- Medical center information and discovery.
    

---

## Requirements

### City & Location

[[REQ-007_City_Location]]

### Bottom Navigation

[[REQ-008_Bottom_Navigation]]

### Home Page

[[REQ-009_Home_Page]]

### Search

[[REQ-010_Search]]

### Filters

[[REQ-011_Filters]]

### Nearest

[[REQ-012_Nearest]]

### Medical Center Page

[[REQ-013_Medical_Center_Page]]

---

## Open Questions

### 1. Browsing Without Location -

**Should customers be able to browse all cities without granting location permission?**

* [ ] Yes, customers can browse all cities without granting location permission.
* [ ] No, location permission is required before browsing cities.
* [x] Yes, but some features such as Nearest and proximity notifications require location permission.
* [ ] Other: \__________

### 2. Default City -

**What is the default city when the customer's location cannot be detected?**

* [ ] No default city; the customer must select a city manually.
* [ ] Use a predefined default city configured by the admin.
* [ ] Use the customer's previously selected city.
* [ ] Use the last known customer location/city.
* [ ] Other: \__________

### 3. Search Result Priority

**What fields should have the highest priority when ranking search results?**

* [ ] Exact center/service name match.
* [ ] Exact specialty match.
* [ ] Exact city/district match.
* [ ] Keyword relevance across all searchable fields.
* [ ] Nearest distance to the customer.
* [ ] Popularity / most used centers or services.
* [ ] Admin-defined ranking.
* [ ] Combination of the above, with priority defined by the client.
* [ ] Other: \__________

### 4. Search History -

**Should search history be stored locally or on the customer account?**

* [ ] Store locally on the customer's device only.
* [ ] Store on the customer account only.
* [ ] Store both locally and on the customer account.
* [ ] Do not store search history.
* [ ] Other: \__________

### 5. Default Sorting -

**What should be the default sorting for search and nearest results?**

* [ ] Nearest first.
* [ ] Most relevant first.
* [ ] Highest-rated first.
* [ ] Highest discount first.
* [ ] Most popular first.
* [ ] Admin-defined sorting.
* [ ] Different default sorting for Search and Nearest.
* [ ] Other: \__________

### 6. Medical Center Publishing - x

**Which medical center information is mandatory before publishing a center?**

* [ ] Center name, contact information, city, and location.
* [ ] Center name, branches, specialties, services, and location.
* [ ] Complete center profile including all required legal and operational information.
* [ ] Minimum required information defined by the admin.
* [ ] Center can be published as a draft with incomplete information.
* [ ] Different mandatory fields depending on the center type.
* [ ] Other: \__________

### 7. Search Typo Tolerance and Error Correction Limits -

**What is the intended behavior and limit for correcting minor errors (typo tolerance) in search queries?**

* [ ]  Exact match only (no correction of minor errors).
* [ ]  Basic typo tolerance (e.g., correcting 1-2 character typos or fuzzy matching).
* [ ]  Advanced typo tolerance (e.g., phonetic matching, synonyms, and smart suggestions).
* [ ]  To be determined later based on technical evaluation.
* [ ]  Other: \__________

### 8. Search History Retention and Deletion -

**What should be the retention period and deletion mechanism for the user's search history?**

* [ ]  Keep indefinitely until manually deleted by the user.
* [ ]  Keep for a specific period (e.g., 30 or 60 days) then auto-delete.
* [ ]  Keep only the most recent searches (e.g., limit to the last 10 searches).
* [ ]  Do not save search history at all.
* [ ]  Other: __________

### 9. Search Auto-Suggestions Mechanism -

**What should be the source or mechanism for search auto-suggestions while typing?**

* [ ]  Based on the user's personal search history only.
* [ ]  Based on popular/trending searches across the platform.
* [ ]  Based on direct database matching of available entities (e.g., Centers, Specialties, Services).
* [ ]  A combination of user history, popular searches, and database matching.
* [ ]  Other: \__________

### 10. Search Scope and Unification - x

**Should the search be unified across all content types or handled separately for each type?**

* [ ]  Global/Unified Search (one search bar returns mixed results for centers, services, offers, and content).
* [ ]  Categorized Search within a unified bar (users must select a category filter like "Centers" or "Offers" while searching).
* [ ]  Separate Search per section (each module or screen has its own isolated search).
* [ ]  Other: __________


## Answer

**3.1 خصائص المركز الطبي (الإلزامية والاختيارية)**
### **ما هي الحقول الإلزامية التي يجب توفرها كحد أدنى لإنشاء المركز، وما هي الحقول الاختيارية؟**
* حد أدنى إلزامي للبيانات الأساسية والتشغيلية، مع إمكانية إدارة الحقول الإلزامية من لوحة التحكم.


**3.2 الترتيب الافتراضي للنتائج**
### **ما هو الترتيب الافتراضي المعتمد لنتائج البحث ؟**
* البحث حسب الأكثر صلة، وشاشة «الأقرب» حسب المسافة، مع إمكانية التحكم بالترتيب من الإدارة.


**3.3 سجل البحث**
### **هل يجب حفظ سجل البحث محليًا على الجهاز أم على حساب العميل؟**
* محليًا وعلى حساب العميل.


**3.4 سماحية الأخطاء الإملائية وحدود التصحيح في البحث**
### **ما هو السلوك المتبع والحدود المعتمدة لتصحيح الأخطاء البسيطة (Typo Tolerance) أثناء البحث؟**
* سماحية متقدمة مع Fuzzy Matching والمرادفات والاقتراحات.


**3.5 الاحتفاظ بسجل البحث وآلية حذفه**
### **ما هي مدة الاحتفاظ بسجل البحث الخاص بالمستخدم وآلية حذفه؟**
* آخر 20 عملية مع إمكانية الحذف.


**3.6 آلية الاقتراحات التلقائية أثناء البحث**
### **ما هو المصدر أو الآلية المعتمدة لتقديم الاقتراحات التلقائية للمستخدم أثناء الكتابة في شريط البحث؟**
* مزيج من سجل المستخدم، الأكثر تداولًا، والمطابقة مع قاعدة البيانات.


 **3.7 نطاق البحث وشموليته**
### **هل يجب أن يكون البحث موحدًا عبر جميع أنواع المحتوى أم يتم البحث في كل نوع بشكل منفصل؟**
* موحد وشامل للمراكز والخدمات والعروض والمحتوى، مع تصنيف النتائج.


---

## Sources

| Source Section | Description        |
| -------------- | ------------------ |
| Section 6      | المدينة والموقع    |
| Section 7      | شريط التنقل السفلي |
| Section 8      | الصفحة الرئيسية    |
| Section 9      | البحث              |
| Section 10     | الفلاتر            |
| Section 11     | الأقرب             |
| Section 12     | صفحة المركز الطبي  |