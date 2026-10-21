#!/usr/bin/env bash

#COOKIE_FILE=cookies.txt
COOKIES='XSRF-TOKEN=eyJpdiI6Ii9nQkZQdVlsTElWazJxYkZCdUd0a0E9PSIsInZhbHVlIjoicERjOTFPY1Y1bGdFeVFFcFZKbFovbXFLaWNobThLWEhMWWVRalBCS0Q4Qkw4c1IrcndsZmYvblIzWmgrejI2NTEra0lRMEVrRjQ3S3lBZ21LRWtieENxZzFBRlM4VkpIaFNmakM3SnhQWlUwQy9La3htTDc4dmpDYnpIV2RyQ2giLCJtYWMiOiJlNGIxYWI5NDE0MGQzMzBmZGMyMjhkMzc1NjYxZTFiMjZiNWEyNTI3NTk5ZTEwYTY2OWEyNDJiYWY4MWNhMzczIiwidGFnIjoiIn0%3D; malkat-session=eyJpdiI6IkJtSzFHeDMwNXpWVDg5cEFVcDV0T3c9PSIsInZhbHVlIjoiSGNqYlhscmhLdE5ScFB4dkZ0QWw1M1pLZ1hSZ2g2U0w4TUVJZFlJMkQ3QjJmZTZsNXBuc1V5eld1MTBWSzFOREhtVFY5KzdOM3kyc0k0Y3JxVmZXQWhzZ0NkZzQ4SDZtWDlyYWNjUXQvRTRoSWFwdUgxTEh3MkdKZlk2QnRjUnMiLCJtYWMiOiJmMGEwOTNhMDdiN2ZhZWZlNDE0MWRmZjc2Y2ViMjdmZGNkZTQ0MzE5Y2JmYTBiMWRjMjFmODA3YTZjNWJlNjczIiwidGFnIjoiIn0%3D; remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6ImM0UGptK05Ha1MrQUUyU2tlSjhhUVE9PSIsInZhbHVlIjoiWWRGcHJ2RVJNeEVMaDc2eXpFWWRFNi9jSWVqMno3NzVJOG1NMnJkT0dlZlhmL2RPQU85eUIzQ3RQN3BhUUtmWGc1cGw4QlQ4ZENrWGJxUGlhNllKMzAzcm51NkpMeFN4OXJnSU5RZitmRjlaKzZQbGFGUTd2dktwOVRXcGRhQnhKVjcwWWFVU1duWVhCdTR0akdodVd6VjNnQ0NhVjRMYzBpY00vOC9LNlFVT0ZwZXdqSVRwbU5XcXExV2wvaXllb1FCNmNFczhvSFBia2JxMmprcVdPVGt2bThWRjVvanNCcUdrMC8zZTl6bz0iLCJtYWMiOiIyZWQzN2NlMTVjZmQ3NmMxMTY5NzI0NjczZGJiYzdlZjM3NmU3MzYwNDVhMmI2Nzc5MzRkNDM4ZTM4NDJiNjg1IiwidGFnIjoiIn0%3D'

LINE=$(jq -r '.[] | [.title, .content] | @tsv' news_data_ar.json | shuf -n 1)
IFS=$'\t' read -r TITLE CONTENT <<< "$LINE"

gen-solid-color-img main_image
gen-solid-color-img image

curl 'https://malkat-dashboard.codlop.sa/dashboard/news' \
  -X POST \
  --write-out '\nHTTP_STATUS:%{http_code}\n' \
  -H "Cookie: $COOKIES" \
  -H 'User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:151.0) Gecko/20100101 Firefox/151.0' \
  -H 'Accept: application/json' \
  -H 'X-Requested-With: XMLHttpRequest' \
  -H 'Origin: https://malkat-dashboard.codlop.sa' \
  -H 'Referer: https://malkat-dashboard.codlop.sa/dashboard/news' \
  -F '_token=dyMsQEeP9g7IYWPLJRoFaf19aS7tUABpqvKPauNM' \
  -F '_method=' \
  -F "title=${TITLE}" \
  --form-string "content=${CONTENT}" \
  -F 'remove_image=0' \
  -F 'image=@main_image.png;type=image/png' \
  -F 'images[]=@image.png;type=image/png' \
  -F 'images[]=@image.png;type=image/png' \
  -F 'images[]=@image.png;type=image/png' \
  -F 'images[]=@image.png;type=image/png' \
  -F 'has_video=0' \
  -F 'has_video=1' \
  -F 'remove_video=0' \
  -F 'video=@video.mp4;type=video/mp4'



