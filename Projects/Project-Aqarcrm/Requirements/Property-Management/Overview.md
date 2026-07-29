# Feature: Property Type Management

## Overview

The system shall allow administrators to manage **Property Types** that classify real estate properties.

Examples of property types include, but are not limited to:

- Land
- Apartment
- Building
- Villa

Property Types are shared data used throughout the system and affect both the administration panel and the public website.

---

# Functional Requirements

## FR-PT-001 - View Property Types

The administrator shall be able to view all existing Property Types.

Each Property Type shall display:

- Name
- Associated Property Categories
- Status (Enabled / Disabled)
- Creation date (if available)
- Last update date (if available)

---

## FR-PT-002 - Create Property Type

The administrator shall be able to create a new Property Type.

### Required fields

| Field | Required | Description |
|--------|----------|-------------|
| Name | Yes | The display name of the Property Type. |
| Property Categories | Yes | One or more Property Categories that can use this Property Type. |

Example:

```
Name: Land

Categories:
- Residential
- Commercial
- Agricultural
- Industrial
```

### Backend Request

```
POST /dashboard/property-settings/property-types
```

Form Data:

| Parameter | Type | Required |
|-----------|------|----------|
| name | string | Yes |
| category_ids[] | integer[] | Yes (at least one) |

Example:

```
name=Land
category_ids[]=1
category_ids[]=2
category_ids[]=3
category_ids[]=4
```

---

## FR-PT-003 - Update Property Type

The administrator shall be able to modify an existing Property Type.

Editable fields:

- Name
- Associated Property Categories

The changes shall be reflected immediately throughout the system.

---

## FR-PT-004 - Delete Property Type

The administrator shall be able to permanently delete a Property Type.

Deletion shall only be allowed if the Property Type is not currently referenced by existing properties.

Otherwise, the system shall prevent deletion and display an appropriate validation message.

---

## FR-PT-005 - Enable / Disable Property Type

Each Property Type shall have an activation status.

Possible values:

- Enabled
- Disabled

Newly created Property Types shall be **Enabled** by default.

The administrator shall be able to change the status at any time.

---

# Business Rules

## BR-PT-001

Every Property must belong to exactly one Property Type.

---

## BR-PT-002

Only **Enabled** Property Types shall appear when creating a new Property.

---

## BR-PT-003

Only **Enabled** Property Types shall appear when editing an existing Property.

---

## BR-PT-004

Only **Enabled** Property Types shall appear in the public website's property search filters.

---

## BR-PT-005

Disabled Property Types shall be hidden from:

- Property creation forms
- Property update forms
- Public website search filters

---

## BR-PT-006

Disabling a Property Type shall not modify existing properties already assigned to that Property Type.

Existing property records shall preserve their assigned Property Type unless explicitly changed by an administrator.

---

## BR-PT-007

A Property Type may belong to one or more Property Categories.

---

## BR-PT-008

A Property Type cannot exist without at least one associated Property Category.

---

# API Contract

## Create Property Type

**Endpoint**

```
POST /dashboard/property-settings/property-types
```

### Request

| Parameter | Type | Description |
|-----------|------|-------------|
| name | string | Property Type name |
| category_ids[] | integer[] | List of associated Property Category IDs |

Example:

```http
POST /dashboard/property-settings/property-types

name=Land
category_ids[]=1
category_ids[]=2
category_ids[]=3
category_ids[]=4
```

---

# System Impact

Property Types are consumed by the following modules:

- Property Management (Create Property)
- Property Management (Update Property)
- Public Website Search Filters
- Property Details and Classification

Any modification to a Property Type shall automatically affect all modules that consume the active Property Type list.