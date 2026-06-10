#!/usr/bin/env bash

#COOKIE_FILE=cookies.txt
COOKIES='XSRF-TOKEN=eyJpdiI6InpIU3QwV1ZSdUJnUDdmcWhXS3NlcVE9PSIsInZhbHVlIjoiSlRuMnFSTXlFUTFuNDc4VFE3bjl1M2pIV3NMZnozY1RTVll5bVE1WldEcE9tSTArRDZibHYxYy9SSHZZY01SZVp0dGtPVDVTN2ZUcENWYUU5ejd0NXhueitYL1NhdmlQcEhqcldXa0ZsN0d2RmJRR0xrdGVYSHJLK21xM1VXcnEiLCJtYWMiOiI3NzQ2Y2NlZTU3NjJiYzgyOGY3NzE4NjgwNjUyZmYwZWNjMzM0M2I2ZmZkYjFhNGIxM2NkODI0ZjU3NDA2MDk1IiwidGFnIjoiIn0%3D; malkat-session=eyJpdiI6ImZYdDhmUVZHdUdWUCtieWQ4dTFHVFE9PSIsInZhbHVlIjoibE5adTc3amo3bExCa3ZZaFhIZFpUTU0xUGZOaTZYYXkrVC9xbmd4ckViMjZBWTNOblY2YzFlVkJzOWZsM2RVNUFSTzVjemJ5OWxWSWZ6NytEeTY5RzQ5UjBDVzZnZk9hblBlVWlFWCsxbkptenhCY0NRTzRBVTZHL3pPTGV0NDgiLCJtYWMiOiJlOGE0ZDgxMzFhOTg2ZjM3MDlkMzk4NjUyYTAwZWFmNTZhZDI4YzI3YmUzYmIxNjRjZjExYzEwNDRjMzJhNjE0IiwidGFnIjoiIn0%3D; remember_admin_59ba36addc2b2f9401580f014c7f58ea4e30989d=eyJpdiI6InROWTNWVXFCU0FkcTZqTUE1VkxlOGc9PSIsInZhbHVlIjoiRFgwNk5mTWUrNkk2M1F3aWovOHFIVkNwNkZpRldoNFErQXN2dXJWQkludTlBay92em9Tb2ZScW4xSFlaeU5BaDZ0NFV5Z1ZYQW5pRmNPNXZUNlM1VXVuRVIvVUhENlIxQnFoWVVMWXB0S0N0ZWFDTnh3TGEraEdHVnNXUDlIV3pLVXBtV1JCbE83YktLaUhPQSt1TkdaZERNNERraDFMbGtqUnRma1ppY1FROElBaVhjN0Zra2FwL0ZnTXZxVTJqZFp4WEFQWTJSTFcwOThJUVlUSzI4WWFLWkUyRnd4RkhDTVE1VDZDV0pSUT0iLCJtYWMiOiI4NGM3MGNlYmMwN2JiMWZmZTFmOWZlZGNmYzQ4YTJmNjEyNzM0MWJkMDg4MmQxYjgxYTE5ZTIxOGZmYTFiZjE4IiwidGFnIjoiIn0%3D'

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
  -F '_token=tQDgyfhY4DgCtNPSwdbpWr4WI0Djgv3tF9qBk1cq' \
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
