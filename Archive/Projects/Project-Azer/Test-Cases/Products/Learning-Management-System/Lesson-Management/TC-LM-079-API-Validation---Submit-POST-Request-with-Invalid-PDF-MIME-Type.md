---
tc_id: TC-LM-079
title: API Validation - Submit POST Request with Invalid PDF MIME Type
priority: High
status: Ready
type: API
linked_requirement: REQ-002
tags:
  - test-case
  - api-validation
  - negative
---

# Test Data
| Field | Value |
| ----- | ----- |
| File Parameter | file=@image.png;type=image/png in a file-type lesson |

# Preconditions
- Admin makes API request.

# Steps
1. In the multipart request, upload a PNG image, but label the file parameter as `blank.pdf` with `type=image/png`.
2. Execute and inspect.

# Expected Result
- Response has Status 422 Unprocessable Entity, showing: 'The file must be a file of type: pdf.'

# Notes

# Attachments
