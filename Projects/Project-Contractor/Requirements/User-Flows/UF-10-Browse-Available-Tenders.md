---
id: UF-10
name: Browse Available Tenders
actor: Professional
goal: Browse and discover open tenders available for bidding without requiring registration or login
entry: Public application landing / "Browse Tenders" catalog screen
pre: Application is accessible; user has not authenticated (anonymous access permitted)
post_success: Professional views a list of published tenders with status Open whose expiration dates are in the future
post_failure: Tenders list fails to load, error message is presented, and user is offered a retry option
reqs: [FR-02, BR-02, BR-04, FR-14]
status: Draft
---

## Main Flow

| # | Actor Action | System Response | Ref |
|---|--------------|-----------------|-----|
| 1 | Opens the application or navigates to the public "Browse Tenders" page. | Acknowledges public request without prompting for login or phone verification. | SCR-PUB-01, BR-02 |
| 2 | Awaits catalog loading. | Queries published tenders filtering strictly by `status = 'Open'` and `end_date > CURRENT_TIMESTAMP`. Excludes all Closed, Expired, and Awarded tenders. | BR-04, FR-14 |
| 3 | Reviews the list of available tenders. | Displays tender cards showing cover image, project title, project type, city, district, project area, budget, and remaining time until expiration. | FR-02, BR-04 |
| 4 | Clicks on a specific tender card to see full specifications. | Navigates to the public Tender Details screen (UF-11). | FR-03 |

## Alternatives & Errors

| ID | At Step | Condition | System Behavior | Resumes At |
|----|---------|-----------|-----------------|------------|
| A1 | 2       | No tenders currently meet the active Open criteria | Displays empty state: "No available tenders at the moment. Please check back later." | End (success) |
| A2 | 3       | Actor applies search keywords or filters (e.g. by city, project type, budget) *(Assumption: standard browse filtering capability)* | Applies filter criteria on top of `status = 'Open'` and updates the displayed tender list. | Step 3 |
| E1 | 2       | Network failure or backend retrieval error | Displays error notification: "Unable to load tenders. Please check your internet connection and try again." Provides a "Retry" button. | Step 1 |

## Diagram (optional: only if 3+ branches)

```mermaid
flowchart TD
    A([Start: Open Browse Tenders]) --> B[Query Tenders: status == Open & end_date > now]
    B --> C{Query Successful?}
    C -- Network/Server Error: E1 --> D[Show Error Message & Retry] --> B
    C -- Yes --> E{Open Tenders Found?}
    E -- No: A1 --> F[Display Empty State: 'No Available Tenders'] --> G([End])
    E -- Yes --> H[Render Available Tenders Cards]
    H --> I{Search / Filter Applied? A2}
    I -- Yes --> J[Apply Filter to Open Tenders] --> K[Actor Selects Tender]
    I -- No --> K
    K --> L([End: Navigate to UF-11])
```
