require 'tk'
require './input_functions'
require './ifelse'

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

class User_answer
  attr_accessor :cuisine , :healthy, :halal, :price
  def initialise(cuisine,healthy,halal,price)
    @cuisine = cuisine
    @healthy = healthy
    @halal = halal
    @price = price
  end
end



def left_button_clicked(attr_val)
    attr_val = true
end

def right_button_clicked(attr_val)
    attr_val = false
end


def questions_window(question,choice1,choice2,choice_var)
    ques_win = TkToplevel.new
    ques_win.title = "LUNCHINATOR!"
    ques_win.geometry = "700x500"

    $questionsVar = TkVariable.new
    questions = TkLabel.new(ques_win)
    questions.place('height' => 50, 'width' => 500, 'x' => 100, 'y' => 50)

    questions['textvariable'] = $questionsVar
    $questionsVar.value = question

    asian_cuisine = TkButton.new(ques_win)
    asian_cuisine.text = choice1
    asian_cuisine.borderwidth = 5
    asian_cuisine.state = "normal"
    asian_cuisine.font = TkFont.new('times 20 bold')
    asian_cuisine.foreground= "red"
    asian_cuisine.activebackground = "blue"
    asian_cuisine.relief = "groove"
    asian_cuisine.command = (proc{choice_var = left_button_clicked(choice_var)})
    asian_cuisine.place('height' => 50, 'width' => 150, 'x' => 100, 'y' => 300)

    western_cuisine = TkButton.new(ques_win)
    western_cuisine.text = choice2
    western_cuisine.borderwidth = 5
    western_cuisine.state = "normal"
    western_cuisine.font = TkFont.new('times 20 bold')
    western_cuisine.foreground= "red"
    western_cuisine.activebackground = "blue"
    western_cuisine.relief = "groove"
    western_cuisine.command = (proc{choice_var = right_button_clicked(choice_var)})
    western_cuisine.place('height' => 50, 'width' => 150, 'x' => 400, 'y' => 300)

end

root = TkRoot.new
root.title = "LUNCHINATOR!"
root.geometry = "700x500"

image = TkPhotoImage.new
image.file = "food.gif"

image_placer = TkLabel.new(root)
image_placer.image = image
image_placer.place('height' => image.height, 'width' => image.width, 'x' => 100, 'y' => 50)

$titleVar = TkVariable.new
hometitle = TkLabel.new(root)
hometitle.font = TkFont.new('times 20 bold')
hometitle.relief = "groove"
hometitle.foreground = "red"
hometitle.borderwidth = 5
hometitle.place('height' => 50, 'width' => 500, 'x' => 100, 'y' => 50)

hometitle['textvariable'] = $titleVar
$titleVar.value = "WELCOME TO LUNCHINATOR"

asian = ""
question = "Asian OR western?"
choice1 = "Asian"
choice2 = "Western"

start_btn = TkButton.new(root)
start_btn.text = "START"
start_btn.borderwidth = 5
start_btn.state = "normal"
start_btn.font = TkFont.new('times 20 bold')
start_btn.foreground= "red"
start_btn.activebackground = "blue"
start_btn.relief = "groove"
start_btn.command = (proc{questions_window(question,choice1,choice2,asian)})
start_btn.place('height' => 50, 'width' => 500, 'x' => 100, 'y' => 300)

Tk.mainloop
