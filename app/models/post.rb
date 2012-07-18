class Post < ActiveRecord::Base
  
  after_create do
    PUBNUB.publish({
      'channel' => "1",
      'message' => self.to_json,
      'callback' => lambda do |message|
        puts(message)
      end
    })  
  end
  
end
