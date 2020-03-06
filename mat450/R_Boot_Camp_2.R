# Ben Brewer
# MATH 450
# Intro to R Script (II)

# (6) LOOPS =======================================================================================

# Sometimes, it is necessary to repeat the same (or a similar) action many times in order to
# complete a task. For instance, statistical simulations involve repeating the same action 
# a total of k times; this is often done when attempting to visualize or verify large-sample
# properties.

# We will cover two types of loops in this boot camp:
#     - "for" loop: Repeats an action the finite number of times specified.
#     - "while" loop: Repeats an action until the specified condition is no longer met. If the 
#                     condition is never not met, the loop will iterate forever.

# ... (6i) For Loops ==============================================================================

# The base code for the for loop is given by the following lines:

# for (i in vector) {
#   CODE
# }

# The "vector" statement above is usually a subset of the natural numbers starting at 1. For 
# instance, the following code...

# for (i in c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)) {
#   print(i)
# }

# ... is an example of a loop that will run ten times (once for each value in the provided vector).
# In each iteration of the loop, the value of i will be printed to the console. Thus, we should see
# the integers from 1 to 10 printed to the console. Feel free to test this out yourself; first,
# remove the comment symbol (the hashtag) from the three lines above, then run the code.

# Note that the "vector" need not be numeric. If you were to run the following code...

# for (i in c("a", "b", "c")) {
#   print(i)
# }

# ... then the loop would run three times (once for a value of i = "a", once for a value of
# i = "b", and once for a value of i = "c"). Furthermore, one of the three letters would be printed 
# to the console per loop. Feel free to test this one out, as well.

# The general flow of for loops is as follows:

# 1. Set i equal to the first value in the vector.
# 2. Run the code in the loop.
# 3. Set i equal to the next value in the vector.
# 4. Repeat steps 2 and 3 until the last value in the vector is reached.
# 5. After going through the code in the loop for the last vector value, exit the loop.

# Useful tip: when wanting to create for loops that run for a given set of consecutive integers,
# you can use the shorthand code a:b, where a is the starting integer, and b is the concluding
# integer. Thus, the c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10) above could be rewritten as 1:10.

# Let's go through some examples to demonstrate how this type of loop may be used:

# E6i.1 Create a variable called "total" with an initial value of 0. Then, using a for loop and the
#      "total" variable, add the numbers 1, 2, 3, 4, and 5 together.

# ---



# ---

# E6i.2 Create a variable called "storeNum" with an initial value of c(NA, NA, NA). Then use a for
#      loop to store the values 1, 2, and 3 in each spot of "storeNum".

# ---



# ---

# E6i.3 Create a variable called "storeLet" with an initial value of c(NA, NA, NA, NA). The use a
#      for loop to store the values of "a", "b", "c", and "d" in each spot of "storeLet".

# ---



# ---

# ... (6ii) While Loops ===========================================================================

# The base code for the while loop is given by the following lines:

# while (condition) {
#   CODE
# }

# Note that the "condition" statement above must produce a result of the logical data type. For
# example, the condition might be something to the effect of while (variable < 6) or
# while (variable != 10). In the former example, the code in the while loop would run until the
# value of the variable became greater than or equal to 6. Similarly, the latter example would
# cause the code in the loop to run until the value of the variable became equal to 10.

# The general flow of while loops is as follows:
# 1. Check to see if the specified condition is true.
# 2a. If the condition is true, enter the loop and run the code.
# 2b. If the condition is false, exit the loop.
# 3. Repeat steps 1 and 2a until step 2b is reached, at which point the loop ends.

# One key difference between these two kinds of loops is that the for loop has a "built-in"
# counter (see the "i" variable), but the while loop does not. Thus, the user often (but not
# always) specifies such a counter on the outside of the loop and then updates its value at
# the end of each loop.

# Let's do some examples to get a better sense of what while loops do:

# E6ii.1 Create a while loop that runs until the "counter" variable is greater than 8. In your
#        while loop, increase the value of the "counter" variable by 1 per iteration. Initialize
#        the value of the "counter" variable at 0.

# ---



# ---

# E6ii.2 Create a while loop that runs until the "sumVal" variable is equal to 15. The value
#        of "sumVal" can only be increased via a "counter" variable, which increases by 1 per
#        iteration. Initialize the "sumVal" and "counter" variables at 0.

# ---



# ---

# (7) READING & WRITING DATA FILES ================================================================

# More often than not, when practicing statistics, investigators will provide you with a file
# containing the data they would like you to analyze. While these files can come in many different
# formats (.txt, .xlsx, .sav, and so on), we will only focus on the .csv extension.

# Please download the "testData.csv" file from Canvas and save it in an easy-to-reach location
# before continuing.

# Before reading a file, R first needs to know what directory to look in. To set this value,
# go to Session -> Set Working Directory -> Choose Directory. Then, navigate to the FOLDER where
# the file is saved and click "Open". For the rest of your session, this will be the location
# where R will both look for files to be read in and save files.

# Every time you exit out of and reload R, you should need to repeat these steps.

# As a side note, when prompted, NEVER save the workspace image to ~/.RData.

# Okay, let's look at the function we can use to read in a .csv file:

# read.csv(file, header = FALSE, ...)

# There are many other arguments to this function; however, in this class, you need concern
# yourself with the first two only. The "file" argument is where you type in the name of the file 
# you'd like to read in, and the "header" argument indicates whether the first row provides 
# variable names (TRUE) or the actual first row of data (FALSE). So, for instance, the code...

# x <- read.csv("blah.csv", header = TRUE, ...)

# ... would read the data stored in a file called "blah.csv" and save it to a variable named "x".
# The values in the first row of data would be used as the names of each column (which are 
# themselves variables). Once the read was complete, x would be a data frame. Note that, when you 
# read in files, you will probably save them to variables 99% of the time.

# Okay, let's do the example:

# E7.1 Read in the "testData.csv" file and add a column named "pet" with the values "dog", "fish",
#      and "chinchilla". When you read in the data, save it to a variable named "x".

# ---



# ---

# The next thing we'll learn how to do is write .csv files. This is a bit more straightforward;
# you can use the following base code to help accomplish this task:

# write.csv(x, file = ", ..., row.names = TRUE, col.names = TRUE, ...)

# The "x" represents the object that will be written; in this case, the variable is actually
# called x. As before, the "file" argument is where you will write the name of this file, but this
# time YOU will be naming the file instead of copying down the existing name. The last two
# arguments indicate whether you'd like to write the row names and column names of the data object
# to the .csv.

# Alright, now that we have a basic idea, let's write the file:

# E7.2 Write x to a .csv file named "output.csv". When doing so, write the column names, but do
#      not write the row names.

# ---



# ---