#!/bin/bash

# Function to display usage
usage() {
    echo "Usage: $0 <phone_number> <user_type> [type]"
    echo "  phone_number  Phone number (without country code) [Required]"
    echo "  user_type     User type (1 for individual, 2 for business, etc.) [Required]"
    echo "  type          OTP type (register, login, etc.) [Optional, default: register]"
    echo ""
    echo "Examples:"
    echo "  $0 502000003 2"
    echo "  $0 502000003 2 login"
    exit 1
}

# Get arguments
PHONE="$1"
USER_TYPE_ID="$2"
TYPE="${3:-register}"  # Default to 'register' if not provided

# Validate required arguments
if [ -z "$PHONE" ]; then
    echo "Error: Phone number is required"
    usage
fi

if [ -z "$USER_TYPE_ID" ]; then
    echo "Error: User type is required"
    usage
fi

# Validate phone number (only digits)
if ! [[ "$PHONE" =~ ^[0-9]+$ ]]; then
    echo "Error: Phone number must contain only digits"
    exit 1
fi

# Validate user type (must be a number)
if ! [[ "$USER_TYPE_ID" =~ ^[0-9]+$ ]]; then
    echo "Error: User type must be a number"
    exit 1
fi

# Default values
PHONE_CODE="966"

# Make the API call
echo "Sending OTP to phone: $PHONE (User Type: $USER_TYPE_ID, Type: $TYPE)"
curl --location --request POST 'https://azhala.codlop.sa/api/otp/send' \
    --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
    --header 'Authorization: Bearer 604|gzn6oZ1Zed9qaQprSpOQoU6eUydo1RSyY7rXv77M704812f5' \
    --header 'Accept: */*' \
    --header 'Host: azhala.codlop.sa' \
    --header 'Connection: keep-alive' \
    --form "phone_code=\"$PHONE_CODE\"" \
    --form "phone=\"$PHONE\"" \
    --form "type=\"$TYPE\"" \
    --form "user_type_id=\"$USER_TYPE_ID\""

# Check if the curl command was successful
if [ $? -eq 0 ]; then
    echo -e "\n✅ OTP request sent successfully"
else
    echo -e "\n❌ Failed to send OTP request"
    exit 1
fi

# send_otp.sh 502000003 2 login # Uses custom type 'login'
# send_otp.sh 502000003 2          # Uses default type 'register'
