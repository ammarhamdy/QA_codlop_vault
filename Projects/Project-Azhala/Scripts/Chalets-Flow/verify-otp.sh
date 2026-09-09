#!/bin/bash

# Function to display usage
usage() {
    echo "Usage: $0 <otp_code>"
    echo "Example: $0 12345"
    exit 1
}

# Get OTP code from first argument
OTP_CODE="$1"

# Validate OTP code is provided
if [ -z "$OTP_CODE" ]; then
    echo "Error: OTP code is required"
    usage
fi

# Validate OTP code (must be digits)
if ! [[ "$OTP_CODE" =~ ^[0-9]+$ ]]; then
    echo "Error: OTP code must contain only digits"
    exit 1
fi

# Make the API call
echo "Verifying OTP: $OTP_CODE"
curl --location --request POST 'https://azhala.codlop.sa/api/otp/verify' \
    --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
    --header 'Accept: */*' \
    --header 'Host: azhala.codlop.sa' \
    --header 'Connection: keep-alive' \
    --form 'verification_token="01a0806f-daae-73b4-84b1-cd2a3cd7d5e8"' \
    --form "otp_code=\"$OTP_CODE\"" \
    --form 'device_token="bxWAwEODSUCeRnG3hgsGZq:APA91bEIthwLZwa6jdf-MJOYkO9uJvhvPI_j5E-poqLejLo6s_6Fd4m-gGxLc7nXvjuHxlAAQncovaDVB5dNgGpDU5hOrmGs-PD9mWNhp4zWWi7BS1MqKof"'

# Check if the curl command was successful
if [ $? -eq 0 ]; then
    echo -e "\n✅ OTP verification request completed"
else
    echo -e "\n❌ OTP verification request failed"
    exit 1
fi
