///StringCopyWords (string, index, count)
var Str = argument0;
var Index = argument1;
var Count = ceil(argument2);

var Char = string_char_at (Str, Count);
while (Char != " " && Char != "")
{
    Count++
    Char = string_char_at (Str, Count)
}

var ReturnStr = string_copy (Str, Index, Count);
return ReturnStr
