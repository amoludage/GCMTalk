require 'gcm'
require './api_key'

class GcmApp
  def sendMessage(options)
    gcm = GCM.new(GCM_API_KEY) #GCM_API_KEY is declared in config/initializers/api_key.rb
    response = gcm.send_notification(REGISTRATION_ID,options) #REGISTRATION_ID also in initializers
    puts response.first
  end

end

options = {data: {message: "Hello this is demo for GCM notification..Thanks"}}
app = GcmApp.new
app.sendMessage(options)
