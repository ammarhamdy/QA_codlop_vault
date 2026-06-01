---
us_id: US-001
title: Website Authentication System
priority: High
status: todo
tags:
  - requirement
  - authentication
  - security
---

## Story Description
**As a** Client  
**I want to** access a secure authentication system including Sign Up, Login, and Logout features  
**So that** I can create an account, securely access my data, and manage my session.

## Acceptance Criteria
- [ ] **Scenario 1: Sign Up with Email and Phone**
    - **Given** I am a new client on the registration page
    - **When** I fill in Email Address, Phone Number, Password, and Confirm Password and submit the form
    - **Then** the system should create my account and redirect me to the next step (e.g., verification or login).
- [ ] **Scenario 2: Login with Email and Password**
    - **Given** I have a registered account with an email and password
    - **When** I enter my Email and Password on the login page
    - **Then** I should be successfully authenticated and granted access to the website.
- [ ] **Scenario 3: Login with Phone and OTP**
    - **Given** I have a registered account with a phone number
    - **When** I enter my Phone Number and request an OTP, then enter the received valid OTP
    - **Then** I should be successfully authenticated and logged in.
- [ ] **Scenario 4: Login with Google Account**
    - **Given** I have a Google account
    - **When** I choose to "Sign in with Google" and complete the Google OAuth process
    - **Then** the system should authenticate me and log me into the website.
- [ ] **Scenario 5: Password Confirmation Validation**
    - **Given** I am on the registration page
    - **When** I enter a password in the "Password" field and a different one in "Confirm Password"
    - **Then** the system should display a validation error and prevent form submission.
- [ ] **Scenario 6: Data Validation (Email & Phone)**
    - **Given** I am on the sign-up/login page
    - **When** I enter an invalid email format or an invalid phone number
    - **Then** the system must validate the fields and display appropriate error messages.
- [ ] **Scenario 7: Failed Login Attempts**
    - **Given** I am on the login page
    - **When** I enter incorrect credentials (wrong password or unregistered email/phone)
    - **Then** the system should display a "Invalid credentials" error message and deny access.
- [ ] **Scenario 8: Logout & Session Management**
    - **Given** I am a logged-in client
    - **When** I select the Logout option
    - **Then** my active session should be terminated, and I should be redirected to the login page, unable to access restricted areas without re-authenticating.
- [ ] **Scenario 9: OTP Verification Failure**
    - **Given** I have requested an OTP for phone login
    - **When** I enter an expired or incorrect OTP
    - **Then** the system should display an error message and allow me to retry or request a new OTP.

# 1. Sign Up with Email & Phone
```plantuml
@startuml
title Sign Up with Email & Phone

actor Client
boundary UI as "Web App"
control Auth as "Auth Service"
database DB as "Database"

Client -> UI : Enter Email, Phone,\nPassword, Confirm Password
UI -> UI : Validate Form

alt Valid Data
    UI -> Auth : Register User
    Auth -> DB : Check Existing User
    DB --> Auth : Not Found

    Auth -> DB : Create Account
    DB --> Auth : Account Created

    Auth --> UI : Registration Success
    UI --> Client : Redirect to Login/Verification
else Invalid Data
    UI --> Client : Show Validation Errors
end

@enduml
```

# 2. Login with Email & Password
```plantuml
@startuml
title Login with Email & Password

actor Client
boundary UI as "Web App"
control Auth as "Auth Service"
database DB as "Database"

Client -> UI : Enter Email & Password
UI -> Auth : Authenticate

Auth -> DB : Find User by Email
DB --> Auth : User Record

alt Valid Password
    Auth --> UI : Generate Session/JWT
    UI --> Client : Login Success
else Invalid Credentials
    Auth --> UI : Authentication Failed
    UI --> Client : "Invalid Credentials"
end

@enduml
```

# 3. Login with Phone & OTP
```plantuml
@startuml
title Login with Phone & OTP

actor Client
boundary UI as "Web App"
control Auth as "Auth Service"
entity OTP as "OTP Service"
database DB as "Database"

Client -> UI : Enter Phone Number
UI -> Auth : Request OTP

Auth -> DB : Verify Phone Exists
DB --> Auth : User Found

Auth -> OTP : Generate OTP
OTP --> Client : Send OTP SMS

Client -> UI : Enter OTP
UI -> Auth : Verify OTP

Auth -> OTP : Validate OTP

alt OTP Valid
    Auth --> UI : Create Session
    UI --> Client : Login Success
else OTP Invalid
    Auth --> UI : OTP Error
    UI --> Client : Retry / Request New OTP
end

@enduml
```

# 4. Login with Google OAuth
```plantuml
@startuml
title Login with Google OAuth

actor Client
boundary UI as "Web App"
control Auth as "Auth Service"
participant Google as "Google OAuth"
database DB as "Database"

Client -> UI : Click "Sign in with Google"
UI -> Google : OAuth Request

Google --> Client : Google Login Screen
Client -> Google : Approve Access

Google --> UI : OAuth Token
UI -> Auth : Validate Token

Auth -> Google : Verify Token
Google --> Auth : Token Valid

Auth -> DB : Find/Create User
DB --> Auth : User Record

Auth --> UI : Create Session
UI --> Client : Login Success

@enduml
```


# 5. Password Confirmation Validation
```plantuml
@startuml
title Password Confirmation Validation

actor Client
boundary UI as "Web App"

Client -> UI : Enter Password
Client -> UI : Enter Confirm Password

alt Passwords Match
    UI --> Client : Allow Submission
else Passwords Differ
    UI --> Client : Show Validation Error
end

@enduml
```

# 6. Email & Phone Validation
```plantuml
@startuml
title Email & Phone Validation

actor Client
boundary UI as "Web App"

Client -> UI : Enter Email & Phone

UI -> UI : Validate Email Format
UI -> UI : Validate Phone Format

alt Valid Data
    UI --> Client : Accept Input
else Invalid Data
    UI --> Client : Display Validation Errors
end

@enduml
```

# 7. Failed Login Attempt
```plantuml
@startuml
title Failed Login Attempt

actor Client
boundary UI as "Web App"
control Auth as "Auth Service"
database DB as "Database"

Client -> UI : Submit Credentials
UI -> Auth : Authenticate

Auth -> DB : Lookup User
DB --> Auth : User / Not Found

alt Invalid Credentials
    Auth --> UI : Authentication Failed
    UI --> Client : "Invalid Credentials"
else Valid Credentials
    Auth --> UI : Login Success
end

@enduml
```

# 8. Logout & Session Management
```plantuml
@startuml
title Logout & Session Management

actor Client
boundary UI as "Web App"
control Auth as "Auth Service"

Client -> UI : Click Logout
UI -> Auth : Logout Request

Auth -> Auth : Invalidate Session/JWT
Auth --> UI : Logout Success

UI --> Client : Redirect to Login Page

Client -> UI : Access Protected Resource

alt Session Expired
    UI --> Client : Redirect to Login
else Session Active
    UI --> Client : Allow Access
end

@enduml
```

# 9. OTP Verification Failure
```plantuml
@startuml
title OTP Verification Failure

actor Client
boundary UI as "Web App"
control Auth as "Auth Service"
entity OTP as "OTP Service"

Client -> UI : Submit OTP
UI -> Auth : Verify OTP

Auth -> OTP : Validate OTP

alt OTP Expired
    OTP --> Auth : Expired
    Auth --> UI : OTP Expired Error
    UI --> Client : Request New OTP

else OTP Incorrect
    OTP --> Auth : Invalid OTP
    Auth --> UI : Invalid OTP Error
    UI --> Client : Retry OTP

else OTP Valid
    OTP --> Auth : Valid
    Auth --> UI : Login Success
end

@enduml
```

