///string_split(string, delimiter):array<string>

var input, delimiter, stringArray, position, index;
input = argument0;
delimiter = argument1;
stringArray[0] = "";
position = string_pos(delimiter, input);
index = 0;

if (string_length(delimiter)) while (position) {
    position -= 1;
    stringArray[index] = string_copy(input, 1, position);
    input = string_delete(input, 1, position + string_length(delimiter));
    index++;
    position = string_pos(delimiter, input);
}

stringArray[index] = input;

return stringArray;
