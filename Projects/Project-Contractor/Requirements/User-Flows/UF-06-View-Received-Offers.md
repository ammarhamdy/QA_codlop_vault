---
id: UF-06
name: View Received Offers
actor: Tender Owner
goal: View and track all offers submitted by professionals for a specific owned tender
entry: View Offers action button on Tender Details screen
pre: Tender Owner is authenticated; requested tender belongs to the authenticated owner
post_success: List of all submitted offers for the tender is displayed showing professional names, pricing, duration, submission dates, and statuses (Pending or Accepted)
post_failure: Offers cannot be retrieved, error message is displayed, and user is provided a retry option
reqs: [FR-09, BR-10, BR-12]
status: Draft
---

## Main Flow

| # | Actor Action | System Response | Ref |
|---|--------------|-----------------|-----|
| 1 | Clicks "View Offers" on the Tender Details screen. | Verifies tender ownership against authenticated session. | SCR-OFF-01, BR-12 |
| 2 | Awaits system response. | Queries and retrieves all offers linked to `tender_id`. | FR-09, BR-10 |
| 3 | Reviews the offers listing. | Displays the offers cards showing professional name, proposed price, execution duration, submission timestamp, and status (`Pending` or `Accepted`). | FR-09, BR-10 |
| 4 | Clicks an offer card to view full proposal. | Directs the actor to the Offer Details screen (UF-07). | FR-10 |

## Alternatives & Errors

| ID | At Step | Condition | System Behavior | Resumes At |
|----|---------|-----------|-----------------|------------|
| E1 | 1       | Tender belongs to another owner | Blocks access, logs security violation, and displays unauthorized error message. | End (fail) |
| A1 | 2       | No offers have been submitted yet for this tender | Displays empty state: "No offers have been submitted for this tender yet." Displays current tender status. | Step 3 |
| A2 | 3       | An offer has already been accepted for this tender | Displays the accepted offer prominently marked with "Accepted" badge, while continuing to list all other offers with status "Pending" per BR-10. | Step 3 |
| A3 | 3       | Multiple offers submitted by the same professional (BR-08) | Displays each submitted offer distinctly with its respective submission date, price, and proposal details. | Step 3 |
| E2 | 2       | Network failure or backend query timeout | Displays error message: "Unable to load offers. Please try again." Shows a "Retry" button. | Step 1 |

## Diagram (optional: only if 3+ branches)

```mermaid
flowchart TD
    A([Start: Click View Offers]) --> B[Verify Tender Ownership]
    B --> C{Owner Valid?}
    C -- No: E1 --> D[Show 'Unauthorized Access' Error] --> E([End: Fail])
    C -- Yes --> F[Query Offers for tender_id]
    F --> G{Query Successful?}
    G -- No: E2 --> H[Show Error & Retry Button] --> F
    G -- Yes --> I{Offers Count > 0?}
    I -- No: A1 --> J[Display Empty State: 'No Offers Yet'] --> K([End])
    I -- Yes --> L{Is One Offer Accepted?}
    L -- Yes: A2 --> M[Highlight Accepted Offer; List Remaining as Pending]
    L -- No --> N[List All Offers as Pending]
    M --> O[Select Offer to View Details: UF-07] --> P([End])
    N --> O
```
