@R0         
D=M       //load the value from R0 into register D. At this point, D=R0 
@R1     
D=D|M     //operate OR operation on the values of D and R1. D=R0|R1 
@R3         
M=D       //write the result of the previous step into R3. R3=R0|R1
@R0      
D=M       //load the values from R0 into D again. D=R0。
@R1       
D=D&M     //operate AND operation on D and R1. D=R0&R1
@R4     
M=D       //write the result of the operation into R4. R4=R0&R1
@R4   
D=M       //take out the value from R4 and put it into D. D=R4
D=!D      //operate NOT operation on the values in D. D=~R4
@R4   
M=D       //save the reverse result back to R4. Now R4=~(R0&R1)
@R3   
D=M       //take out the value of R3 and place it in D
@R4
D=D&M     //operate AND operation between D and R4. D=(R0|R1)&~(R0&R1)
@R2      
M=D       //store the final result in R2
