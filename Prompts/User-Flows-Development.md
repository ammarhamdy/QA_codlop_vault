# Task: Generate User Flows from Requirements

Act as a Senior System Analyst.

Read and analyze the provided requirement document and the existing User Flow Markdown template.

## Instructions

1. Read the entire requirement document to understand the system, actors, business rules, functional requirements, and dependencies.
    
2. Identify all user flows required by the system.
    
3. Generate each user flow as a separate Markdown (`.md`) file.
    
4. Follow the provided User Flow template exactly, preserving its YAML frontmatter, sections, tables, and formatting.
    
5. Maintain traceability by referencing the relevant Functional Requirements (`FR`) and Business Rules (`BR`).
    
6. Include realistic main flows, alternative flows, and error scenarios.
    
7. Do not invent business rules, system behavior, or requirements. Mark missing or unclear information as assumptions requiring clarification.
    
8. Avoid unnecessary details, duplicated steps, and redundant flows.
    
9. Keep each flow focused on a single user goal.
    
10. Use consistent flow IDs and naming conventions.
    

## Input Paths

- **Requirement Document:** `[REQUIREMENT_FILE_PATH]`
    
- **User Flow Template:** `[USER_FLOW_TEMPLATE_PATH]`
    

## Output

- **Output Directory:** `[OUTPUT_DIRECTORY_PATH]`
    

Generate all identified user flows as individual Markdown files in the specified output directory.

## Final Validation

Before finishing:

- Ensure every flow follows the provided template.
    
- Ensure all YAML frontmatter fields are present.
    
- Verify FR and BR references against the requirement document.
    
- Ensure no unsupported behavior has been introduced.
    
- Check that all identified flows are generated without duplication.