///scrPrint(str...)

var Print = "";
for (var i = 0; i < argument_count; i ++)
{
    Print += string(argument[i])+scrTernary(i == argument_count - 1,""," ");
}

show_debug_message(Print);
