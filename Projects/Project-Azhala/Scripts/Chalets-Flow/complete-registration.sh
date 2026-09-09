#!/bin/bash

# Function to display usage
usage() {
    echo "Usage: $0 <name> <address>"
    echo "Example: $0 \"owner-02\" \"شارع الملك فهد، الرياض\""
    exit 1
}

# Get arguments
NAME="$1"
ADDRESS="$2"

# Validate arguments
if [ -z "$NAME" ]; then
    echo "Error: Name is required"
    usage
fi

if [ -z "$ADDRESS" ]; then
    echo "Error: Address is required"
    usage
fi

# Make the API call
echo "Completing registration..."
echo "Name: $NAME"
echo "Address: $ADDRESS"
curl --location --request POST 'https://azhala.codlop.sa/api/auth/complete-registration' \
    --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
    --header 'Authorization: Bearer 482|0USxTxEulaTKbF20jaNjzNgrRqIGyrksOASbEVCd1a422875' \
    --header 'Accept: */*' \
    --header 'Host: azhala.codlop.sa' \
    --header 'Connection: keep-alive' \
    --form "name=\"$NAME\"" \
    --form "address=\"$ADDRESS\"" \
    --form 'latitude="24.7136"' \
    --form 'longitude="46.6753"'

# Check if the curl command was successful
if [ $? -eq 0 ]; then
    echo -e "\n✅ Registration completed successfully"
else
    echo -e "\n❌ Registration failed"
    exit 1
fi
