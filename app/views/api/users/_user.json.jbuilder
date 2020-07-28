json.extract! user, :id, :username, :email
json.profile_photo url_for(user.profile_photo)