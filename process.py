#opens the file and stores the content into a varible
log_file = open("um-server-01.txt")

#The main Scope of the fuction
def sales_reports(log_file):
    #This statement goes through each line in the cvs file
    for line in log_file:
        #this line does some sanitziation on the incoming line
        line = line.rstrip()
        #selects desired elements of line element
        day = line[0:3]
        #The line below is where you can change day
        if day == "Mon":
            #prints the results 
            print(line)

#invoking the function with the passed file
sales_reports(log_file)
