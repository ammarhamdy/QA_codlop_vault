# Request
```sh
curl --location --request GET 'https://azhala.codlop.sa/api/profile' \
--header 'LANG: en' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer 194|11JW9PrIYESrCMrowGxL1dllJNZZiB9QqoYAXfvu83904a1b' \
--header 'Accept: */*' \
--header 'Host: azhala.codlop.sa' \
--header 'Connection: keep-alive'
```

# Response
```json
{
    "success": true,
    "message": "Profile fetched successfully",
    "data": {
        "user": {
            "id": 78,
            "name": "client-14",
            "phone_code": "966",
            "phone": "500000014",
            "address": "شارع الملك فهد، الرياض",
            "latitude": "24.71360000",
            "longitude": "46.67530000",
            "photo": "https://azhala.codlop.sa/assets/dashboard/defaults/user.png",
            "is_approved": true,
            "is_completed": true,
            "is_active": true,
            "user_type": {
                "id": 1,
                "name": "عميل",
                "type": "customer"
            },
            "service_provider_type": null,
            "business_info": null,
            "bank_accounts": [
                {
                    "id": 40,
                    "holder_name": "bank-account-holder",
                    "account_number": "1234567333",
                    "iban": "332165161616587",
                    "bank_name": "بنك مصر",
                    "is_main": true,
                    "is_active": true,
                    "created_at": "2026-08-31 10:45",
                    "updated_at": "2026-08-31 10:45"
                }
            ],
            "created_at": "2026-08-31 10:15",
            "updated_at": "2026-08-31 10:45"
        }
    },
    "timestamp": "2026-08-31T10:46:07.117Z"
}
```