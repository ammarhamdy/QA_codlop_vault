---
requirement_id: REQ-PTM-001
title: Property Type Management
priority: High
status: Draft
epic_link: Property Management
tags:
  - requirement
  - property-management
  - property-types
---

## Description

The system shall allow administrators to manage **Property Types** that classify real estate properties. Property Types are shared data used throughout the system and affect both the administration panel and the public website.

Examples of property types include, but are not limited to:
- Land
- Apartment
- Building
- Villa

## Functional Requirements

### FR-PTM-001 — View Property Types

The administrator shall be able to view all existing Property Types.

Each Property Type shall display:
- Name
- Associated Property Categories
- Status (Enabled / Disabled)
- Creation date (if available)
- Last update date (if available)

### FR-PTM-002 — Create Property Type

The administrator shall be able to create a new Property Type.

**Required fields:**

| Field | Required | Description |
|-------|----------|-------------|
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

### FR-PTM-003 — Update Property Type

The administrator shall be able to modify an existing Property Type.

Editable fields:
- Name
- Associated Property Categories

The changes shall be reflected immediately throughout the system.

### FR-PTM-004 — Delete Property Type

The administrator shall be able to permanently delete a Property Type.

Deletion shall only be allowed if the Property Type is not currently referenced by existing properties. Otherwise, the system shall prevent deletion and display an appropriate validation message.

### FR-PTM-005 — Enable / Disable Property Type

Each Property Type shall have an activation status.

Possible values:
- Enabled
- Disabled

Newly created Property Types shall be **Enabled** by default.

The administrator shall be able to change the status at any time.

## Business Rules

| ID | Rule |
|----|------|
| BR-PTM-001 | Every Property must belong to exactly one Property Type. |
| BR-PTM-002 | Only **Enabled** Property Types shall appear when creating a new Property. |
| BR-PTM-003 | Only **Enabled** Property Types shall appear when editing an existing Property. |
| BR-PTM-004 | Only **Enabled** Property Types shall appear in the public website's property search filters. |
| BR-PTM-005 | Disabled Property Types shall be hidden from: Property creation forms, Property update forms, and Public website search filters. |
| BR-PTM-006 | Disabling a Property Type shall not modify existing properties already assigned to that Property Type. Existing property records shall preserve their assigned Property Type unless explicitly changed by an administrator. |
| BR-PTM-007 | A Property Type may belong to one or more Property Categories. |
| BR-PTM-008 | A Property Type cannot exist without at least one associated Property Category. |

## Validation Rules

| ID | Rule |
|----|------|
| VR-PTM-001 | The **Name** field shall not be empty when creating or updating a Property Type. |
| VR-PTM-002 | The **Name** shall be unique across all Property Types. |
| VR-PTM-003 | At least one Property Category must be selected when creating a Property Type. |
| VR-PTM-004 | Deletion of a Property Type shall be blocked if the Property Type is referenced by one or more existing Properties. The system shall return a validation message indicating the reason for the block. |

## Permissions

| ID | Permission | Description |
|----|-----------|-------------|
| PER-PTM-001 | View Property Types | Administrator role shall be required to view the Property Types list. |
| PER-PTM-002 | Create Property Types | Administrator role shall be required to create a new Property Type. |
| PER-PTM-003 | Update Property Types | Administrator role shall be required to modify an existing Property Type. |
| PER-PTM-004 | Delete Property Types | Administrator role shall be required to delete a Property Type. |
| PER-PTM-005 | Enable / Disable Property Types | Administrator role shall be required to change the activation status of a Property Type. |

TODO: Clarify whether specific sub-roles or permission levels within the administration panel apply.

## Dependencies

- **Property Category Management** — Property Types require at least one associated Property Category to exist.
- **Property Management** — Property Types are consumed when creating and updating Properties.
- **Public Website** — Property Types are consumed by the public website's property search filters.

## System Impact

Property Types are consumed by the following modules:
- Property Management (Create Property)
- Property Management (Update Property)
- Public Website Search Filters
- Property Details and Classification

Any modification to a Property Type shall automatically affect all modules that consume the active Property Type list.

## API Behavior

### Create Property Type

**Endpoint:**

```
POST /dashboard/property-settings/property-types
```

**Request parameters:**

| Parameter | Type | Required | Description |
|-----------|------|----------|-------------|
| name | string | Yes | Property Type name |
| category_ids[] | integer[] | Yes (at least one) | List of associated Property Category IDs |

**Example request:**

```http
POST /dashboard/property-settings/property-types

name=Land
category_ids[]=1
category_ids[]=2
category_ids[]=3
category_ids[]=4
```

TODO: Specify response format, error codes, and HTTP status codes for success and failure scenarios.

### Update Property Type

TODO: Define endpoint, request parameters, and response format for updating a Property Type.

### Delete Property Type

TODO: Define endpoint, request parameters, and response format for deleting a Property Type.

### Enable / Disable Property Type

TODO: Define endpoint, request parameters, and response format for toggling the activation status of a Property Type.

### List Property Types

TODO: Define endpoint, filtering, sorting, and pagination for listing Property Types.

## Acceptance Criteria

- [ ] An administrator can view a list of all Property Types with Name, Associated Categories, Status, Creation date, and Last update date.
- [ ] An administrator can create a new Property Type with a unique Name and at least one associated Property Category.
- [ ] An administrator can update the Name and Associated Categories of an existing Property Type.
- [ ] An administrator can delete a Property Type that is not referenced by any existing Property.
- [ ] The system shall prevent deletion of a Property Type that is referenced by existing Properties and display a validation message.
- [ ] An administrator can enable or disable a Property Type.
- [ ] Newly created Property Types are Enabled by default.
- [ ] Disabled Property Types are hidden from Property creation forms, Property update forms, and public website search filters.
- [ ] Disabling a Property Type does not affect existing Properties assigned to that Property Type.
- [ ] Changes to a Property Type are reflected immediately in all consuming modules.
