
#!/usr/bin/env bash
# Users

bank=$1
city=$2
limit=$3
offset=$4

echo "Bank: $bank"
echo "City: $city"
echo "Limit: $limit"
echo "Offset: $offset"
result=$(curl --silent -X POST -d '{"strBank":"'"$bank"'","strCity":"'"$city"'","intLimit":"'"$limit"'","intOffset":"'"$offset"'"}' -H "Authorization: JWT eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJ1c2VybmFtZSI6IkFsbGlhbnplVXNlciIsImV4cCI6MTYwNjYzOTM3NCwiZW1haWwiOiIiLCJvcmlnX2lhdCI6MTYwNjIwNzM3NH0.SGOb9sZELtmsrKug3pxxq7F9DOSGZUMHzxqMwll5W9A" -H 'Content-Type: application/json' https://bankappnisam.herokuapp.com/api-bankdetails/banklist/)

echo  "$result"
