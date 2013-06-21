#!/usr/bin/env ruby
require 'rubygems'
require 'fox16'

include Fox

application = FXApp.new("CompositeGUI", "CompositeGUI")
main_window = FXMainWindow.new(application, "Composite", 
                               nil, nil, DECOR_ALL)
main_window.width = 400
main_window.height = 200

super_frame = FXVerticalFrame.new(main_window,
                                  LAYOUT_FILL_X|LAYOUT_FILL_Y)
FXLabel.new(super_frame, "Text Editor Application")

text_editor = FXHorizontalFrame.new(super_frame,
                                    LAYOUT_FILL_X|LAYOUT_FILL_Y)

text = FXText.new(text_editor, nil, 0,
       TEXT_READONLY|TEXT_WORDWRAP|LAYOUT_FILL_X|LAYOUT_FILL_Y)
       
text.text = "This is some text."

# Button bar along the bottom

button_frame = FXVerticalFrame.new(text_editor, 
	                           LAYOUT_SIDE_RIGHT|LAYOUT_FILL_Y)

FXButton.new(button_frame,  "Cut")
FXButton.new(button_frame, "Copy")
FXButton.new(button_frame, "Paste")
      
application.create
main_window.show(PLACEMENT_SCREEN)
application.run
