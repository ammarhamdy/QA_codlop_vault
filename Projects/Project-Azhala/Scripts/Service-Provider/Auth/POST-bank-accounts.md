# Request
```sh
curl --location --request POST 'https://azhala.codlop.sa/api/bank-accounts' \
--header 'User-Agent: Apidog/1.0.0 (https://apidog.com)' \
--header 'Authorization: Bearer 67|GLZlrLJGKpbgRh9YIN2KzpSCB1wANoW2CncdXNiy629f8836' \
--header 'Accept: */*' \
--header 'Host: azhala.codlop.sa' \
--header 'Connection: keep-alive' \
--form 'holder_name="Ali-Acount"' \
--form 'account_number="1234567101"' \
--form 'iban="332165161616547"' \
--form 'bank_name="بنك مصر"'
```

# Response
```sh
{
    "success": true,
    "message": "تم إضافة الحساب البنكي بنجاح",
    "data": {
        "holder_name": "Ali-Acount",
        "account_number": "1234567101",
        "iban": "332165161616547",
        "bank_name": "بنك مصر",
        "user_id": 24,
        "is_main": true,
        "updated_at": "2026-08-26T12:15:26.000000Z",
        "created_at": "2026-08-26T12:15:26.000000Z",
        "id": 2
    },
    "timestamp": "2026-08-26T15:15:26.947Z"
}
```