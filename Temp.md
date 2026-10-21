# Task: Generate Lessor-Package-and-Payment Test Cases

You are a Senior QA Engineer responsible for analyzing requirements and writing high-quality, comprehensive test cases.

## 1. Project Files and Directories

Follow these paths exactly:

- **Output Directory:**
  /home/am/Vault/QA_codlop_vault/Projects/Project-Chalets/Test-Cases/Lessor-Package-and-Payment

- **Test Case Template:**
  /home/am/Vault/QA_codlop_vault/Templates/Test-Case-Template.md

- **Requirement File:**
  /home/am/Vault/QA_codlop_vault/Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Package-and-Payment-Method.md

- **Project Rules:**
  /home/am/Vault/QA_codlop_vault/AGENTS.md

## 2. Execution Instructions

Follow these steps in order:

### Step 1: Read Project Rules
Read and understand AGENTS.md before starting any work.

Follow all applicable instructions, conventions, naming rules, and restrictions defined in that file.

### Step 2: Analyze the Test Case Template
Read Test-Case-Template.md carefully.

Use the existing template as the source of truth for the structure and format of every generated test case.

Do not invent a new template or modify the original template.

### Step 3: Analyze the Requirements
Read /home/am/Vault/QA_codlop_vault/Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Package-and-Payment-Method.md completely.

Identify all requirements and business rules relevant to the Client's authentication and access to the system.

Extract the following information where applicable:
- Functional requirements.
- Business rules.
- Actors and permissions.
- Preconditions and postconditions.
- Input validation rules.
- Authentication and authorization behavior.
- Error handling.
- Security-related requirements.
- Positive and negative scenarios.
- Boundary conditions.
- Relevant integration behavior.

Do not assume that a feature exists simply because it is common in other applications.

If a behavior is not documented, do not present it as a confirmed requirement.

### Step 4: Design Test Cases
Create test cases covering all authentication-related behaviors explicitly supported by the requirements.

Consider the following categories where applicable:

1. Positive test cases.
2. Negative test cases.
3. Input validation.
4. Required and optional fields.
5. Boundary-value analysis.
6. Invalid input formats.
7. Authentication failures.
8. Authorization and access control.
9. Session management.
10. Security-related scenarios.
11. Error messages and system responses.
12. Edge cases and unexpected inputs.

Only include scenarios relevant to the documented requirements.

For security scenarios, test only behavior that is applicable to the specified authentication functionality.

Avoid redundant test cases. Each test case should verify a distinct behavior or meaningful condition.

### Step 5: Write the Test Case Files
Save the generated test cases inside:

/home/am/Vault/QA_codlop_vault/Projects/Project-Chalets/Test-Cases/Lessor-Package-and-Payment

Requirements:
- Follow the existing test case template exactly.
- Preserve all required sections and metadata fields.
- Use clear, concise, and unambiguous language.
- Give every test case a unique identifier following the project's naming conventions.
- Provide explicit preconditions, test data, execution steps, and expected results wherever required by the template.
- Make each test case independently executable.
- Use realistic test data without exposing real credentials or sensitive information.
- Keep each test case focused on one primary objective.
- Use descriptive filenames consistent with the project's conventions.
- Organize the test cases into separate Markdown files when appropriate.
- Do not overwrite existing test cases without first inspecting them and confirming that doing so is necessary.
- Do not modify the requirement file, template, or AGENTS.md.

### Step 6: Review and Validate
- Verify template compliance, requirement coverage, and unique test IDs.
- Ensure steps are clear and expected results are testable.
- Check for unsupported assumptions and duplicate tests.
- Confirm all files are saved in the correct directory.

### Step 7: Report Results
Summarize the test cases created, filenames, coverage gaps, ambiguities, and unchanged existing files.

## Important Constraints
- Follow `AGENTS.md` and `Test-Case-Template.md`.
- Use /home/am/Vault/QA_codlop_vault/Projects/Project-Chalets/Requirements/Atomic/User-Flows/Package-and-Payment-Method/Package-and-Payment-Method.md as the source of truth.
- Do not invent requirements or guess ambiguous behavior.
- Modify files only in the output directory.
- Generate and validate the test cases.

Begin by reading AGENTS.md, then inspect the template and requirements before creating any files.