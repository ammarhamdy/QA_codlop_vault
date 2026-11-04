---
tc_id: TC-EXPTND-012
title: Verify Scheduled Cron Cadence Triggers Expiration Worker Automatically
priority: Low
status: Ready
type: Functional
linked_requirement: Projects/Project-Contractor/Requirements/User-Flows/UF-13-Tender-Automatic-Expiration.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Configured Cron Schedule | Regular periodic interval (e.g., every minute or every 5 minutes) |
| System Actor | Scheduled cron runner / background task |

# Preconditions
1. Cron scheduler service / task queue daemon is running in the background.
2. System monitoring and cron log auditing are enabled.

# Steps
1. Inspect the crontab / worker scheduler configuration for the tender expiration job.
2. Allow the configured schedule interval to elapse without manual triggers.
3. Check the cron execution logs and application metrics for automated job invocation.
4. Verify execution timestamps of successive worker runs.

# Expected Result
1. The expiration worker triggers automatically at the designated schedule interval without human intervention.
2. Each run logs start time, execution duration, records queried, and termination status.
3. System resources are returned to idle state between scheduled cycles.

# Notes
- Validates Main Flow Step 1 in UF-13 (Assumption: worker runs at regular periodic intervals).

# Attachments

# Script

---
*Last Updated: 2026-11-04 13:48*
