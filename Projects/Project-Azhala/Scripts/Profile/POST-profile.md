
# Client
## Update-Profile
```sh
curl --location --request POST 'https://azhala.codlop.sa/api/profile' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer 194|11JW9PrIYESrCMrowGxL1dllJNZZiB9QqoYAXfvu83904a1b' \
--header 'Accept: */*' \
--header 'Host: azhala.codlop.sa' \
--header 'Connection: keep-alive' \
--form 'name="client-15"' \
--form 'address="شارع الملك فهد، الرياض"' \
--form 'latitude="24.7136"' \
--form 'longitude="24.7136"' \
--form 'photo=@"cmMtdXBsb2FkLTE3ODgxNTk5NjI1NDMtMg==/79ad7b7a-99da-4e20-962d-1e9fc405312b.jpeg"'
```
## Response
```json
{
    "success": true,
    "message": "تم تحديث الملف الشخصي بنجاح",
    "data": {
        "user": {
            "id": 78,
            "name": "client-15",
            "phone_code": "966",
            "phone": "500000014",
            "address": "شارع الملك فهد، الرياض",
            "latitude": "24.71360000",
            "longitude": "24.71360000",
            "photo": "https://azhala.codlop.sa/storage/images/users/78/TefPubJDzG94MkbtIEpXZ4lIyTOAogFoxagzZDZ7.jpeg",
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
            "updated_at": "2026-08-31 10:54"
        }
    },
    "timestamp": "2026-08-31T10:54:22.557Z"
}
```

# Service-Provider
## Update-Profile
```sh
curl --location --request POST 'https://azhala.codlop.sa/api/profile' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer 207|pUkI1ynwcJ3mOdadTc3MepIVHAm1tqLYQG4JT7aH478a53aa' \
--header 'Accept: */*' \
--header 'Host: azhala.codlop.sa' \
--header 'Connection: keep-alive' \
--form 'name="provider-10"' \
--form 'address="شارع الملك فهد، الرياض"' \
--form 'latitude="24.7136"' \
--form 'longitude="24.7136"' \
--form 'commercial_register="0400000001"' \
--form 'tax_number="040000000000001"' \
--form 'photo=@"MQ==/😐.jpeg"'
```
## Response
```json
{
    "success": false,
    "message": "حسابك قيد المراجعة. سيتم إعلامك عند الموافقة",
    "timestamp": "2026-08-31T12:34:27.829Z",
    "data": {
        "user": {
            "id": 87,
            "name": "provider-10",
            "phone_code": "966",
            "phone": "504000001",
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
            "service_provider_type": "service-01",
            "business_info": {
                "commercial_register": "0400000001",
                "tax_number": "040000000000010"
            },
            "created_at": "2026-08-31 12:31",
            "updated_at": "2026-08-31 12:32"
        }
    }
}
```

# Place-Owner
## Update-Profile
```sh
curl --location --request POST 'https://azhala.codlop.sa/api/profile' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer 206|PoOiOY91KG1S7EorqR4cPV5ln07aqsR5D20oiyNM5b41626d' \
--header 'Accept: */*' \
--header 'Host: azhala.codlop.sa' \
--header 'Connection: keep-alive' \
--form 'name="owner-10"' \
--form 'address="شارع الملك فهد، الرياض"' \
--form 'latitude="24.7136"' \
--form 'longitude="24.7136"' \
--form 'photo=@"MQ==/😐.jpeg"'
```
## Response
```json
{
    "success": false,
    "message": "حسابك قيد المراجعة. سيتم إعلامك عند الموافقة",
    "timestamp": "2026-08-31T12:28:05.874Z",
    "errors": {
        "user": {
            "id": 86,
            "name": "owner-10",
            "phone_code": "966",
            "phone": "502000010",
            "address": "شارع الملك فهد، الرياض",
            "latitude": "24.71360000",
            "longitude": "46.67530000",
            "photo": "https://azhala.codlop.sa/assets/dashboard/defaults/user.png",
            "is_approved": false,
            "is_completed": true,
            "is_active": true,
            "user_type": {
                "id": 2,
                "name": "صاحب مكان (مؤجِّر)",
                "type": "owner"
            },
            "service_provider_type": null,
            "business_info": null,
            "created_at": "2026-08-31 12:23",
            "updated_at": "2026-08-31 12:25"
        }
    }
}
```


