# Example API

Just a simple API that shows some of the Ruby code I write, since everything I do tends to be on private repos. This API tracks sleep records of users.

Testing with curl:

Users:
curl -X POST 'http://localhost:3000/users/' -d name=username

Follow:
curl -X POST 'http://localhost:3000/users/:id/follow' -d follower=:user_id

Unfollow:
curl -X DELETE 'http://localhost:3000/users/:id/follow' -d follower=:user_id

Clock-in:
curl -X POST 'http://localhost:3000/users/:id/clock_in

Sleep records for user:
curl -X GET 'http://localhost:3000/users/:id/sleep_records'

Sleep records for followees of user:
curl -X GET 'http://localhost:3000/users/1/followee_records'

