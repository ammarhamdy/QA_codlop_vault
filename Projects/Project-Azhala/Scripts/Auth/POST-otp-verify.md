# Request
```sh
curl --location --request POST 'https://azhala.codlop.sa/api/otp/verify' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Accept: */*' \
--header 'Host: azhala.codlop.sa' \
--header 'Connection: keep-alive' \
--form 'verification_token="01a03d2e-f961-701a-94fd-a907412d0d54"' \
--form 'otp_code="12345"' \
--form 'device_token="bxWAwEODSUCeRnG3hgsGZq:APA91bEIthwLZwa6jdf-MJOYkO9uJvhvPI_j5E-poqLejLo6s_6Fd4m-gGxLc7nXvjuHxlAAQncovaDVB5dNgGpDU5hOrmGs-PD9mWNhp4zWWi7BS1MqKof"'
```

# Response
```json
{
    "success": true,
    "message": "تم التحقق من رمز التحقق بنجاح. يرجى إكمال إعداد حسابك",
    "data": {
        "user_type": {
            "id": 4,
            "name": "مزود خدمة",
            "type": "service_provider"
        },
        "is_customer": false,
        "token": "59|SeU0UlzJDX4QmhAYZp7WMZy9mL5lEOnziibEtdfV05584b61",
        "token_type": "Bearer",
        "expires_at": "2026-09-25T08:28:22.000000Z",
        "status": "complete_profile"
    },
    "timestamp": "2026-08-26T11:28:22.454Z"
}
```

