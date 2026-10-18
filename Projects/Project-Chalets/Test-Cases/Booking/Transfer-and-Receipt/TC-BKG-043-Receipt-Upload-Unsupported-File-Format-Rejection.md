---
tc_id: TC-BKG-043
title: Verify System Rejects Unsupported Receipt File Formats
priority: Medium
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Booking/Transfer-and-Receipt-Cycle.md
tags:
  - test-case
---

# Test Data
| Field | Value |
| ----- | ----- |
| Booking Reference | `BKG-2026-000603` |
| Disallowed File Formats | `document.docx`, `receipt.txt`, `image.gif`, `script.exe`, `video.mp4` |
| Permitted Formats | `JPG`, `PNG`, `PDF` |

# Preconditions
1. Customer has an active temporary booking `BKG-2026-000603`.
2. Customer is on the receipt upload interface.

# Steps
1. Tap the file picker/upload receipt button.
2. Attempt to upload a DOCX document (`document.docx`).
3. Attempt to upload a text file (`receipt.txt`).
4. Attempt to upload a GIF animation (`image.gif`).
5. Attempt to upload an executable (`script.exe`).
6. Attempt to bypass client-side file picker filters by sending a disallowed MIME type via API request.

# Expected Result
1. The client file picker restricts selection to `.jpg`, `.jpeg`, `.png`, and `.pdf` files.
2. Any upload attempt containing an unsupported file extension or MIME type is rejected immediately with an informative error message.
3. The upload error allows the customer to pick another file.
4. The temporary booking countdown timer continues running without interruption.

# Notes
- Requirement: UF-02 Error Flow E1 ("File type is not allowed or size exceeds 10 MB: Upload rejected with a message, customer can pick another file").

# Attachments

# Script

---
*Last Updated: 2026-10-18 14:35*
