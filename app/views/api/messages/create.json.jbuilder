json.message do
  json.id @message.id
  json.body @message.body

  json.user do
    json.id @message.user.id
    json.firstName @message.first_name
    json.lastName @message.last_name
  end
end
