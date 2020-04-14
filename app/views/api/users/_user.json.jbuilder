json.extract! user, :id, :username, :email, :profile_photo
json.profile_photo url_for(user.profile_photo)