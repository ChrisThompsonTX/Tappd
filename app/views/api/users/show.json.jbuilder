# json.session do
#    json.id do
#        json.extract! @user, :id
#    end
# end
json.partial! "api/users/user", user: @user