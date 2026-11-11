This standard Business Analysis & Requirements Engineering cheat sheet categorizes industry-standard acronyms, tracking prefixes, modeling notations, and evaluation frameworks.

  

### 1. Artifact & Requirement Identifiers (ID Prefixes)

Used in traceability matrices (RTM), Obsidian vaults, Jira issue types, and Software Requirements Specifications (SRS).

|**Prefix / Acronym**|**Full Form**|**Scope & Purpose**|**Example in Spec / Ticket**|
|---|---|---|---|
|**BR**|Business Rule|A policy, constraint, or condition governing business operations independently of software.|`BR-INSP-01`: Listings require owner verification before receiving requests.|
|**FR / RF**|Functional Requirement|Specific capability, behavior, calculation, or system reaction to user inputs.|`FR-INSP-02`: System renders WhatsApp button on the listing details screen.|
|**NFR**|Non-Functional Requirement|Quality attributes, operational parameters (latency, uptime, concurrency, compliance).|`NFR-SEC-04`: Phone numbers must be masked at rest using AES-256 encryption.|
|**UF**|User Flow|End-to-end path taken by a user to complete a discrete goal across screens.|`UF-INSP-01`: Customer reveals lessor contact details.|
|**UC**|Use Case|Structured interaction between an actor and the system (preconditions, main flow, alternates).|`UC-AUTH-03`: Customer logs in using mobile OTP verification.|
|**US**|User Story|Agile requirement written from user perspective: _As a... I want... So that..._|`US-CHAL-12`: As a tenant, I want to book an inspection before paying.|
|**AC**|Acceptance Criteria|Conditions a deliverable must satisfy to be accepted by the product owner / QA.|`AC-01`: Toast message appears within 200ms of clicking submit.|
|**TR**|Technical Requirement|Implementation constraint (DB architecture, API schema, queue broker).|`TR-API-09`: Webhook dispatcher must implement exponential backoff retry.|
|**UR**|User Requirement|High-level need articulated by end-users before technical refinement.|`UR-05`: Lessors need to filter real buyers from window shoppers.|

### 2. Core BA Documents & Deliverables

|**Acronym**|**Full Form**|**Description**|**Primary Audience**|
|---|---|---|---|
|**BRD**|Business Requirements Document|High-level business goals, problem statement, ROI, and project scope.|Executives, Product Directors, Stakeholders|
|**PRD**|Product Requirements Document|Feature set, user personas, UI requirements, wireframes, and release criteria.|Engineering Leads, Designers, Product Managers|
|**SRS**|System Requirements Specification|Comprehensive technical document defining functional and non-functional requirements.|Developers, QA Engineers, System Architects|
|**FSD**|Functional Specifications Document|Granular step-by-step description of system behaviors and screen-by-screen logic.|Frontend/Backend Developers, QA Analysts|
|**RTM**|Requirements Traceability Matrix|Grid linking business needs to functional requirements, test cases, and code modules.|QA Leads, Project Managers, Compliance Auditors|
|**SOW**|Statement of Work|Legal agreement defining scope, deliverables, timelines, and costs for a project.|Clients, Procurement, Legal, Contractors|
|**RFP / RFQ**|Request for Proposal / Quotation|Document soliciting vendor proposals/bids for software development or third-party tools.|Vendors, Solutions Architects, Procurement|

### 3. Agile, Scoping & Governance

|**Acronym**|**Full Form**|**Application**|
|---|---|---|
|**DoD**|Definition of Done|Shared checklist required before an increment is considered shippable (e.g., code reviewed, unit tests pass, regression green).|
|**DoR**|Definition of Ready|Criteria a user story must satisfy before entering a sprint (e.g., wireframe attached, AC agreed upon, dependencies cleared).|
|**MVP**|Minimum Viable Product|Earliest product version with enough core features to validate learning from early adopters.|
|**MMP**|Minimum Marketable Product|Smallest possible feature set that addresses user needs and can be sold or widely launched.|
|**POC**|Proof of Concept|Small-scale technical prototype built strictly to verify technical feasibility, not user experience.|
|**BAU**|Business As Usual|Standard daily operations and maintenance tickets, distinct from strategic new initiatives.|
|**SLA**|Service Level Agreement|Contractually committed performance standard between provider and customer (e.g., 99.9% uptime).|
|**SLO**|Service Level Objective|Internal operational target to keep the system comfortably within the contractual SLA.|

### 4. Analysis & Prioritization Frameworks

|**Acronym**|**Components / Full Form**|**How to Use**|
|---|---|---|
|**MoSCoW**|**M**ust, **S**hould, **C**ould, **W**on't|Sprint/release feature prioritization based on criticality and deadlines.|
|**RICE**|**R**each, **I**mpact, **C**onfidence, **E**ffort|Quantitative scoring model to rank features: $\frac{\text{Reach} \times \text{Impact} \times \text{Confidence}}{\text{Effort}}$.|
|**WSJF**|Weighted Shortest Job First|SAFe backlog prioritization: $\frac{\text{Cost of Delay}}{\text{Job Size}}$. Prioritizes high value, fast deliverables.|
|**INVEST**|**I**ndependent, **N**egotiable, **V**aluable, **E**stimable, **S**mall, **T**estable|Quality checklist for writing effective, bite-sized Agile user stories.|
|**SMART**|**S**pecific, **M**easurable, **A**chievable, **R**elevant, **T**ime-bound|Standard criteria for drafting unambiguous project goals and requirements.|
|**RACI**|**R**esponsible, **A**ccountable, **C**onsulted, **I**nformed|Matrix clarifying organizational roles across project tasks and decisions.|
|**CRUD**|**C**reate, **R**ead, **U**pdate, **D**elete|Baseline check to ensure all lifecycle states are covered for an entity or data object.|
|**SWOT**|**S**trengths, **W**eaknesses, **O**pportunities, **T**hreats|Strategic planning tool assessing internal and external factors of a business idea.|

### 5. Diagrams & System Modeling Notations

|**Acronym**|**Full Form**|**Purpose**|
|---|---|---|
|**BPMN**|Business Process Model and Notation|Standardized graphical notation for modeling end-to-end business workflows and swimlanes.|
|**UML**|Unified Modeling Language|Standard modeling language for software architecture (class diagrams, sequence diagrams, state machines).|
|**ERD**|Entity Relationship Diagram|Structural diagram showing database tables, entities, attributes, and foreign-key cardinality ($1:1$, $1:N$, $N:M$).|
|**DFD**|Data Flow Diagram|Map showing how data moves through a system between external entities, processes, and data stores.|
|**CJM**|Customer Journey Map|Chronological illustration of customer steps, emotions, touchpoints, and friction points.|
|**IA**|Information Architecture|Structural design of shared information environments (navigation trees, taxonomy, hierarchy).|

### 6. QA & Verification Linkages

| **Acronym** | **Full Form**              | **Description**                                                                                                               |
| ----------- | -------------------------- | ----------------------------------------------------------------------------------------------------------------------------- |
| **UAT**     | User Acceptance Testing    | Final testing phase where domain experts or actual users test the software against business use cases.                        |
| **TC / TS** | Test Case / Test Suite     | Documented set of conditions, inputs, and expected outcomes designed to verify a single requirement or group of requirements. |
| **SIT**     | System Integration Testing | Verifying data integrity, protocol conformance, and API interactions between integrated subsystems.                           |
| **STR**     | Software Test Report       | Formal document summarizing testing activities, execution metrics, pass/fail ratios, and defect severity counts.              |