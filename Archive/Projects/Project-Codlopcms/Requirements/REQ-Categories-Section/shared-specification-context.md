# Software Requirements Specification — Dynamic Categories Section

**Document scope:** Home screen "Categories" section only (App Builder / Admin Panel + Mobile Application renderer). **Out of scope:** Banners, Products, Sliders, Search, Cart, Checkout, Profile, Authentication, Navigation, Notifications, and any other Home screen section.

---

## 1. Feature Overview

### 1.1 Purpose

The Dynamic Categories section allows business users to configure and publish a categories block on the mobile app's Home screen entirely through the Admin Panel, without requiring a new mobile app release. The mobile application renders this section purely from a JSON configuration document.

### 1.2 Business Value

- Enables non-technical business users to change how categories are presented (layout, styling, source, ordering) without engineering involvement.
- Reduces app-store release cycles for merchandising changes.
- Supports market/tenant-specific presentation (e.g., RTL Arabic titles, brand colors) from a single codebase.
- Allows rapid experimentation (e.g., toggling between internal vs. third-party category sources) for merchandising strategy.

### 1.3 Responsibilities of the Admin Panel

- Provide UI to create, configure, and manage one or more Categories sections on the Home screen.
- Allow configuration of: layout, visual style, display settings, category source, category selection, category order, and enabled/disabled state.
- Validate configuration before publishing.
- Generate and expose the Categories JSON configuration consumed by the mobile app.

### 1.4 Responsibilities of the Mobile Application

- Treat the Categories section as a generic, data-driven UI block with no hardcoded layout logic.
- Download, parse, and validate the JSON configuration.
- Resolve the configured category source and load the corresponding category data.
- Apply style and settings from the JSON.
- Render the appropriate layout.
- Degrade gracefully when configuration is missing, incomplete, or invalid.
- Reflect any Admin Panel change upon the next Home screen refresh.

---

## 2. Functional Requirements

### 2.1 Section Creation


### 2.2 Section (General) Configuration


### 2.3 Layout Configuration


### 2.4 Style Configuration


### 2.5 Settings Configuration


### 2.6 Category Source Configuration


### 2.7 Category Selection


### 2.8 Category Ordering


### 2.9 Enable / Disable Behavior


### 2.10 JSON Generation


### 2.11 Mobile Rendering


## 3. JSON Contract

### 3.1 Top-Level Fields

|Property|Description|Purpose|Type|Required|Allowed Values|Default Behavior|Validation Rules|Rendering Impact|
|---|---|---|---|---|---|---|---|---|
|`id`|Unique section identifier|Distinguish this section instance|string|Required|System-generated unique string|N/A — always generated|Must be unique within Home screen config|Used internally for section lookup; not rendered|
|`section_key`|Rendering variant key|Maps section to a specific template variant|string|Required|Closed list (e.g., `type_two`)|None|Must correspond to a supported variant|Determines which rendering sub-template is used|
|`type`|Section type discriminator|Routes JSON to Categories renderer|string|Required|`category`|N/A — fixed|Must equal `category`|Mobile app dispatches payload to Categories module|
|`layout`|Layout template identifier|Determines visual layout/grid behavior|string|Required|Closed list (e.g., `type-two`)|None|Must be a supported layout|Determines component structure used to render section|
|`title`|Section heading text|Display label for the section|string|Required if `showTitle` is true; otherwise optional|Free text (UTF-8/RTL supported)|Empty/omitted if `showTitle` is false|Should be non-empty when displayed|Rendered as section header text|
|`enabled`|Section visibility flag|Controls whether section appears on Home|boolean|Required|`true`, `false`|Assume `false` if missing (see Assumptions)|Must be boolean|`false` excludes section entirely from rendering|
|`style`|Visual styling object|Container for all style properties|object|Required|See Section 3.2|Renderer defaults used per missing sub-field (see Assumptions)|Must be a valid object matching schema|Drives all visual styling of the section|
|`settings`|Behavioral/display configuration object|Container for all settings properties|object|Required|See Section 3.3|Renderer defaults used per missing sub-field (see Assumptions)|Must be a valid object matching schema|Drives data source, columns, visibility toggles|

### 3.2 `style` Object

|Property|Description|Type|Required|Allowed Values|Default Behavior|Validation|Rendering Impact|
|---|---|---|---|---|---|---|---|
|`background`|Section background color|string (hex)|Optional|Valid hex color|Renderer default background|Must be valid hex format|Fills section background (ignored if `transparentBackground` is true)|
|`titleColor`|Title text color|string (hex)|Optional|Valid hex color|Renderer default text color|Must be valid hex format|Colors the title text when `showTitle` is true|
|`textColor`|Body/item text color|string (hex)|Optional|Valid hex color|Renderer default text color|Must be valid hex format|Colors category item labels|
|`radius`|Section container corner radius|number|Optional|≥ 0|0|Must be non-negative|Rounds section container corners|
|`padding`|Section internal padding|number|Optional|≥ 0|0|Must be non-negative|Adds internal spacing around section content|
|`itemRadius`|Category item corner radius|number|Optional|≥ 0|0|Must be non-negative|Rounds individual category item corners|
|`shadow`|Section shadow style|string|Optional|Closed list (e.g., `none`)|`none`|Must match supported value|Applies/omits drop shadow on section container|
|`transparentBackground`|Whether section background is transparent|boolean|Optional|`true`, `false`|`false`|Must be boolean|When `true`, `background` is not applied|
|`hideBorder`|Whether section border is hidden|boolean|Optional|`true`, `false`|`false`|Must be boolean|When `true`, no border is drawn around section|
|`titleGap`|Spacing below the title|number|Optional|≥ 0|0|Must be non-negative|Adds spacing between title and category list|
|`gapTop`|Spacing above the section|number|Optional|≥ 0|0|Must be non-negative|Adds spacing before section starts|
|`gapBottom`|Spacing below the section|number|Optional|≥ 0|0|Must be non-negative|Adds spacing after section ends|
|`ctaTextColor`|CTA label text color|string (hex)|Optional|Valid hex color|Renderer default|Must be valid hex format|Colors CTA text when `showCta` is true|
|`ctaBackgroundColor`|CTA button background color|string (hex)|Optional|Valid hex color|Renderer default|Must be valid hex format|Colors CTA button background when `showCta` is true|
|`priceColor`|Price text color|string (hex)|Optional|Valid hex color|Renderer default|Must be valid hex format|Colors price text when `showPrice` is true|
|`highlightBadgeTextColor`|Highlight badge text color|string (hex)|Optional|Valid hex color|Renderer default|Must be valid hex format|Colors badge text when `highlight` is not `none`|
|`highlightBadgeBackgroundColor`|Highlight badge background color|string (hex)|Optional|Valid hex color|Renderer default|Must be valid hex format|Colors badge background when `highlight` is not `none`|

### 3.3 `settings` Object

|Property|Description|Type|Required|Allowed Values|Default Behavior|Validation|Rendering Impact|
|---|---|---|---|---|---|---|---|
|`showTitle`|Toggles title visibility|boolean|Optional|`true`, `false`|`true` (assumed)|Must be boolean|Hides title and its gap when `false`|
|`showBannerTextCta`|Toggles banner-style text CTA|boolean|Optional|`true`, `false`|`false` (assumed)|Must be boolean|Controls a secondary banner text CTA element (see Open Questions)|
|`ctaText`|CTA label text|string|Optional|Free text (UTF-8/RTL supported)|Empty|No strict validation beyond length limit|Rendered as CTA label when `showCta` is `true`|
|`showCta`|Toggles primary CTA visibility|boolean|Optional|`true`, `false`|`false` (assumed)|Must be boolean|Shows/hides the CTA element|
|`columns`|Number of grid columns|integer|Optional (required for grid layouts)|Positive integer within supported range|Layout-defined default|Must be positive integer within supported range|Determines items-per-row for grid layouts|
|`categoryType`|Classification of category origin|string|Required|Closed list (e.g., `third_party`)|None|Must be a supported value|Determines which category-selection data model is used|
|`categorySource`|Concrete data source for categories|string|Required|Closed list (e.g., `external_categories`)|None|Must be a supported value; consistent with `categoryType`|Determines API/data source used to resolve categories|
|`showPrice`|Toggles price display on items|boolean|Optional|`true`, `false`|`false` (assumed)|Must be boolean|Shows/hides price per category item|
|`highlight`|Highlight badge mode|string|Optional|Closed list (e.g., `none`)|`none`|Must be a supported value|Controls badge rendering on category items|
|`data-object`|Selected internal category records|array|Conditionally required (when `categoryType` is internal)|Array of objects/IDs|Empty array|Must be array; entries must reference valid internal categories|Populates category list when internal source is used|
|`data-strings`|Selected external category IDs|array of strings|Conditionally required (when `categoryType` is `third_party`)|Array of non-empty strings|Empty array|Must be array of unique, non-empty strings|Populates category list when external source is used; order defines render order|

---

## 4. Rendering Lifecycle

1. **Admin Panel (Configuration):** Admin creates/edits a Categories section — selecting layout, style, settings, category source, category selection, and order — and saves/publishes the change.
2. **Backend (Persistence & Generation):** The backend persists the configuration and generates/updates the Categories JSON object as part of the Home screen configuration payload.
3. **JSON Delivery:** The mobile application requests the Home screen configuration (on app launch and/or Home screen refresh) and receives the JSON, including the Categories section object.
4. **Mobile App — Parsing:** The mobile app parses the raw JSON into an internal model.
5. **Mobile App — Validation:** The app validates required fields, data types, and allowed values against the documented contract (Section 3). Sections failing validation are excluded from rendering (Section 5).
6. **Mobile App — Enabled Check:** The app checks `enabled`. If `false`, the section is skipped entirely (no reserved layout space).
7. **Mobile App — Source Resolution:** The app reads `categoryType` and `categorySource`, and resolves the corresponding data provider (internal vs. external/third-party).
8. **Mobile App — Category Data Loading:** The app loads category records for each identifier listed in `data-strings`/`data-object`, in the specified order.
9. **Mobile App — Style Application:** The app applies all `style` values to the section container and its category items.
10. **Mobile App — Settings Application:** The app applies all `settings` values (title visibility, CTA, columns, price display, highlight mode) to control layout and item behavior.
11. **Mobile App — Layout Rendering:** The app selects the rendering template based on `layout`/`section_key` and renders the section using the resolved data, style, and settings.
12. **Mobile App — Graceful Degradation:** If any step (parsing, validation, source resolution, data loading) fails partially or fully, the app applies the corresponding fallback behavior defined in Section 5, without impacting other Home screen sections.

---

## 5. Error Handling

|Scenario|Expected Behavior|
|---|---|
|Missing required top-level field (e.g., `type`, `layout`, `categorySource`)|Section fails validation and is excluded from rendering; error is logged, not surfaced to the end user.|
|Empty category list (`data-strings`/`data-object` both empty)|Section is treated as having no content; recommended behavior is to hide the section (exact behavior to be confirmed — see Open Questions).|
|Invalid/unresolvable category ID(s)|The specific unresolved category item(s) are skipped; remaining valid categories render normally in their configured relative order.|
|Unsupported `layout` value|Section is excluded from rendering; error is logged for diagnostics.|
|Invalid style value (e.g., malformed hex color, negative spacing)|The specific invalid style property falls back to the renderer's default value; the rest of the section renders normally.|
|Invalid settings value (e.g., non-boolean for a boolean field, out-of-range `columns`)|The specific invalid setting falls back to its default/renderer-defined value; the rest of the section renders normally.|
|Disabled section (`enabled: false`)|Section is fully excluded from rendering; no layout space reserved.|
|Malformed JSON (fails to parse)|The entire Categories section is excluded from rendering; other Home screen sections continue to render normally; error is logged.|
|Category source unreachable/timeout|Section renders in a loading or empty state per general Home screen network-error handling (outside this feature's scope), then retries on next refresh.|

---

## 6. Assumptions

- **A-01:** If `enabled` is missing from the JSON, the mobile app treats the section as disabled (`false`) rather than crashing or defaulting to visible, favoring fail-safe behavior.
- **A-02:** Missing optional `style` sub-fields fall back to layout-specific renderer defaults rather than causing validation failure.
- **A-03:** Missing optional `settings` sub-fields (`showTitle`, `showCta`, `showBannerTextCta`, `showPrice`) default to `false`/hidden, except `showTitle`, which is assumed to default to `true` since a title was provided in the sample payload.
- **A-04:** `data-object` is the internal-category counterpart to `data-strings`, used when `categoryType` refers to platform-native categories rather than `third_party`.
- **A-05:** Only one of `data-object` or `data-strings` is populated at a time, corresponding to the selected `categoryType`.
- **A-06:** The order of elements within `data-strings`/`data-object` is authoritative for rendering order; there is no separate/explicit "order" or "priority" field.
- **A-07:** `columns` only applies to grid-based layouts (such as `type-two`) and is ignored/hidden for non-grid layouts.
- **A-08:** Category records (name, image, price) are resolved by the mobile app or backend at render/fetch time, and are not embedded directly in the Categories JSON — the JSON contains only references (IDs), not the resolved category content itself.
- **A-09:** Admin Panel changes take effect at the next Home screen data fetch/refresh, with no requirement for real-time push updates.
- **A-10:** Color fields are represented as hex strings (as shown in the sample payload); no other color formats (e.g., RGBA, named colors) are currently supported.

---

## 7. Open Questions

1. What is the precise, distinct behavior of `showBannerTextCta` versus `showCta` — are these two separate CTA elements rendered simultaneously, or mutually exclusive variants of the same element?
2. What is the minimum number of categories required to enable/publish a Categories section? Is zero categories a valid (empty) state, or is it blocked at save time?
3. When `data-object` is used (internal categories), what is its exact element schema (object shape: ID only, or ID + overrides)?
4. What is the complete closed list of supported values for `layout`/`section_key`, `categoryType`, `categorySource`, `shadow`, and `highlight`? Only single examples are provided in the sample JSON.
5. What is the supported range for `columns` (minimum/maximum) per layout?
6. When a configured category ID fails to resolve, should the mobile app silently omit it, show a placeholder/error state item, or retry?
7. Is there a separate "publish" action distinct from "save," or does saving immediately update the live JSON consumed by the mobile app?
8. Are there character-length limits for `title` and `ctaText` that the Admin Panel should enforce?
9. Can an admin configure per-category overrides (e.g., custom image, custom label) beyond what is provided by the resolved category source, or is display data strictly sourced from the category source with no overrides?
10. Is there a maximum number of categories allowed in `data-strings`/`data-object` per section?
11. Does changing `categorySource` after categories have already been selected automatically clear the previous selection, or does the Admin Panel attempt to remap/validate existing selections against the new source?
12. Is there a caching/offline behavior expected for the Categories section (e.g., show last successfully loaded categories if the network request fails on refresh)?
