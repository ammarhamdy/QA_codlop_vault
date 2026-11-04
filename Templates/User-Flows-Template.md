---
id: UF-001
name: [Flow name]
actor: [Primary actor]
goal: [What they want to achieve]
entry: [Where/how the flow starts]
pre: [What must be true before starting]
post_success: [System state after success]
post_failure: [System state after failure]
reqs: [FR-xxx, BR-xxx]
status: Draft
---

## Main Flow

| # | Actor Action | System Response | Ref |
|---|--------------|-----------------|-----|
| 1 |              |                 | SCR-xx |
| 2 |              |                 | BR-xx  |

## Alternatives & Errors

| ID | At Step | Condition | System Behavior | Resumes At |
|----|---------|-----------|-----------------|------------|
| A1 | 2       |           |                 | Step 3     |
| E1 | 3       |           |                 | End (fail) |

## Diagram (optional: only if 3+ branches)

```mermaid
flowchart TD
    A([Start]) --> B[Step 1] --> C{Valid?}
    C -- Yes --> D[Step 2] --> F([End])
    C -- No: E1 --> B
```