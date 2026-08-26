
# Request 
```sh
curl --location --request POST 'https://azhala.codlop.sa/api/auth/complete-registration' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer 59|SeU0UlzJDX4QmhAYZp7WMZy9mL5lEOnziibEtdfV05584b61' \
--header 'Accept: */*' \
--header 'Host: azhala.codlop.sa' \
--header 'Connection: keep-alive' \
--form 'name="saud"' \
--form 'address="شارع الملك فهد، الرياض"' \
--form 'latitude="24.7136"' \
--form 'longitude="46.6753"' \
--form 'service_provider_type="ui/ux"'
```

# Response
```sh\
{
    "success": true,
    "message": "يرجى إكمال معلومات الحساب البنكي",
    "data": {
        "status": "complete_bank_account",
        "user": {
            "id": 24,
            "name": "saud",
            "phone_code": "966",
            "phone": "501000017",
            "address": "شارع الملك فهد، الرياض",
            "latitude": "24.71360000",
            "longitude": "46.67530000",
            "photo": "https://azhala.codlop.sa/assets/dashboard/defaults/user.png",
            "is_approved": false,
            "is_completed": true,
            "is_active": true,
            "user_type": {
                "id": 4,
                "name": "مزود خدمة",
                "type": "service_provider"
            },
            "service_provider_type": "ui/ux",
            "business_info": {
                "commercial_register": null,
                "tax_number": null,
                "sabbab_cost": "0.00",
                "max_sabbabins": null
            },
            "created_at": "2026-08-26 11:28",
            "updated_at": "2026-08-26 11:28"
        }
    },
    "timestamp": "2026-08-26T11:28:54.845Z"
}
```
