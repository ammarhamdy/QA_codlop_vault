# M06 — Memberships

## Overview / Module Purpose

This module manages customer memberships, membership levels, subscriptions, renewals, auto-renewal, gifting, and the customer membership card.

---

## Scope

This module covers:

* Membership plans.
* Membership levels.
* Membership pricing.
* Membership duration.
* Membership benefits.
* Membership activation.
* Membership renewal.
* Auto-renewal.
* Upgrade and downgrade rules.
* Membership status.
* Membership history.
* Membership gifting.
* Customer membership card.

---

## Requirements

### Memberships

[[REQ-025_Memberships]]

### Membership Level Management

[[REQ-026_Membership_Level_Management]]

### Membership Renewal

[[REQ-027_Membership_Renewal]]

### Auto Renewal

[[REQ-028_Auto_Renewal]]

### My Card

[[REQ-029_My_Card]]

### Membership Gifting

[[REQ-038_Membership_Gifting]]

---

## Open Questions

### 1. Membership Levels

**Which membership levels should be available at launch?** -

* [x] ==Basic==, Silver, Gold, and Diamond. 👈
* [ ] Basic, Silver, and Gold.
* [ ] Basic and Premium only.
* [ ] Admin can create and manage membership levels.
* [ ] Other: \__________


### 2. Membership Duration

**What should be the standard membership duration?**

* [x] One year.
* [ ] Different duration can be configured per membership level.
* [ ] Different duration can be configured per subscription.
* [ ] Admin can configure the available durations.
* [ ] Other: \__________


### 3. Membership Status

**Which membership statuses should be available?**

* [ ] Pending, Active, Expired, and Cancelled.
* [ ] Pending, Active, Suspended, Expired, and Cancelled.
* [x] Active and Expired only.
* [ ] Admin can configure membership statuses.
* [ ] Other: \__________


### 4. Level Upgrade & Downgrade

**How should membership level changes work?**

* [ ] Customers can only upgrade.
* [ ] Customers can upgrade or downgrade according to configured rules.
* [x] Level changes happen automatically based on usage.
* [ ] Admin manually approves level changes.
* [ ] Different rules can be configured per membership level.
* [ ] Other: \__________


### 5. Renewal

**When should customers be allowed to renew their membership?**

* [ ] Only after the membership expires.
* [ ] Before expiration only.
* [x] Both before and after expiration.
* [ ] Renewal period is configurable by the admin.
* [ ] Other: \__________


### 6. Auto-Renewal

**How should auto-renewal work?**

* [x] Enabled by default. 👈
* [ ] Disabled by default and customer must enable it.
* [ ] Customer chooses during subscription.
* [ ] Auto-renewal is available only for selected membership levels.
* [ ] Admin can configure the auto-renewal policy.
* [ ] Other: \__________


### 7. Membership Gifting

**Who can receive a gifted membership?**

* [x] Existing customers only.
* [ ] New customers only.
* [ ] Both existing and new customers.
* [ ] Eligibility depends on the membership type.
* [ ] Other: \__________


### 8. Membership Card

**What should the customer membership card contain?**

* [ ] Customer name, membership level, membership number, QR code, start date, and expiry date.
* [x] The above information plus membership benefits.
* [ ] Complete membership details defined by the admin.
* [ ] Card information is fixed and cannot be configured.
* [ ] Other: \__________

### 20. Membership Levels Naming and Management

**Are the names of the four membership levels fixed, or should they be completely manageable from the control panel?**

* [ ]  Fixed values (Basic, Silver, Gold, Diamond) that cannot be changed.
* [x]  Fully dynamic and manageable (names can be added, edited, or deleted from the admin panel).
* [ ]  Partially dynamic (default names exist, but admins can modify them).
* [ ]  Other: \__________

### 21. Annual Membership Duration and Calculation

**How should the exact duration (start and end dates) of the annual membership be calculated?**

* [ ]  Exactly 365 days from the precise date of purchase/activation.
* [ ]  Fixed calendar year (e.g., ends on December 31st regardless of purchase date).
* [ ]  Configurable duration entirely managed by the admin per membership level.
* [ ]  Other: \__________

### 22. Membership Level Pricing

**How will the prices for the different membership levels be defined?**

* [ ]  Fixed prices hard-coded into the system. 👈
* [ ]  Dynamic prices fully manageable from the admin control panel.
* [ ]  Variable pricing dynamically based on user segments or promotional campaigns.
* [ ]  Other: \__________

### 23. Membership Level Benefits

**How are the specific benefits for each membership level defined and managed?**

* [ ]  Fixed, pre-defined benefits hard-coded into the system for each level.
* [x]  Dynamic benefits fully manageable and assignable via the admin control panel.
* [ ]  Hybrid (core fixed benefits, with additional dynamic perks managed by admins).
* [ ]  Other: \__________

### 24. Membership Transition Rules (Upgrades/Downgrades)

**What are the rules and mechanisms for transitioning between membership levels?**

* [ ]  User-initiated only (the user must manually purchase an upgrade/downgrade).
* [x]  Automatic system transition based on predefined usage metrics or loyalty rules.
* [ ]  Admin-initiated only (manual level change by administrators from the control panel).
* [ ]  A combination of user-initiated purchases and automatic policy-based transitions.
* [ ]  Other: \__________


### 25. Membership Level Change Authority

**Who is responsible for changing or updating a user's membership level: the system automatically, the administration manually, or both?**

* [ ]  Automatically by the system only (based on predefined rules or usage metrics).
* [ ]  Manually by the administration only.
* [x]  Both (the system applies automatic rules, and the administration can intervene manually).
* [ ]  Other: \__________

---

**حذف مستويات العضوية المأهولة بالعملاء (Deleting Populated Levels)**
**كيف يجب أن يتعامل النظام عند محاولة الإدارة "حذف" مستوى عضوية يضم عملاء نشطين؟**
* [ ] الرفض القاطع (Restrict Deletion) للعملية ومنع الحذف نهائياً طالما يوجد عملاء نشطون مسجلون في هذا المستوى.
* [ ] نقل العملاء (Migration) وإجبار الإدارة على اختيار مستوى عضوية بديل لترحيل العملاء إليه قبل السماح بحذف المستوى القديم.
* [ ] الحذف الناعم (Soft Delete) بحيث يُخفى المستوى وتُمنع الاشتراكات أو التجديدات الجديدة عليه، مع استمرار سريان المزايا للعملاء الحاليين حتى انتهاء مدة عضويتهم.
* [ ] غير ذلك: \__________


**آلية احتساب «الاستخدام» لخفض مستوى العضوية (Usage Calculation for Downgrades)**
**ما هي المعادلة الرقمية أو مؤشرات الأداء المحددة التي سيقيسها النظام لتقييم "الاستخدام" وخفض مستوى عضوية العميل تلقائياً؟**
* [ ] عدد مرات الاستفادة من الخصومات المباشرة وتسجيل الزيارات المؤكدة عبر مسح رمز الاستجابة السريعة (QR).
* [ ] إجمالي حجم الإنفاق المالي للعميل داخل المنصة (عبر عمليات "اشترِ خدمة" و"احجز خدمة") خلال الدورة السنوية.
* [ ] لا توجد معادلة تلقائية؛ يتم تقييم الاستخدام وتخفيض المستوى يدوياً من قبل الإدارة بناءً على تقارير الأداء الدورية.
* [ ] غير ذلك: \__________


**حساب «مدة العضوية» السنوية (Annual Membership Duration)**
**كيف تُحسب مدة العضوية "السنوية" المعتمدة في النظام بدقة لضبط تواريخ الانتهاء والتجديد؟**
* [ ] نافذة زمنية متحركة (Rolling Window) تعادل 365 يوماً تبدأ بشكل دقيق من تاريخ تفعيل العميل للاشتراك.
* [ ] سنة تقويمية ثابتة (Fixed Calendar Year) تنتهي لجميع العملاء في نهاية السنة الميلادية (31 ديسمبر) بغض النظر عن تاريخ الاشتراك الفعلي.
* [ ] مدة ديناميكية متغيرة تُدار بالكامل من لوحة التحكم لكل مستوى عضوية على حدة، ولا ترتبط بالضرورة بـ 365 يوماً.
* [ ] غير ذلك: \__________


**حذف مستويات العضوية المأهولة بالعملاء (Deleting Populated Levels)**
**كيف يجب أن يتعامل النظام عند محاولة الإدارة "حذف" مستوى عضوية يضم عملاء نشطين؟**
* [ ] الرفض القاطع (Restrict Deletion) للعملية ومنع الحذف نهائياً طالما يوجد عملاء نشطون مسجلون في هذا المستوى.
* [ ] نقل العملاء (Migration) وإجبار الإدارة على اختيار مستوى عضوية بديل لترحيل العملاء إليه قبل السماح بحذف المستوى القديم.
* [ ] الحذف الناعم (Soft Delete) بحيث يُخفى المستوى وتُمنع الاشتراكات أو التجديدات الجديدة عليه، مع استمرار سريان المزايا للعملاء الحاليين حتى انتهاء مدة عضويتهم.
* [ ] غير ذلك: \__________


**تجديد العضوية**
**متى يُسمح للعملاء بتجديد عضويتهم؟**
* [ ] بعد انتهاء صلاحية العضوية فقط.
* [ ] قبل انتهاء صلاحية العضوية فقط.
* [ ] قبل وبعد انتهاء صلاحية العضوية (كلاهما يدعمه النظام).
* [ ] فترة وقواعد التجديد قابلة للإدارة والتخصيص من قبل الإدارة عبر لوحة التحكم.
* [ ] غير ذلك: \__________


**إهداء العضوية للعملاء المشتركين (Active Membership Gifting)**
**ماذا يحدث في النظام إذا تم إهداء عضوية لعميل يمتلك حساباً ولديه عضوية سارية بالفعل؟**
(ملاحظة: بالرجوع إلى وثيقة "تكافل — منصة الخصومات والخدمات الطبية"، نصت المتطلبات على أن النظام يتحقق مما إذا كان الشخص المُهدى إليه لديه حساب موجود مسبقاً، ولكن لم يتم توضيح أو تحديد الإجراء النظامي إذا كان هذا الحساب يمتلك عضوية نشطة بالفعل).
* [ ] تُرفض عملية الإهداء مباشرة، ويظهر تنبيه للمُهدي بأن العميل يمتلك عضوية سارية ولا يمكن إهداؤه في الوقت الحالي.
* [ ] تُقبل العملية، وتُضاف العضوية المُهداة في "قائمة الانتظار" (Queuing) لتُفعّل تلقائياً فور انتهاء مدة العضوية الحالية.
* [ ] تُقبل العملية، ويتم تحويل قيمة العضوية المُهداة إلى رصيد أو قسيمة (Voucher) في حساب المُهدى إليه ليستخدمها متى شاء لتجديد اشتراكه مستقبلاً.
* [ ] تُقبل العملية وتستبدل العضوية الحالية فوراً (سواء كانت ترقية لمستوى أعلى أو فقداناً للمدة المتبقية)، وتُحسب المدة الجديدة من تاريخ الإهداء.
* [ ] غير ذلك: \__________


**إهداء العضوية لحساب بعضوية منتهية (Gifting to an Expired Membership)**
**ماذا يحدث في النظام إذا تم إهداء عضوية لعميل يمتلك حساباً بالفعل، ولكن عضويته السابقة "منتهية"؟**
(ملاحظة: تنص المتطلبات على أن النظام يتحقق مما إذا كان الشخص المُهدى إليه لديه حساب موجود مسبقاً، ويدعم تجديد العضوية المنتهية، لكن الملاحظات أكدت أنه "لم يتم تحديد وقت تفعيل العضوية المُهدى بها" أو آلية دمج الإهداء مع سجل العضوية المنتهية).
* [ ] تُفعّل العضوية المُهداة فوراً وتُعامل كعملية "تجديد" (Renewal) للعضوية المنتهية، مع الاحتفاظ بنفس رقم العضوية وسجل العميل السابق.
* [ ] تُصدر عضوية جديدة تماماً برقم جديد وتبدأ مدتها فور إتمام المُهدي لعملية الدفع، وتُترك العضوية القديمة المنتهية في الأرشيف.
* [ ] تُضاف العضوية المُهداة إلى حساب العميل، ولا تبدأ مدة صلاحيتها (365 يوماً) إلا بعد دخول العميل المُهدى إليه للنظام والضغط على زر "تفعيل/قبول الهدية".
* [ ] غير ذلك: \__________


---
## Sources

| Source Section | Description           |
| -------------- | --------------------- |
| Section 25     | العضويات              |
| Section 26     | إدارة مستويات العضوية |
| Section 27     | تجديد العضوية         |
| Section 28     | التجديد التلقائي      |
| Section 29     | بطاقتي                |
| Section 38     | إهداء العضوية         |
