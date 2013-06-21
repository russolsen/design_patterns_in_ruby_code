#!/usr/bin/env ruby
require '../example'

example %q{

class SlickButton
  #
  # Lots of button drawing and management
  # code omitted...
  #

  def on_button_push
    #
    # Do something when the button is pushed.
    #
  end
end

}

example %q{
class SaveButton < SlickButton
  def on_button_push
    #
    # Save the current document...
    #
  end
end

class NewDocumentButton < SlickButton
  def on_button_push
    #
    # Create a new document...
    #
  end
end
}

sb = SlickButton.new
sb.on_button_push
pp sb

sb = SaveButton.new
sb.on_button_push

ndb = NewDocumentButton.new
ndb.on_button_push

