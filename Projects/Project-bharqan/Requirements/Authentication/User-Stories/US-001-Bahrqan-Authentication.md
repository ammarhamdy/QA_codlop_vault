---
us_id: US-001-Bahrqan-Authentication
title: Authentication System
priority:
  - High
status:
  - todo
tags:
  - requirement
---


# Story Description

**As a** Client  
**I want to** register, log in using OTP, log out, and delete my account  
**So that** I can securely access and manage my account.

---

# Acceptance Criteria

-  **Scenario 1: Sign Up**
    
    - **Given** I am a new client on the registration page
        
    - **When** I enter my Full Name, Phone Number, and Email Address 
        
    - **Then** the system should create my account and send an OTP to the selected verification method.
        
-  **Scenario 2: Login with Phone Number**
    
    - **Given** I have a registered account with a phone number
        
    - **When** I enter my registered phone number, choose to receive the OTP via SMS or WhatsApp, and enter the received valid OTP
        
    - **Then** I should be successfully authenticated and granted access to the application.
        
-  **Scenario 3: Login with Email**
    
    - **Given** I have a registered account with an email address
        
    - **When** I enter my registered email address, request an OTP, and enter the received valid OTP
        
    - **Then** I should be successfully authenticated and granted access to the application.
        
-  **Scenario 4: Unregistered Account Login**
    
    - **Given** I am on the login page
        
    - **When** I enter an unregistered phone number or email address
        
    - **Then** the system should display an appropriate error message and deny access.
        
-  **Scenario 5: Successful OTP Verification**
    
    - **Given** I have requested an OTP
        
    - **When** I enter a valid OTP before it expires
        
    - **Then** I should be successfully authenticated.
        
-  **Scenario 6: OTP Verification Failure**
    
    - **Given** I have requested an OTP
        
    - **When** I enter an expired or incorrect OTP
        
    - **Then** the system should display an error message and allow me to retry or request a new OTP.
        
-  **Scenario 7: Logout**
    
    - **Given** I am a logged-in client
        
    - **When** I select the Logout option
        
    - **Then** my active session should be terminated, and I should be redirected to the login page.
        
-  **Scenario 8: Delete Account**
    
    - **Given** I am a logged-in client
        
    - **When** I choose to delete my account
        
    - **Then** my account should be permanently deleted, and I should no longer be able to log in using the same phone number or email.
        
-  **Scenario 9: Phone & Email Validation**
    
    - **Given** I am on the Sign Up or Login page
        
    - **When** I enter an invalid email format or an invalid phone number
        
    - **Then** the system should validate the entered data and display the appropriate validation message.
        
-  **Scenario 10: OTP Resend**
    
    - **Given** I have requested an OTP
        
    - **When** the OTP expires or I select the "Resend OTP" option
        
    - **Then** the system should generate and send a new OTP to the selected verification method.
        
-  **Scenario 11: Login with SMS OTP**
    
    - **Given** I have a registered account with a phone number
        
    - **When** I choose to receive the OTP via SMS and enter the received valid OTP
        
    - **Then** I should be successfully authenticated and granted access to the application.
        
-  **Scenario 12: Login with WhatsApp OTP**
    
    - **Given** I have a registered account with a phone number
        
    - **When** I choose to receive the OTP via WhatsApp and enter the received valid OTP
        
    - **Then** I should be successfully authenticated and granted access to the application.
        
-  **Scenario 13: Login After Account Deletion**
    
    - **Given** my account has been permanently deleted
        
    - **When** I try to log in using the same phone number or email address
        
    - **Then** the system should deny access and display an appropriate error message.
        
-  **Scenario 14: Register with an Existing Phone Number or Email**
    
    - **Given** I am on the registration page
        
    - **When** I enter a phone number or email address that is already registered
        
    - **Then** the system should display an appropriate validation message and prevent account creation.
        
-  **Scenario 15: OTP Request Without Registration**
    
    - **Given** I am on the login page
        
    - **When** I request an OTP using an unregistered phone number or email address
        
    - **Then** the system should not generate an OTP and should display an appropriate error message.
        
-  **Scenario 16: OTP Expiration Time**
    
    - **Given** an OTP has been generated
        
    - **When** more than 90 seconds have elapsed without verification
        
    - **Then** the OTP should expire automatically and should no longer be accepted by the system.

