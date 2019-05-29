#The functions below mainly consist of the core functionality of the program


#This function is used to decide the location based on the user's input
def location_decider(root,user1,final_location)

  #The array below stores all the names of the restaurants stored in the program
  restaurants = ["Hai Nan Village Lei Cha", "Rock Road Seafood Restaurant","Go Fun Kee Bak Kut Teh (Jalan Rock 2 1/2)","Ono Poke","SUUKEE The Original Hainanese Chicken Rice @ Icom Square","Seoul Garden Vivacity Megamall","Chong Chon Green Noodles","Boulevard Restaurant","Sharing Too @ CityOne","Subway @ Plaza Merdeka","Earthlings Coffee Workshop HQ","Howdy's Grillhouse","McDonalds @ Padungan","Sukha Cafe","My Restaurant","The Granary"]


  #Below contains all the if-else function used to determine the restaurant based on the uers's input
  #The restaurant list is narrowed based on whether certain criterias are true or false

  #Here are what each results would mean
  #If cuisine is True, it means Asian Cuisine, if it is False, it means Western Cuisine
  #If healthy is True, it means Healthy Options, if it is False, it means Less Healthy Options
  #If halal is True, it means Halal options, if it is False, it means Non-halal Options
  #If Price is True, it means price range is Cheap, if it is False, it means price range is expensive


  if user1.cuisine==true #If the cuisine choice is 'Asian'
    restaurants = ["Hai Nan Village Lei Cha", "Rock Road Seafood Restaurant","Go Fun Kee Bak Kut Teh (Jalan Rock 2 1/2)","Ono Poke","SUUKEE The Original Hainanese Chicken Rice @ Icom Square","Seoul Garden Vivacity Megamall","Chong Chon Green Noodles","Boulevard Restaurant"]

          if user1.healthy==true# If the cuisine choice is 'Asian' and 'Healthy'
              restaurants = ["Hai Nan Village Lei Cha", "Rock Road Seafood Restaurant","Go Fun Kee Bak Kut Teh (Jalan Rock 2 1/2)","Ono Poke"]

                    if user1.halal == true #If the cuisine choice is 'Asian', healthy and has to be Halal
                      restaurants = ["Hai Nan Village Lei Cha", "Rock Road Seafood Restaurant"]

                          if user1.price==true #If the cuisine choice is 'Asian', healthy,halal and Cheap
                            restaurants = ["Hai Nan Village Lei Cha"]
                          else
                            restaurants = ["Rock Road Seafood Restaurant"]
                          end
                    else
                      restaurants = ["Go Fun Kee Bak Kut Teh (Jalan Rock 2 1/2)","Ono Poke"]
                          if user1.price==true
                            restaurants = ["Go Fun Kee Bak Kut Teh (Jalan Rock 2 1/2)"]
                          else
                            restaurants = ["Ono Poke"]
                          end
                    end
          else
              restaurants = ["SUUKEE The Original Hainanese Chicken Rice @ Icom Square","Seoul Garden Vivacity Megamall","Chong Chon Green Noodles","Boulevard Restaurant"]

                  if user1.halal == true
                    restaurants = ["SUUKEE The Original Hainanese Chicken Rice @ Icom Square","Seoul Garden Vivacity Megamall"]

                        if user1.price==true
                          restaurants = ["SUUKEE The Original Hainanese Chicken Rice @ Icom Square"]
                        else
                            restaurants = ["Seoul Garden Vivacity Megamall"]
                        end
                  else
                    restaurants = ["Chong Chon Green Noodles","Boulevard Restaurant"]
                          if user1.price==true
                            restaurants = ["Chong Chon Green Noodles"]
                          else
                              restaurants = ["Boulevard Restaurant"]
                          end
                  end
          end
    else
      restaurants = ["Sharing Too @ CityOne","Subway @ Plaza Merdeka","Earthlings Coffee Workshop HQ","Howdy's Grillhouse","McDonalds @ Padungan","Sukha Cafe","My Restaurant","The Granary"]

          if user1.healthy==true
              restaurants = ["Sharing Too @ CityOne","Subway @ Plaza Merdeka","Earthlings Coffee Workshop HQ","Howdy's Grillhouse"]


                  if user1.halal == true
                    restaurants = ["Sharing Too @ CityOne","Subway @ Plaza Merdeka"]

                          if user1.price==true
                            restaurants = ["Sharing Too @ CityOne"]
                          else
                              restaurants = ["Subway @ Plaza Merdeka"]
                          end
                  else
                    restaurants = ["Earthlings Coffee Workshop HQ","Howdy's Grillhouse"]

                          if user1.price==true
                            restaurants = ["Earthlings Coffee Workshop HQ"]
                          else
                              restaurants = ["Howdy's Grillhouse"]
                          end
                  end
          else
            restaurants = ["McDonalds @ Padungan","Sukha Cafe","My Restaurant","The Granary"]

                  if user1.halal == true
                    restaurants = ["McDonalds @ Padungan","Sukha Cafe"]
                          if user1.price==true
                            restaurants = ["McDonalds @ Padungan"]
                          else
                              restaurants = ["Sukha Cafe"]
                          end
                  else
                    restaurants = ["My Restaurant","The Granary"]

                          if user1.price==true
                            restaurants = ["My Restaurant"]
                          else
                              restaurants = ["The Granary"]
                          end
                  end
          end
  end

  #This function is used to insert the location information into the user-defined class called  "final_location"
  get_location_info(restaurants[0].to_s,final_location)

  #This function is called to display the results window
  result_window(root,final_location)
end



#This functions works to compare the choice chosen by the user with the text file that contains all the information of the places
def get_location_info(place,final_location)
  place = place + "\n" #New line command is added to ensure equivalency with the file contents for comparison proess

  #Open the file that contains all the locations
  location_file = open('location.txt','r')

  #reads all the lines in the file and stores them in an array called "a"
  a = IO.readlines('location.txt')

  #Loop through the array called "a"
  for i in 0..location_file.size-1
    if a[i]==place # if a match is found, it will store all the other information into the variables of the final_location class
      final_location.name = a[i]
      final_location.address = a[i+1] #index value is added because the other information are stored in the next few indexes after the name of the location
      final_location.cuisine = a[i+2]
      final_location.healthy = a[i+3]
      final_location.halal = a[i+4]
      final_location.price = a[i+5]
    end
  end

  #close the file after use
  location_file.close()
end


#The radio buttons in the program would store true as "1" and false as "0"
#THe function below helps to convert them into just true and false to be stored by the user1 Class
def save_answers(user1,variable_arr)

  #Loop through the variable array defined in the questions window
  for a in 0..3
    #If the value is "!", it will change the value to boolean true
    if variable_arr[a] == 1
      variable_arr[a] = true
    else
      #If the value is "0", it will change the value to boolean false
      variable_arr[a]=false
    end
  end


  #pass the value of the given variables into the user1 class variables
  user1.cuisine = variable_arr[0]
  user1.healthy = variable_arr[1]
  user1.halal = variable_arr[2]
  user1.price = variable_arr[3]
end


#function below is used to save the generated location to the text file
def save_to_text(final_location)
  #open the pre-determined file to write on
  location_save = open('last_saved.txt','w')

  #Generate the lines for the file
	  location_save.puts("Lunch Location:"+final_location.name)
	  location_save.puts("Lunch Address:"+final_location.address)
	  location_save.puts("Cuisine Type:"+final_location.cuisine)
	  location_save.puts("Healthy?:"+final_location.healthy)
	  location_save.puts("Halal or Non-halal:"+final_location.halal)
	  location_save.puts("Price range:"+final_location.price)


  #close the file
  location_save.close
end



#The function below is used to send email to the user regarding their chosen location
def send_email(final_location,user_email)

#This variable is used to store the email headers
message =<<EOF
From: LUCNHINATOR! <FROM@gmail.com>
To: RECEIVER <TO@gmail.com>
Subject: Your Lunch Location!
The following are information regarding your lunch location
EOF


    #Using Block
    smtp = Net::SMTP.new('smtp.gmail.com', 587 ) #intialise the SMTP gmail protocol to be used
    smtp.enable_starttls #To start the TTL
    smtp.start('gmail.com', 'lunchinatorassignment@gmail.com', 'lunchinator2019', :login) do |smtp| #After logging in,it would start to create the email and send it
    smtp.send_message (message + "\n Location Name: " + final_location.name + "\n Location Address: " + final_location.address + "\n Cuisine Type: " + final_location.cuisine + "\n Healthy option?: " + final_location.healthy + "\n Halal or Non-Halal: " + final_location.halal + + "\n Price Range: " + final_location.price ) ,'lunchinatorassignment@gmail.com', user_email
            #The line above is used to send the email using the given message structure.
            #The sender email and user_email is defined as the last 2 values in the line.
            #lunchinatorassignment@gmail.com is the sender email and the user_email is the recipient


    smtp.finish #end the process
    end
end
