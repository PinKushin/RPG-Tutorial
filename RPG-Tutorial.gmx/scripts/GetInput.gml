///GetInput

RightKey = keyboard_check (ord ("D"))
LeftKey = keyboard_check (ord ("A"))
UpKey = keyboard_check (ord ("W"))
DownKey = keyboard_check (ord ("S"))

//Get the Axis
Xaxis = (RightKey - LeftKey)
Yaxis = (DownKey - UpKey)

//Check for gamepad input
if gamepad_is_connected (0)
{
    gamepad_set_axis_deadzone (0, 0.3)
    Xaxis = gamepad_axis_value (0, gp_axislh)
    Yaxis = gamepad_axis_value (0, gp_axislv)
}
