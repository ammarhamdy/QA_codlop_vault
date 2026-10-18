---
UF-ID: [Flow Name]
Actor: [Who]
Goal: [What they want to achieve]
Entry Point: [Where the flow starts]
Preconditions: [What must be true before starting]
Postconditions: [System state after success]
---

## Main Flow

| # | User Action | System Response |
|---|-------------|-----------------|
| 1 |             |                 |
| 2 |             |                 |
| 3 |             |                 |

## Alternative / Error Flows

| ID | At Step | Condition | Result |
|----|---------|-----------|--------|
| A1 | 2       |           |        |
| E1 | 3       |           |        |

## Diagram

```mermaid
flowchart TD
    A([Start]) --> B[Step 1]
    B --> C{Valid?}
    C -- Yes --> D[Step 2]
    C -- No --> E[Show error]
    D --> F([End])