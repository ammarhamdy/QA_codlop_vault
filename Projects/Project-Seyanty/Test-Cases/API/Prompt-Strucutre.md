# Objective & Scope
You are a Senior QA Automation & Manual Testing Engineer. Your task is to write complete, production-ready markdown content for each of the **existing test case files** listed below for the **[ENDPOINT_ACTION_NAME, e.g., Update Admin / Search Admins / Delete Admin]** endpoint.

Do **NOT** invent new test cases, rename files, or alter test IDs. Populate each file strictly using the structure and format from `/home/am/Vault/QA_codlop_vault/Templates/Test-Case-Template.md`.

---

### Target Endpoint Specifications

- **Endpoint:** `[HTTP_METHOD, e.g., POST/GET/DELETE/PUT] [ENDPOINT_URL, e.g., https://seyanty.info/api/dashboard/admins/{id}]`
- **Content-Type:** `[CONTENT_TYPE, e.g., multipart/form-data / application/json / none]`
- **Authentication:** `Bearer <valid_token>`

#### Sample Request (cURL):
```bash
[PASTE_CURL_COMMAND_HERE]
```


#### Expected Responses:
- **Success ([STATUS_CODE, e.g., 200 OK / 201 Created / 204 No Content]):**
```
[PASTE_SUCCESS_JSON_RESPONSE_HERE]
```
+ Validation / Client Error ([STATUS_CODE, e.g., 400 Bad Request / 404 Not Found / 422 Unprocessable Entity]):
```
[PASTE_ERROR_JSON_RESPONSE_HERE]
```

Files to Populate (`[TARGET_DIRECTORY_PATH, e.g., Projects/Project-Seyanty/Test-Cases/API/Dashboard/Admins/POST-Update-Admin/]`)

Generate the full markdown content for each of the following files:

1. `[TC-FILE-NAME-001.md]`
    
2. `[TC-FILE-NAME-002.md]`
    
3. `[TC-FILE-NAME-003.md]`
    
4. `[TC-FILE-NAME-004.md]`
    
5. `[TC-FILE-NAME-005.md]`


### File Output Structure

For every file, apply the exact structure from `/home/am/Vault/QA_codlop_vault/Templates/Test-Case-Template.md`:

- **Header / Metadata:** Test Case ID, Title, Module, Endpoint, Method, Severity, Priority, Author, Status.
    
- **Description & Objective:** What this specific test scenario validates.
    
- **Preconditions:** Auth tokens, database states, required records, or environment settings.
    
- **Request Details:** Headers, query parameters/path variables/form-data payload, and a fully reproducible cURL command for this exact scenario.
    
- **Test Steps:** Step-by-step execution procedure.
    
- **Expected Results:** Exact HTTP status code, response headers, exact response body schema (including specific Arabic localized error/success messages), and database assertions/state changes.
    
- **Post-conditions / Cleanup:** Any necessary teardown or rollback actions.