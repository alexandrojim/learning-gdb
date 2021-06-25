
# this command indicates the output file
# to see the results
set logging file output.txt

# to make print outputs look good
set print pretty on

# so that the outputs of the commands are recorded
set logging on

# to avoid y\n questions
set pagination off

# to set the command line argument of the program
set args 10

# to set the name of the program 
file helloworld

# to set a breakpoint in the main function
b main

# to set a breakpoint in the line 17
# to see the print output
b 17

# previous hook to the echo function
define hook-echo
echo <<<---
end

# post hook to the echo function
define hookpost-echo
echo --->>>\n
end

# defining a command called log 
define log
	printf "counter value is %d\n", $arg0
end

# here starts the process
echo START

# to run the program
r

# to continue the program
c

# here begins the loop
echo LOOP

# to see the result of the variable count while it is greater than one
while(counter > 1)
	log counter
	c
end

# here ends everything
echo END 

# gracias
