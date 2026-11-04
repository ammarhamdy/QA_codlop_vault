---
id: UF-03
name: View My Tenders
actor: Tender Owner
goal: View and track all tenders created by the authenticated owner along with their statuses and received offer counts
entry: My Tenders item in main navigation or home screen
pre: Tender Owner is authenticated
post_success: Tender Owner views the complete list of their created tenders showing status (Open, Closed, Expired, Awarded), expiration date, and offer summary
post_failure: Tenders list cannot be retrieved, error message is displayed, and user is offered a retry option
reqs: [FR-05, BR-12]
status: Draft
---

## Main Flow

| # | Actor Action | System Response | Ref |
|---|--------------|-----------------|-----|
| 1 | Selects "My Tenders" from navigation menu. | Validates owner session and initiates query for tenders associated with `owner_id`. | SCR-TND-02, BR-12 |
| 2 | Awaits system response. | Retrieves all matching tenders and displays them in a structured list/cards with title, project type, city, creation date, expiration date, status (`Open`, `Closed`, `Expired`, `Awarded`), and received offers count. | FR-05, BR-12 |
| 3 | Reviews listed tenders. | System provides interactive controls to click any tender card to navigate to its details (UF-04). | FR-05 |

## Alternatives & Errors

| ID | At Step | Condition | System Behavior | Resumes At |
|----|---------|-----------|-----------------|------------|
| A1 | 2       | Authenticated owner has not created any tenders yet | Displays empty state: "You have not created any tenders yet." Displays prominent "Create Tender" button (UF-02). | End (success) |
| A2 | 3       | Actor applies status filter (e.g., Open, Closed, Expired, Awarded) *(Assumption: standard list filtering capability)* | Filters displayed tenders list based on selected status. | Step 3 |
| E1 | 2       | Network error or backend query failure | Displays error message: "Unable to load your tenders. Please check your internet connection and try again." Provides a "Retry" button. | Step 1 |

## Diagram (optional: only if 3+ branches)

```mermaid
flowchart TD
    A([Start: My Tenders Navigation]) --> B[Query Tenders by owner_id]
    B --> C{Query Successful?}
    C -- Network/Server Error: E1 --> D[Show Error Message & Retry Option] --> B
    C -- Yes --> E{Has Created Tenders?}
    E -- No: A1 --> F[Display Empty State with 'Create Tender' CTA] --> G([End])
    E -- Yes --> H[Display Tenders List with Status & Offer Counts]
    H --> I{Filter Applied? A2}
    I -- Yes --> J[Display Filtered List] --> K[Select Tender to View Details]
    I -- No --> K
    K --> L([End: Navigate to UF-04])
```
