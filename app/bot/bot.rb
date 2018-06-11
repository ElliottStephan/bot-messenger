require 'facebook/messenger'
include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])

Bot.on :message do |message|
    if message.text.include? "Qui est le plus beau ?"
        message.reply(text: "Elliott est le plus beau")
    else    
        message.reply(text: 'Hello, human!')
    end
end