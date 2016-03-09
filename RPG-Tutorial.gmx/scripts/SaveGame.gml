///SaveGame



//Make sure Player exists
if !instance_exists (oPlayerStats)
{
    exit
}


//Create Save data structure
var SaveData = ds_map_create ();

with oPlayerStats
{
    SaveData[? "room"] = PrevRoom
    SaveData[? "x"] = 0
    SaveData[? "y"] = 0
    SaveData[? "HP"] = HP
    SaveData[? "MaxHP"] = MaxHP
    SaveData[? "Stamina"] = Stamina
    SaveData[? "MaxStamina"] = MaxStamina
    SaveData[? "Expr"] = Expr
    SaveData[? "MaxExpr"] = MaxExpr
    SaveData[? "Level"] = Level
    SaveData[? "Attack"] = Attack
}

var SaveString = json_encode (SaveData);
ds_map_destroy (SaveData)

SaveString = base64_encode (SaveString)

var File = file_text_open_write (working_directory + "MySaveGame.txt");
file_text_write_string (File, SaveString)
file_text_close (File)
show_message ("Game Saved")



