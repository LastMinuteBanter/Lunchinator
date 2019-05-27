require 'net/smtp'

def send_email(final_location,user_email)

  user_email = user_email.get("1.0",end)
  
message = <<EOF
From: SENDER <FROM@gmail.com>
To: RECEIVER <TO@gmail.com>
Subject: Your Lunch Location!
The following are information regarding your lunch location
EOF

smtp = Net::SMTP.new 'smtp.gmail.com', 587
smtp.enable_starttls
smtp.start('gmail.com', 'lunchinatorassignment@gmail.com', 'lunchinator2019', :login)
smtp.send_message message, 'lunchinatorassignment@gmail.com', user_email
smtp.finish

#Using Block
smtp = Net::SMTP.new('smtp.gmail.com', 587 )
smtp.enable_starttls
smtp.start('gmail.com', 'lunchinatorassignment@gmail.com', 'lunchinator2019', :login) do |smtp|
        smtp.send_message (message + "\n Location Name:" + final_location.name + "\n Location Address:" + final_location.adddress + "\n Cuisine Type:" + final_location.cuisine
        + "\n Healthiness:" + final_location.healthy + "\n Halal or Non-Halal:" + final_location.halal + + "\n Price Raneg:" + final_location.price  , 'lunchinatorassignment@gmail.com', user_email)
end
end

send_email
