///GetInput

RightKey = keyboard_check (ord ("D"))
LeftKey = keyboard_check (ord ("A"))
UpKey = keyboard_check (ord ("W"))
DownKey = keyboard_check (ord ("S"))
DashKey = keyboard_check_pressed (ord ("C"))
AttackKey = keyboard_check_pressed (vk_space)

//Get the Axis
Xaxis = (RightKey - LeftKey)
Yaxis = (DownKey - UpKey)

//Check for gamepad input
if gamepad_is_connected (0)
{
    gamepad_set_axis_deadzone (0, 0.3)
    Xaxis = gamepad_axis_value (0, gp_axislh)
    Yaxis = gamepad_axis_value (0, gp_axislv)
    DashKey = gamepad_button_check_pressed (0, gp_face1)
    AttackKey = gamepad_button_check_pressed (0, gp_face3)
}
