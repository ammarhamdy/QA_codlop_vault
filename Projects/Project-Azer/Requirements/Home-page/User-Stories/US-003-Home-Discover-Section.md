---
us_id: US-HOME-003
title: View Discover Section Content
priority:
  - High
status:
  - todo
tags:
  - requirement
---

## Story Description
**As a** website visitor  
**I want to** view the Discover section and its educational offerings  
**So that** I can explore the available resources and services

## Acceptance Criteria
- [ ] **Scenario 1:** Given the home page is loaded -> When the Discover section is displayed -> Then the section title is visible
    
- [ ] **Scenario 2:** Given the home page is loaded -> When the Discover section is displayed -> Then the section description is visible
    
- [ ] **Scenario 3:** Given the home page is loaded -> When the Discover section is displayed -> Then all configured discover cards are visible
    
- [ ] **Scenario 4:** Given a discover card exists -> When the card is displayed -> Then its title is visible
    
- [ ] **Scenario 5:** Given a discover card exists -> When the card is displayed -> Then its description is visible
    
- [ ] **Scenario 6:** Given a discover card exists -> When the card is displayed -> Then its image is visible

# JSON content
```json
"discover": {
"title": "كل ما تحتاجه في مكان واحد",
"description": "مجموعة متنوعة من الموارد التعليمية المصممة لكل مرحلة عمرية",
"type": "discover",
"items": [
{
  "title": "الكتب التعليمية",
  "description": "مكتبة ضخمة من الكتب لجميع المراحل",
  "image": "https://malkat-dashboard.codlop.sa/storage/site-texts/01c9fef7-fad4-49fc-84cf-910ec800c6d2.webp"
},
{
  "title": "الأنشطة التفاعلية",
  "description": "أنشطة ممتعة تُعزز التعلّم باللعب",
  "image": "https://malkat-dashboard.codlop.sa/storage/site-texts/d5665cda-771f-43be-b813-693c8edb1bd7.webp"
},
{
  "title": "الدورات التعليمية",
  "description": "دورات أونلاين وحضورية متخصصة",
  "image": "https://malkat-dashboard.codlop.sa/storage/site-texts/e1eacc5b-8f71-4f52-8f07-c644e4f72a4f.webp"
},
{
  "title": "الخدمات التعليمية",
  "description": "خدمات مخصصة للمدارس والمؤسسات",
  "image": "https://malkat-dashboard.codlop.sa/storage/site-texts/9771f541-cbb8-416f-aea1-5f73a5e90205.webp"
},
{
  "title": "المنتجات التعليمية",
  "description": "ألعاب تعليمية\r\nوأدوات للتعلّم",
  "image": "https://malkat-dashboard.codlop.sa/storage/site-texts/a95d7964-4525-4727-9f54-4da8dd5a1dfa.webp"
}
]
}
```