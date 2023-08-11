load program.asm,
output-file program.out,
compare-to program.cmp,
output-list RAM[16384]%D2.6.2 RAM[16400]%D2.6.2 RAM[16688]%D2.6.2 RAM[20432]%D2.6.2 RAM[20433]%D2.6.2 RAM[20447]%D2.6.2 RAM[20448]%D2.6.2 RAM[20463]%D2.6.2 RAM[20465]%D2.6.2 RAM[20479]%D2.6.2 RAM[20480]%D2.6.2 RAM[20495]%D2.6.2 RAM[20496]%D2.6.2 RAM[24544]%D2.6.2 RAM[24560]%D2.6.2 RAM[24575]%D2.6.2;

set RAM[24576] 0,    // the keyboard is untouched
repeat 1000000 {
  ticktock;
}
output;              // test that the screen is white

set RAM[24576] 84,    // key 'T' is pressed
repeat 1000000 {
  ticktock;
}
output;              // test that a cross is drawn at the screen

set RAM[24576] 70,    // key 'F' is pressed
repeat 1000000 {
  ticktock;
}
output;              // test that a cross is still at the screen

set RAM[24576] 0,    // they keyboard in untouched
repeat 1000000 {
  ticktock;
}
output;              // test that a cross is still at the screen

set RAM[24576] 67,    // key 'C' is pressed
repeat 1000000 {
  ticktock;
}
output;              // test that the screen is white

set RAM[24576] 0,    // they keyboard in untouched
repeat 1000000 {
  ticktock;
}
output;              // test that the screen is white

set RAM[24576] 84,    // T keyboard key is pressed
repeat 1000000 {
  ticktock;
}
output;              // test that a cross is drawn at the screen
