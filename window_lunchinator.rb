
#This function will create the homescreen of the program

def homeScreen(root,home_win,question,user1,final_location)
      home_win.title = "LUNCHINATOR!" #Title of the window
      home_win.geometry = "700x500" #Setting the size of the window

      image = TkPhotoImage.new  #create a tkinter image function
      image.file = "food.gif" #Setting the photo's file location

      image_placer = TkLabel.new(home_win)  #placing the image on the window using a label
      image_placer.image = image #setting the image label with the image
      image_placer.place('height' => image.height, 'width' => image.width, 'x' => 100, 'y' => 50) #adjust the width,height and placement using x and y coordinates

      hometitle = TkLabel.new(home_win) #Title Label
      hometitle.font = TkFont.new('times 20 bold') #Font style is Times, 20px, and Bold
      hometitle.relief = "groove" #Create a groove effect for the border
      hometitle.foreground = "red" #Colour of text is red
      hometitle.borderwidth = 5
      hometitle.place('height' => 50, 'width' => 500, 'x' => 100, 'y' => 50) #width, height and placement using x and y coordinates
      hometitle.text = "WELCOME TO LUNCHINATOR" #The text to be put in the label

      start_btn = TkButton.new(home_win) #BUtton to start the program
      start_btn.text = "START" #Text of the button
      start_btn.borderwidth = 5
      start_btn.state = "normal" #initialising it to not be pressed by default
      start_btn.font = TkFont.new('times 20 bold') #The font style
      start_btn.foreground= "red"
      start_btn.activebackground = "blue" #When clicked, the colour will change to blue
      start_btn.relief = "groove"
      start_btn.command = (proc{questions_window(root,question,user1,final_location)}) #When clicked, the button will trigger a function to open the next window and pass on the parameters needed
      start_btn.place('height' => 50, 'width' => 500, 'x' => 100, 'y' => 300) #Placement of button

      exit_btn = TkButton.new(home_win) #This is the Exit button to end the program
      exit_btn.text = "EXIT" #Text
      exit_btn.borderwidth = 5
      exit_btn.state = "normal" #initialising it to not be pressed by default
      exit_btn.font = TkFont.new('times 20 bold') #The font style
      exit_btn.foreground= "red"
      exit_btn.activebackground = "blue" #When clicked, the colour will change to blue
      exit_btn.relief = "groove"
      exit_btn.command = (proc{root.destroy()}) #When clicked, the button will the end the program by destroying the root window
      exit_btn.place('height' => 50, 'width' => 500, 'x' => 100, 'y' => 350)#Placement of button
end


#The function below would call the window containing all the questions that is prompted after the homescreen window
def questions_window(root,question,user1,final_location)

    ques_win = TkToplevel.new #initialise a new top level window
    ques_win.title = "LUNCHINATOR!"
    ques_win.geometry = "700x500" #The same prefix as the other windows

    #Below are the variables that are initialised to store the user_answers
    $cuisine_choice = TkVariable.new
    $healthy_choice = TkVariable.new
    $halal_choice = TkVariable.new
    $price_choice = TkVariable.new

    #The variables are put in an array to be used in the program later on
    variable_arr = [$cuisine_choice,$healthy_choice,$halal_choice,$price_choice]

    #Codes below are used to generate different questions to be asked to the user
    #Each of the questions will have the same structure as each other but the text will differ

    ##################### 1st Question ######################################

    #A label is created below to show the question
    question1 = TkLabel.new(ques_win)
    question1.pack('side' => 'top', 'fill' => 'x')
    question1.text = question[0] #get the first question from the question array
    question1.font = TkFont.new('times 15 bold')

    #Two Radio Buttons are created below to  indicate the choices available
    #The radio buttons will return "1" for true and "0" for False
    #The outputs will be converted to boolean later on in the program
    asian = TkRadioButton.new(ques_win)
    asian.text = "Asian"
    asian.variable = $cuisine_choice #Store the result in the designated variable for each question
    asian.value = true #This will return "1"
    asian.anchor = 'w'
    asian.font = TkFont.new('times 15 bold')
    asian.pack('side' => 'top', 'fill' => 'x')

    western = TkRadioButton.new(ques_win)
    western.text = "Western"
    western.variable = $cuisine_choice #Store the result in the designated variable for each question
    western.value = false #This will return "0"
    western.anchor = 'w'
    western.font = TkFont.new('times 15 bold')
    western.pack('side' => 'top', 'fill' => 'x')

    ##################### 2nd Question ######################################
    question2 = TkLabel.new(ques_win)
    question2.pack('side' => 'top', 'fill' => 'x')
    question2.text = question[1]
    question2.font = TkFont.new('times 15 bold')

    healthy = TkRadioButton.new(ques_win)
    healthy.text = "Healthy"
    healthy.variable = $healthy_choice #Store the result in the designated variable for each question
    healthy.value = true #This will return "1"
    healthy.anchor = 'w'
    healthy.font = TkFont.new('times 15 bold')
    healthy.pack('side' => 'top', 'fill' => 'x')

    less_healthy = TkRadioButton.new(ques_win)
    less_healthy.text = "Less Healthy"
    less_healthy.variable = $healthy_choice #Store the result in the designated variable for each question
    less_healthy.value = false #This will return "0"
    less_healthy.anchor = 'w'
    less_healthy.font = TkFont.new('times 15 bold')
    less_healthy.pack('side' => 'top', 'fill' => 'x')

    ##################### 3rd Question ######################################
    question3 = TkLabel.new(ques_win)
    question3.pack('side' => 'top', 'fill' => 'x')
    question3.text = question[2]
    question3.font = TkFont.new('times 15 bold')

    halal = TkRadioButton.new(ques_win)
    halal.text = "Halal"
    halal.variable = $halal_choice #Store the result in the designated variable for each question
    halal.value = true #This will return "1"
    halal.anchor = 'w'
    halal.font = TkFont.new('times 15 bold')
    halal.pack('side' => 'top', 'fill' => 'x')

    non_halal = TkRadioButton.new(ques_win)
    non_halal.text = "Non-Halal"
    non_halal.variable = $halal_choice #Store the result in the designated variable for each question
    non_halal.value = false #This will return "0"
    non_halal.anchor = 'w'
    non_halal.font = TkFont.new('times 15 bold')
    non_halal.pack('side' => 'top', 'fill' => 'x')

    ##################### 4th Question ######################################
    question4 = TkLabel.new(ques_win)
    question4.pack('side' => 'top', 'fill' => 'x')
    question4.text = question[3]
    question4.font = TkFont.new('times 15 bold')

    cheap = TkRadioButton.new(ques_win)
    cheap.text = "Cheap"
    cheap.variable = $price_choice  #Store the result in the designated variable for each question
    cheap.value = true #This will return "1"
    cheap.anchor = 'w'
    cheap.font = TkFont.new('times 15 bold')
    cheap.pack('side' => 'top', 'fill' => 'x')

    expensive = TkRadioButton.new(ques_win)
    expensive.text = "Expensive"
    expensive.variable = $price_choice  #Store the result in the designated variable for each question
    expensive.value = false #This will return "0"
    expensive.font = TkFont.new('times 15 bold')
    expensive.anchor = 'w'
    expensive.pack('side' => 'top', 'fill' => 'x')

    ##################### End of Questions ######################################


    #Button created to trigger the next step in generating the lunch location
    generate_btn = TkButton.new(ques_win)
    generate_btn.text = "GENERATE LOCATION!" #The button text
    generate_btn.borderwidth = 5
    generate_btn.state = "normal" #Initialise the button state to normal
    generate_btn.font = TkFont.new('times 20 bold')
    generate_btn.foreground= "red"
    generate_btn.activebackground = "blue" #Button will change to blue when clicked
    generate_btn.relief = "groove"
    #When the button is clicked, it will first run the save_answers method to change the variable values to boolean values
    #After changing it, it would save the answers to the pre-defined user1 Class variables
    #Next, it will run the location_decider method to decide on the location based on the values saved
    #The location decider method would automatically generate the result_window later on
    generate_btn.command = (proc{save_answers(user1,variable_arr);location_decider(root,user1,final_location); ques_win.destroy()})
    generate_btn.place('height' => 50, 'width' => 500, 'x' => 100, 'y' => 400)

end


#The function below will open the final window that will indicate the generated result
def result_window(root,final_location)
  result_win = TkToplevel.new
  result_win.title = "LUNCHINATOR!"
  result_win.geometry = "700x500"

######## The field's below are used as labels for the generated result information ########

  #The Name Label
  name_field = TkLabel.new(result_win)
  name_field.borderwidth = 3
  name_field.font = TkFont.new('times 12 bold')
  name_field.grid('row'=>1,'column'=>9)
  name_field.text = "Location Name:"

  #The Address Label
  address_field = TkLabel.new(result_win)
  address_field.borderwidth = 3
  address_field.font = TkFont.new('times 12 bold')
  address_field.grid('row'=>2,'column'=>9)
  address_field.text = "Address:"

  #The Cuisine type Label
  cuisine_field = TkLabel.new(result_win)
  cuisine_field.borderwidth = 3
  cuisine_field.font = TkFont.new('times 12 bold')
  cuisine_field.grid('row'=>3,'column'=>9)
  cuisine_field.text = "Type Of Cuisine"

  #The healthiness Label
  healthy_field = TkLabel.new(result_win)
  healthy_field.borderwidth = 3
  healthy_field.font = TkFont.new('times 12 bold')
  healthy_field.grid('row'=>4,'column'=>9)
  healthy_field.text = "Healthy?"

  #The Halal or non-hala Label
  halal_field = TkLabel.new(result_win)
  halal_field.borderwidth = 3
  halal_field.font = TkFont.new('times 12 bold')
  halal_field.grid('row'=>5,'column'=>9)
  halal_field.text = "Halal or Non-halal"

  #The Price Range Label
  price_field = TkLabel.new(result_win)
  price_field.borderwidth = 3
  price_field.font = TkFont.new('times 12 bold')
  price_field.grid('row'=>6,'column'=>9)
  price_field.text = "Price"
######################################################################
  # Below are labels to put the generated location information

  #Generated Location Name
  name_box = TkLabel.new(result_win)
  name_box.borderwidth = 3
  name_box.font = TkFont.new('times 12 bold')
  name_box.grid('row'=>1,'column'=>10)
  name_box.text = final_location.name

  #Generated Location Address
  address_box = TkLabel.new(result_win)
  address_box.borderwidth = 3
  address_box.font = TkFont.new('times 8 bold')
  address_box.grid('row'=>2,'column'=>10)
  address_box.text = final_location.address

  #Generated Location Cuisine Type
  cuisine_box = TkLabel.new(result_win)
  cuisine_box.borderwidth = 3
  cuisine_box.font = TkFont.new('times 12 bold')
  cuisine_box.grid('row'=>3,'column'=>10)
  cuisine_box.text = final_location.cuisine

  #Generated Location healthiness option
  healthy_box = TkLabel.new(result_win)
  healthy_box.borderwidth = 3
  healthy_box.font = TkFont.new('times 12 bold')
  healthy_box.grid('row'=>4,'column'=>10)
  healthy_box.text = final_location.healthy

  #Generated Location Halal or non-halal
  halal_box = TkLabel.new(result_win)
  halal_box.borderwidth = 3
  halal_box.font = TkFont.new('times 12 bold')
  halal_box.grid('row'=>5,'column'=>10)
  halal_box.text = final_location.halal

  #Generated Location price range
  price_box = TkLabel.new(result_win)
  price_box.borderwidth = 3
  price_box.font = TkFont.new('times 12 bold')
  price_box.grid('row'=>6,'column'=>10)
  price_box.text = final_location.price
#############################################################################


######### Below are codes for sending email ######################
  #This is just the label to indicate where to enter the email
  email_label = TkLabel.new(result_win)
  email_label.borderwidth = 3
  email_label.font = TkFont.new('times 12 bold')
  email_label.place('height' => 50, 'width' => 200, 'x' => 100, 'y' => 300)
  email_label.text = "Enter your email address:"

  #This is the textbox to enter the email for the user
  textbox = TkText.new(result_win)
  textbox.place('height' => 20, 'width' => 250, 'x' => 100, 'y' => 350)

  send_email_button = TkButton.new(result_win)
  send_email_button.text = "Send Email"
  send_email_button.borderwidth = 5
  send_email_button.state = "normal"
  send_email_button.font = TkFont.new('times 15 bold')
  send_email_button.foreground= "red"
  send_email_button.activebackground = "blue"
  send_email_button.relief = "groove"
  #On clicked, it will get the text value from the textbox and save it to a variable called user_email
  #Then, it will run the send_email method using the final_location variable class and user_email variable as the arguments
  #Note: Chomp is added to user_email to remove the new line and is converted to string
  send_email_button.command = (proc{user_email = textbox.get("1.0",'end');send_email(final_location,user_email.chomp.to_s)})
  send_email_button.place('height' => 30, 'width' => 150, 'x' => 330, 'y' => 350)

################################################################################################

  # This is the button used to save the location information into a text file
  save_text_button = TkButton.new(result_win)
  save_text_button.text = "Save to Text File"
  save_text_button.borderwidth = 5
  save_text_button.state = "normal"
  save_text_button.font = TkFont.new('times 15 bold')
  save_text_button.foreground= "red"
  save_text_button.activebackground = "blue"
  save_text_button.relief = "groove"
  #When clicked, it will trigger a function that will save the location using the final_location class variable
  save_text_button.command = (proc{save_to_text(final_location)})
  save_text_button.place('height' => 50, 'width' => 150, 'x' => 400, 'y' => 400)

  #This will close the result window
  restart_btn = TkButton.new(result_win)
  restart_btn.text = "Restart"
  restart_btn.borderwidth = 5
  restart_btn.state = "normal"
  restart_btn.font = TkFont.new('times 20 bold')
  restart_btn.foreground= "red"
  restart_btn.activebackground = "blue"
  restart_btn.relief = "groove"
  restart_btn.command = (proc{result_win.destroy()})
  restart_btn.place('height' => 50, 'width' => 150, 'x' => 100, 'y' => 400)

  #This will close the result window and the root window
  #Thus, ending the program
  exit_btn = TkButton.new(result_win)
  exit_btn.text = "Exit"
  exit_btn.borderwidth = 5
  exit_btn.state = "normal"
  exit_btn.font = TkFont.new('times 20 bold')
  exit_btn.foreground= "red"
  exit_btn.activebackground = "blue"
  exit_btn.relief = "groove"
  exit_btn.command = (proc{result_win.destroy();root.destroy()})
  exit_btn.place('height' => 50, 'width' => 150, 'x' => 250, 'y' => 400)



end
