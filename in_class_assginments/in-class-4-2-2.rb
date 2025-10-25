class WrappedSidwinder
  def initialize
    @stick = stick_id
    @button = button_id
  end
  class SidewinderJoystick
    BUTTON_UP = 2
    BUTTON_DOWN = 3

    def get_x_axis(stick_id) # returns -1.0 to 1.0
    def get_y_axis(stick_id) # returns -1.0 to 1.0
    def button(button_id)  # Returns BUTTON_UP or BUTTON_DOWN
  end

  def x_axis
    if get_x_axis(@stick) * 128
  end
  def y_axis
    get_y_axis(@stick) * 128
  end
  def button_pressed
    if button() == BUTTON_DOWN
      return :pressed
    else
      return :not_pressed
  end

end

class WrappedXbox
  def initialize
    @stick = stick_id
    @button = button_id
  end

  class XboxGamepad
    def get_x_axis(stick_id) # returns -128 to 127
    def get_y_axis(stick_id) # returns -128 to 127
    def button_status(button_id)  # float from 0.0 (up) to 1.0 (down)
  end

  def x_axis
    get_x_axis(@stick)
  end
  def y_axis
    get_y_axis(@stick)
  end
  def button_pressed
    if button_status in 0.0..0.4
      return False
    else
      return True
  end

end
class Player
  def initialize(joystick)
    @x = 0
    @y = 0
    @joystick = joystick
  end

  def update()   # called every game frame
    @x += joystick.x_axis()
    @y += joystick.y_axis()

    if joystick.button_pressed() == True
      self.fire_lasers()
    end

    self.update_graphics()
  end

  # ...

end

joystick = SidewinderJoystick.new
p = Player.new(sidewinder)

# ... Game code continues ...