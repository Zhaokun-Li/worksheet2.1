@R2
M=0        //initialize R2 to 0, indicating that the default R0 is not negative
@R3
M=0        //initialize R3 to 0, indicating that the default R0 is not the minimum value
@R0
D=M        //load the value of R0 into the D register
@MINVAL
M=-32768
@NEGATIVE  
D;JLT      //if R0<0, jump to the NEGATIVE label
(POSITIVE)
@R0
D=M        //load the value of R0 into D again
@R1
M=D        //assign the value of R0 to R1
@END
0;JMP      //jump to END and end the program
(NEGATIVE)
@R2
M=1        //set R2=1, indicating that the input value is negative
@R0
D=M        //get negative values from R0
@MINVAL
D=D-M
@MIN_VALUE
D;JEQ      //If R0==-32768, jump to the MIN_VALUE label
@R0
D=M        //get negative values from R0 again
D=!D
D=D+1      //convert negative numbers to positive, take the inverse and add one
@R1
M=D        //write the result into R1, indicating that R1=- R0
@END
0;JMP      //jump to END, program ends
(MIN_VALUE)
@R3
M=1        //set R3=1, mark input as minimum value
@R1
M=0        //setting R1 to 0 means that its inverse cannot be calculated
(END)
@END
0;JMP      //program ends
