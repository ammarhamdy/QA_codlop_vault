#!/usr/bin/env bash

COMPETITION_ID="$1"
QUIZ_FILE="$2"

if [[ -z "$COMPETITION_ID" || -z "$QUIZ_FILE" ]]; 
then
    echo "Usage: $0 <COMPETITION_ID> <QUIZ_FILE_PATH>"
    exit 1
fi
mapfile -t questions < "${QUIZ_FILE}"

COOKIES='XSRF-TOKEN=XSRF-TOKEN=eyJpdiI6InJBR1ZlSVdPcFhjbTlZbHVvU0xyREE9PSIsInZhbHVlIjoiTlJ1ZTd1NXM2SGpEVTZSaGN2S2plS2QycUxNdExWTkJRWVpkVVZ4d1E3aFVWTUN5dGV6TlFBcE9LeG9VNUxGS3RzVE1FM1ZpRk03aVZBMnFJdlFXT1RsKzdOS3htdFQ1LzVhUkNTTzY5SDJZWTVXcnhpN0dQRFF3aHNDRU5aSUciLCJtYWMiOiI4NWFkNGZjNjA0ZGYxNDcwZWMzMWJlYTE5ZDQ0NGMxMWFlM2IzMjFjNDZjZjgxNDQzYmRhNzlhNGUzZmM5ZWQxIiwidGFnIjoiIn0%3D; family_session=eyJpdiI6InlSeDZxS004akduRzBWMTZHbEZ6NWc9PSIsInZhbHVlIjoibDMyaCtxS0ovZVRGNnUwT3ZjaktXa0pqcWUraEt1TXVjdDlJbkNnZGZvRmpGZUFkMXcrU2oza0pQeTBjT3JEeCtEZUR3ZUhHRFIvR2k2TWZITUxMN1Bkbms5UzJLd2J0K3BaYU91WFNtenNxYVNGMkhQTkRicmo4OTBLd295bUgiLCJtYWMiOiIzNGJmZGVjNzUxY2Q0NzgxN2I2NTVjZmEyMjQ2MzYyNDE2MjU0NzQ4MjdkMTRhNjJlNzVmNWMwNDE4YTE1NGY4IiwidGFnIjoiIn0%3D'
TOKEN='SbWtnzYhTNd37Jw5de7XxE5OW4IQMXWcDZyfmU6x'

for quiz in "${questions[@]}"; do

    QUESTION="${quiz%%|*}"
    CHOICES_STRING="${quiz#*|}"

    IFS='|' read -r -a CHOICES <<< "$CHOICES_STRING"

    if (( ${#CHOICES[@]} < 2 )); then
        echo "Skipping question with less than 2 choices:"
        echo "$QUESTION"
        continue
    fi

    curl_args=(
        'https://albassamapps.com/dashboard/questions'
		-s -o /dev/null -w "%{http_code}\n"
        --request POST
        --cookie "$COOKIES"
        -F "_token=$TOKEN"
        -F "_method=POST"
        -F "competition_id=$COMPETITION_ID"
        -F "question_text=$QUESTION"
        -F "question_type=mcq"
        -F "correct_choice=0"
    )

    for choice in "${CHOICES[@]}"; do
        curl_args+=(
            -F "choices[]=$choice"
        )
    done

    curl "${curl_args[@]}"
done




