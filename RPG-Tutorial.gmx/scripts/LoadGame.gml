///LoadGame
var File = file_text_open_read (working_directory + "MySaveGame.txt");
var SaveString = file_text_read_string (File)
file_text_close (File)

SaveString = base64_decode (SaveString)
var SaveData = json_decode (SaveString);

var SaveRoom = SaveData[? "room"];
if room != SaveRoom
{
    room_goto (SaveRoom)
}

with oPlayerStats
{
    PlayerXStart = SaveData[? "x"]
    PlayerYStart = SaveData[? "y"]
    if instance_exists (oPlayer)
    {
        oPlayer.x = PlayerXStart
        oPlayer.y = PlayerYStart
        oPlayer.phy_position_x = PlayerXStart
        oPlayer.phy_position_y = PlayerYStart
    }
    else
    {
        instance_create (PlayerXStart, PlayerYStart, oPlayer)
    }
    HP = SaveData[? "HP"]
    MaxHP = SaveData[? "MaxHP"]
    Stamina = SaveData[? "Stamina"]
    MaxStamina = SaveData[? "MaxStamina"]
    Expr = SaveData[? "Expr"]
    MaxExpr = SaveData[? "MaxExpr"]
    Level = SaveData[? "Level"]
    Attack = SaveData[? "Attack"]
}

ds_map_destroy (SaveData)
