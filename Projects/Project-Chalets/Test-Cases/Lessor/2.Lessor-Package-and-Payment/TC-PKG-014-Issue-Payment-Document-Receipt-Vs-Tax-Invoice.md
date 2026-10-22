---
tc_id: TC-PKG-014
title: Verify Payment Document Generation Differs Based on Invoice Key Toggle
priority: High
status: Ready
type: Functional
linked_requirement: Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Package-and-Payment-Method.md
tags:
  - test-case
---

# Test Data
| Setting State | Expected Document Prefix | Document Type | Tax / QR Requirements |
| ------------- | ------------------------ | ------------- | --------------------- |
| Invoice Key OFF | `RCPT-YYYY-NNNNNN` | Payment Receipt (`سند قبض`) | No tax breakdown, sequential number |
| Invoice Key ON | `INV-YYYY-NNNNNN` | Simplified Tax Invoice (`فاتورة ضريبية مبسطة`) | 15% tax breakdown + ZATCA compliant QR code |
| Sample Package Total | 1150.00 SAR | - | Net: `1150 / 1.15 = 1000.00 SAR`, Tax: `150.00 SAR` |

# Preconditions
1. Admin settings has two test modes: Staging A with Invoice Key OFF; Staging B with Invoice Key ON.
2. Two identical package approvals occur for 1150.00 SAR each.

# Steps
1. Under Setting A (Invoice Key OFF), approve payment request and inspect issued document.
2. Verify document numbering, headers, and tax fields.
3. Switch Setting B (Invoice Key ON), approve payment request and inspect issued document.
4. Verify document numbering, net amount, 15% tax amount, and scan the embedded QR code.
5. Attempt to delete or alter an issued document from the database or admin interface.

# Expected Result
1. When invoice key is OFF, issued document has number format `RCPT-YYYY-NNNNNN`, titled "سند قبض", without tax breakdown.
2. When invoice key is ON, issued document has number format `INV-YYYY-NNNNNN`, titled "فاتورة ضريبية مبسطة", containing net amount (1000.00 SAR), 15% tax (150.00 SAR), and a valid scannable QR code.
3. Numbers are sequential without gaps per calendar year.
4. Issued documents are immutable and can never be deleted from the system.

# Notes
- Requirement: UF-44 Notes.
- Tax calculation: net = total / 1.15 rounded to two halalas, tax = total - net.

# Attachments

# Script

---
*Last Updated: 2026-10-21 14:40*
