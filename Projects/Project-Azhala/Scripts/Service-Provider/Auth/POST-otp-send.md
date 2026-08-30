# Request
```sh
curl --location --request POST 'https://azhala.codlop.sa/api/otp/send' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer 604|gzn6oZ1Zed9qaQprSpOQoU6eUydo1RSyY7rXv77M704812f5' \
--header 'Accept: */*' \
--header 'Host: azhala.codlop.sa' \
--header 'Connection: keep-alive' \
--form 'phone_code="966"' \
--form 'phone="501000017"' \
--form 'type="register"' \
--form 'user_type_id="4"'
```

# Response
```sh
{
    "success": true,
    "message": "تم إرسال رمز التحقق بنجاح (وضع الاختبار)",
    "data": {
        "verification_token": "01a03d2e-f961-701a-94fd-a907412d0d54",
        "expires_at": "2026-08-26T08:33:03.000000Z"
    },
    "timestamp": "2026-08-26T11:28:03.811Z"
}
```