// COLOCA AQUÍ TU NOMBRE COMPLETO
// COLOCA AQUÍ TU ID
// COLOCA AQUÍ TU CORREO ELECTRÓNICO

(KEYBOARD)
            @84
            D=A
            @KBD 
            D=D-M 
            @CROSS
            D;JEQ

            @67
            D=A
            @KBD 
            D=D-M 
            @CLEAR
            D;JEQ
            @KEYBOARD
            0;JMP

(CROSS)
            @256
            D=A 
            @color1
            M=D
            @color2
            M=-1
            @PAINT
            
            0;JMP

(CLEAR)
            @color1
            M=0
            @color2
            M=0
            @PAINT
            0;JMP

(PAINT)
            @16400
            D=A
            @screen_ver
            M=D

            @20448
            D=A
            @screen_hor
            M=D

            @255
            D=A
            @cont_ver
            M=D

            @31
            D=A
            @cont_hor
            M=D

(LOOP_VER)
            @color1
            D=M
            @screen_ver
            A=M
            M=D
            @32
            D=A
            @screen_ver
            M=M+D
            @cont_ver
            D=M
            M=M-1
            @LOOP_VER
            D;JGT
(LOOP_HOR)
            @color2
            D=M
            @screen_hor
            A=M
            M=D
            @screen_hor
            M=M+1
            @cont_hor
            D=M
            M=M-1
            @LOOP_HOR
            D;JGT
            @KEYBOARD
            0;JMP
            
            


