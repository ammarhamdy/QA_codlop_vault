
# Project Context — Dynamic Mobile App Builder

You are working on a project called **App Builder / Codlop CMS**.

Before answering any future question about this project, understand the following system context and use it as the primary project reference.

## 1. Project Purpose

The project is a **CMS-driven Mobile App Builder**.

Its main purpose is to allow administrators to configure the **appearance, structure, and content of a mobile application's home screen from an Admin Panel**, without requiring developers to hardcode every UI change or release a new mobile-app version for each content/configuration change.

The Admin Panel produces a structured **JSON configuration**, and the Mobile App consumes that configuration and dynamically renders the corresponding UI.

The core concept is:

```text
Admin Panel
     ↓
Configure App
     ↓
Generate JSON Configuration
     ↓
Backend / API
     ↓
Mobile App
     ↓
Parse JSON
     ↓
Render Dynamic UI
```

## 2. Main System Stakeholders

### Admin Panel / App Builder

Responsible for:

- Configuring the mobile application's global design.
    
- Creating and configuring home-screen sections.
    
- Selecting layouts.
    
- Configuring styles.
    
- Configuring section settings.
    
- Selecting the content/data displayed by sections.
    
- Enabling or disabling sections.
    
- Managing the order of sections.
    

### Backend / API

Responsible for:

- Storing the configuration.
    
- Providing the configuration to the Mobile App.
    
- Providing the data required by dynamic sections.
    

### Mobile Application

The Mobile App is primarily a **dynamic renderer**.

It should:

1. Fetch the configuration.
    
2. Parse the JSON.
    
3. Identify each section.
    
4. Determine its type and layout.
    
5. Apply styles.
    
6. Apply settings.
    
7. Load/display the configured data.
    
8. Render the final UI.
    

The Mobile App should reflect configuration changes after the configuration is refreshed/reloaded.

---

# 3. Global App Configuration

The App Builder can configure global visual properties such as:

- Base color
    
- Primary color
    
- Secondary color
    
- Surface colors
    
- Error colors
    
- Font family
    
- Font size
    
- Global radius
    
- Section spacing
    
- Content padding
    
- Shadow presets
    
- App Bar
    
- Navigation Bar
    
- Theme overrides
    

These settings affect the overall visual appearance of the Mobile App.

---

# 4. Dynamic Home Screen

The home screen is composed of configurable sections.

The current system supports:

```text
Newsbar
Banner
Category
Product
FAQ
Customer Review
```

Each section is represented by configuration data similar to:

```json
{
  "id": "unique-section-id",
  "section_key": "section-layout-key",
  "type": "section-type",
  "layout": "section-layout",
  "title": "Section Title",
  "enabled": true,
  "style": {},
  "settings": {}
}
```

Not every section necessarily uses exactly the same fields. Each section has its own configuration model.

---

# 5. Section Types

## Newsbar

Displays informational or promotional text.

## Banner

Displays promotional or informational banner content, primarily images.

## Category

Displays configured product categories.

## Product

Displays products using configurable layouts and product-card styles.

## FAQ

Displays questions and answers, typically using an expandable/accordion UI.

## Customer Review

Displays customer ratings and review content.

---

# 6. Product Section

The Product Section is data-driven.

It can configure:

- Product layout.
    
- Product card style.
    
- Selected products.
    
- Number of columns.
    
- Product price visibility.
    
- Section title visibility.
    
- "Show More" behavior.
    
- Section styling.
    

Example:

```json
{
  "type": "product",
  "layout": "grid-two",
  "settings": {
    "columns": 2,
    "productSource": "selected_products",
    "productCardStyle": "type-one",
    "showPrice": true,
    "data-strings": [
      "product-id-1",
      "product-id-2"
    ]
  }
}
```

The `data-strings` values identify the products that should be displayed.

---

# 7. Important Configuration Concept

The JSON is the **contract between the App Builder and the Mobile App**.

The Admin Panel determines:

```text
WHAT should be displayed
+
HOW it should be configured
```

The Mobile App determines:

```text
HOW to technically render it
```

Therefore, always think about the system as:

```text
Admin Configuration
        ↓
JSON Contract
        ↓
Mobile Rendering
```

---

# 8. Important QA / Requirements Perspective

When analyzing this project, consider both sides of the system:

### Configuration Side

Does the Admin Panel generate the correct configuration?

### Contract Side

Does the generated JSON contain valid and consistent data?

### Rendering Side

Does the Mobile App correctly interpret the JSON and render the expected UI?

### Data Side

Does the Mobile App display the correct content represented by the configuration?

### Synchronization Side

Do changes made in the Admin Panel become correctly reflected in the Mobile App after refresh/reload?

---

# 9. Current Project Scope

The primary focus is the **dynamic configuration and rendering of the mobile application's home screen**.

Do not assume functionality that has not been explicitly defined.

If a future requirement, JSON structure, or feature introduces a new section or configuration option, analyze it in the context of this architecture.

---

# 10. How You Should Understand Future Requests

For any future task related to this project:

- Treat the **Admin Panel** as the configuration source.
    
- Treat the **JSON** as the contract.
    
- Treat the **Mobile App** as the renderer.
    
- Consider the relationship between configuration and rendered UI.
    
- Preserve the existing project terminology.
    
- Do not invent unsupported behavior.
    
- Clearly identify assumptions or missing requirements.
    
- When requirements are ambiguous, point out the ambiguity instead of silently deciding the behavior.
    

The ultimate goal of the project is:

> **Allow administrators to dynamically build and configure the mobile application's home-screen experience through the App Builder, while the Mobile App consumes the resulting JSON configuration and renders the correct UI and content dynamically.**