---
id: UF-04
name: View Tender Details
actor: Tender Owner
goal: View comprehensive details, attachments, current status, and management actions for an owned tender
entry: Clicking/tapping an owned tender item from "My Tenders" list
pre: Tender Owner is authenticated; requested tender was created by the authenticated owner
post_success: Full tender details, uploaded assets, status badge, received offers count, and contextual action buttons are displayed
post_failure: Error message is displayed, access is blocked if unauthorized, and user is redirected to My Tenders
reqs: [FR-06, BR-05, BR-06, BR-10, BR-12]
status: Draft
---

## Main Flow

| # | Actor Action | System Response | Ref |
|---|--------------|-----------------|-----|
| 1 | Selects a specific tender from the "My Tenders" list. | Validates user session and verifies that `owner_id` of the tender matches the authenticated user. | SCR-TND-03, BR-12 |
| 2 | Awaits system response. | Loads and renders complete tender information: title, description, project type, city, district, coordinates, project area, budget, expiration date (`end_date`), cover image, attachments, and current status (`Open`, `Closed`, `Expired`, `Awarded`). | FR-06, BR-12 |
| 3 | Reviews tender details. | System presents contextual action controls based on tender status: "View Offers" (shows count), "Edit Tender" (enabled if status != Awarded), and "Close Tender" (enabled only if status == Open). | BR-05, BR-06, BR-10 |
| 4 | Chooses an available action (e.g., View Offers, Edit Tender, Close Tender). | Navigates the actor to the corresponding user flow (UF-05, UF-06, or UF-09). | FR-06 |

## Alternatives & Errors

| ID | At Step | Condition | System Behavior | Resumes At |
|----|---------|-----------|-----------------|------------|
| E1 | 1       | Requested tender ID does not exist | Displays error: "Tender not found." Redirects to My Tenders list. | End (fail) |
| E2 | 1       | Tender belongs to a different owner | Enforces ownership boundary: returns access denied error ("Unauthorized access") and redirects to My Tenders. | End (fail) |
| A1 | 3       | Tender status is `Awarded` | Displays status badge "Awarded". Hides/disables "Edit Tender" (BR-05) and "Close Tender" buttons; preserves "View Offers" button. | Step 3 |
| A2 | 3       | Tender status is `Closed` or `Expired` | Displays corresponding status badge. Hides/disables "Close Tender" button (BR-06); preserves "View Offers" and "Edit Tender" (if unawarded). | Step 3 |
| A3 | 3       | Actor downloads an attached document | Serves the requested tender attachment file for download or preview. | Step 3 |

## Diagram (optional: only if 3+ branches)

```mermaid
flowchart TD
    A([Start: Select Tender]) --> B[Verify Tender Ownership]
    B --> C{Tender Exists & Owned by Actor?}
    C -- Not Found: E1 --> D[Show 'Tender Not Found'] --> E([End: Redirect My Tenders])
    C -- Other Owner: E2 --> F[Show 'Unauthorized Access'] --> E
    C -- Yes: Valid --> G[Render Tender Information]
    G --> H{Evaluate Tender Status}
    H -- Status is Open --> I[Show View Offers, Edit Tender, and Close Tender Actions]
    H -- Status is Awarded: A1 --> J[Show View Offers only; Disable Edit & Close]
    H -- Status is Closed/Expired: A2 --> K[Show View Offers & Edit; Disable Close]
    I --> L[Actor Selects Action: UF-05 / UF-06 / UF-09] --> M([End])
    J --> L
    K --> L
```
