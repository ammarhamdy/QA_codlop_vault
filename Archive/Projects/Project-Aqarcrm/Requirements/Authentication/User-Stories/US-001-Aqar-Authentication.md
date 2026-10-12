---
us_id: US-001
title: Authentication
priority:
  - High
status:
  - todo
tags:
  - requirement
---
# Story Description

**As a** Client

**I want to** log in to the website using my phone number and a One-Time Password (OTP)

**So that** I can securely access my account and use the website.

## Acceptance Criteria

- [ ] **Scenario 1: Successful Login with Phone Number & OTP**
    - **Given** I am on the website login page
    - **And** the country code is fixed to +966
    - **When** I enter a valid phone number and click "Send OTP"
    - **And** I enter the correct OTP
    - **Then** I should be successfully authenticated and redirected to the Home page.

- [ ] **Scenario 2: Empty Phone Number**
    - **Given** I am on the login page
    - **When** I leave the phone number field empty and click "Send OTP"
    - **Then** the system should display a validation error message and prevent sending the OTP.

- [ ] **Scenario 3: Invalid Phone Number**
    - **Given** I am on the login page
    - **When** I enter an invalid phone number
    - **Then** the system should display an appropriate validation message and prevent sending the OTP.

- [ ] **Scenario 4: Successful OTP Verification**
    - **Given** I have requested an OTP
    - **When** I enter the correct OTP
    - **Then** I should be logged in successfully and redirected to the Home page.

- [ ] **Scenario 5: Incorrect OTP**
    - **Given** I have requested an OTP
    - **When** I enter an incorrect OTP
    - **Then** the system should display an "Invalid OTP" error message and allow me to retry.

- [ ] **Scenario 6: Expired OTP**
    - **Given** I have requested an OTP
    - **When** I enter an expired OTP
    - **Then** the system should display an "OTP Expired" message and allow me to request a new OTP.

- [ ] **Scenario 7: Resend OTP**
    - **Given** I am on the OTP verification page
    - **When** the resend timer expires and I click "Resend OTP"
    - **Then** the system should send a new OTP to my registered phone number.

- [ ] **Scenario 8: Resend OTP Before Timer Expires**
    - **Given** I am on the OTP verification page
    - **When** I try to click "Resend OTP" before the countdown timer expires
    - **Then** the resend option should remain disabled.

- [ ] **Scenario 9: Logout & Session Management**
    - **Given** I am a logged-in client
    - **When** I click the Logout option
    - **Then** my session should be terminated
    - **And** I should be redirected to the Login page
    - **And** I should not be able to access protected pages without logging in again.