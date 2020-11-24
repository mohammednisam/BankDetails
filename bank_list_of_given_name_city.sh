
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
result=$(curl --silent -X POST -d '{"strBank":"'"$bank"'","strCity":"'"$city"'","intLimit":"'"$limit"'","intOffset":"'"$offset"'"}' -H "Authorization: JWT eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJ1c2VybmFtZSI6IlRlc3RVc2VyIiwiZXhwIjoxNjA2NTg0ODY5LCJlbWFpbCI6IiIsIm9yaWdfaWF0IjoxNjA2MTUyODY5fQ.s2r9H5jUDMthQ_L944-CFubfJdqz9YOUpZ7WGOEc9TU" -H 'Content-Type: application/json' http://localhost:8000/api-bankdetails/banklist/)

echo  "$result"
