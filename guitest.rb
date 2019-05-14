require 'tk'



def questions_window
    ques_win = TkToplevel.new
    ques_win.title = "LUNCHINATOR!"
    ques_win.geometry = "700x500"

    $questionsVar = TkVariable.new
    questions = TkLabel.new(ques_win)
    questions.place('height' => 50, 'width' => 500, 'x' => 100, 'y' => 50)

    questions['textvariable'] = $questionsVar
    $questionsVar.value = "Asian Cuisine or Western Cuisine?"


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


start_btn = TkButton.new(root)
start_btn.text = "START"
start_btn.borderwidth = 5
start_btn.state = "normal"
start_btn.font = TkFont.new('times 20 bold')
start_btn.foreground= "red"
start_btn.activebackground = "blue"
start_btn.relief = "groove"
start_btn.command = (proc{questions_window})
start_btn.place('height' => 50, 'width' => 500, 'x' => 100, 'y' => 300)

Tk.mainloop
