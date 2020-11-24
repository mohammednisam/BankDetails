
#!/usr/bin/env bash
# Users

ifsc=$1
echo $ifsc
result=$(curl --silent -X POST -d '{"strIfsc":"'"$ifsc"'"}' -H "Authorization: JWT eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJ1c2VybmFtZSI6IkFsbGlhbnplVXNlciIsImV4cCI6MTYwNjYzOTM3NCwiZW1haWwiOiIiLCJvcmlnX2lhdCI6MTYwNjIwNzM3NH0.SGOb9sZELtmsrKug3pxxq7F9DOSGZUMHzxqMwll5W9A" -H 'Content-Type: application/json' https://bankappnisam.herokuapp.com/api-bankdetails/bankdetails/)
echo  "$result"
