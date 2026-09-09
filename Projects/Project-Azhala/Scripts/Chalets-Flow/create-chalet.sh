#!/bin/bash

# Function to display usage
usage() {
    echo "Usage: $0 <title> <price>"
    echo "Example: $0 \"chalet-02-02\" \"200\""
    exit 1
}

# Get arguments
TITLE="$1"
PRICE="$2"
OFFER_PRICE=$((PRICE/2))

# Validate arguments
if [ -z "$TITLE" ]; then
    echo "Error: Title is required"
    usage
fi

if [ -z "$PRICE" ]; then
    echo "Error: Price is required"
    usage
fi

# Validate price (must be a number)
if ! [[ "$PRICE" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Error: Price must be a number"
    exit 1
fi

# Make the API call
echo "Creating chalet..."
echo "Title: $TITLE"
echo "Price: $PRICE"
echo "Offer Price: "

curl --location --request POST 'https://azhala.codlop.sa/api/owner-chalets/create' \
    --header 'Accept: application/json' \
    --header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
    --header 'Authorization: Bearer 482|0USxTxEulaTKbF20jaNjzNgrRqIGyrksOASbEVCd1a422875' \
    --header 'Host: azhala.codlop.sa' \
    --header 'Connection: keep-alive' \
    --form "title=\"$TITLE\"" \
    --form "price=\"$PRICE\"" \
    --form 'region_id="1"' \
    --form 'city_id="3"' \
    --form 'description="وصف الشاليه..."' \
    --form 'latitude="24.7136"' \
    --form 'longitude="46.6753"' \
    --form 'price_note="ريال / الليلة"' \
    --form 'notes="ملاحظات"' \
    --form 'chalet_images[]=@"cmMtdXBsb2FkLTE3ODg4NTE2OTQ3ODktMw==/17-lgspchaletupgrade1.jpg"' \
    --form 'chalet_services[]="3,2,1"' \
    --form 'has_offer="1"' \
    --form 'offer_text="offer"' \
    --form 'offer_start_date="25-09-2026"' \
    --form 'offer_end_date="30-09-2026"' \
    --form 'offer_price="150"' \
    --form 'max_persons="20"' \
    --form 'place_type_id="3"'

# Check if the curl command was successful
if [ $? -eq 0 ]; then
    echo -e "\n✅ Chalet created successfully"
else
    echo -e "\n❌ Chalet creation failed"
    exit 1
fi

# create_chalet "chalet-02-02" "200"
