# Requirements Gaps and Clarification Report - Learning Management System

## Ambiguities and Clarification Questions

### 1. Purchase and Access Control (REQ-001)
- **Question:** When a user is redirected to a "paywall or program summary page", which one takes precedence? Should there be a logic based on whether the user has seen the summary already?
- **Impact:** Affects the exact navigation flow in TC-PAC-02 and TC-PAC-03.

### 2. Admin Curriculum Management (REQ-002)
- **Question:** Regarding the "explicit dependency warning" during program deletion:
    - What is the expected wording of the warning?
    - Is the Admin given an option to archive the program instead of deleting it?
- **Impact:** Affects the validation of the deletion workflow in TC-CM-03.

### 3. Automated Certificate Generation (REQ-004)
- **Question:**
    - What is the intended file format for the digital certificate (e.g., PDF, PNG, SVG)?
    - Is there a maximum character limit for the `Profile.Name` before the system should truncate it or trigger a layout error?
- **Impact:** Affects the verification of the output in TC-CERT-02 and TC-CERT-05.

## Confirmed Behavior (Based on Analysis)
- Students are strictly gated by both purchase status (Program level) and exam completion (Section level).
- Admins have a "God-mode" view and can bypass all student-level restrictions.
- Certificates are only issued upon completion of the absolute final requirement.
