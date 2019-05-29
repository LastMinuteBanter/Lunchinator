require 'net/smtp'
require 'tk'
require './window_lunchinator'
require './process_lunchinator'


#Below are the custom data types to store user_inputed information
#The Location Class is used to store information about the Location recommended by the user
class Location
  attr_accessor :name, :address, :cuisine, :healthy , :halal , :price
  def initialise(name,address,cuisine,healthy,halal,price)
    @name = name
    @address = address
    @cuisine = cuisine
    @healthy = healthy
    @halal = halal
    @price = price
  end
end

#This class is used to store the user's input regarding the choosing criterias
class User_answer
  attr_accessor :cuisine , :healthy, :halal, :price
  def initialise(cuisine,healthy,halal,price)
    @cuisine = cuisine
    @healthy = healthy
    @halal = halal
    @price = price
  end
end


#This main window is run using Tk
def main
    root = TkRoot.new # initialise a root window using Tk
    home_win = TkToplevel.new #Creating another Top level window
    user1 = User_answer.new()  #Creating a variable to store the user input
    final_location = Location.new() #Creating a variable to store the location information

    #The array below contains all the questions to be asked
    question = ["Asian OR western?","Healthy choices or less healthy choices?","Halal or Non-halal?","Cheap or expensive prices?"]
    homeScreen(root,home_win,question,user1,final_location) #Runs the home screen function from the window_lunchinator file

Tk.mainloop
end

main
