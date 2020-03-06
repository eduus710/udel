# Ben Brewer
# MATH 450
# Intro to R Script

# (0) INTRODUCTION ================================================================================

# R is a powerful statistical programming language. It is 100% free and easy to modify
# through the use of downloadable packages, which we will learn about later in this tutorial.
# Before we can start programming in R, though, we first need to learn about RStudio - the 
# integrated development environment (IDE) that we will use to interact with R.

# To ensure that you can follow along with this tutorial, you'll need to take a moment to change
# some basic settings. To do this, click

# Tools -> Global Options -> Pane Layout

# On the right side of the open window, you should now see a 2 x 2 square. Set it up as follows:
#     - Top left square: Choose "Source" from the drop-down menu.
#     - Top right square: Choose "Console" from the drop-down menu.
#     - Bottom left square: Check the "Environment", "History", "Connections", "Build", and
#                           "VCS" boxes.
#     - Bottom right square: Check the "Files", "Plots", "Packages", "Help", and "Viewer" boxes.

# Later, you may want to play around with this and other Global Options settings (namely Code,
# Appearance, and Pane Layout) to find a configuration that suits your personal taste. For now,
# though, this will suffice!

# Now that we've set up our work area, let's start by learning about two of these panes:

# (1) THE CONSOLE PANE & BASIC OPERATIONS =========================================================

# If you followed the instructions in (0), the console is located in the top right of RStudio. You
# can think of this section of RStudio as a calculator: any commands that are input on one or more
# lines are immediately evaluated and printed on the following line(s) of the console pane. Let's
# try a few basic examples:

# E1.1 Click next to the ">" in the console pane and type "4 + 3" (without the quotes). Then press
#      "enter" or "return".

# E1.2 Click next to the ">" in the console pane and type "8 - 6" (without the quotes). Then press
#      "enter" or "return".

# E1.3 Click next to the ">" in the console pane and type "4 * 1" (without the quotes). Then press
#      "enter" or "return".

# Note that the above commands could have been run with or without spaces between the numbers
# and the operators. Whether or not to include spaces is generally a matter of coding "neatness"
# and personal preference.

# In each case, R will perform the requested calculation and print the result to the console
# window. The key here is that the calculations are performed instantaneously; the moment you press
# the "enter" or "return" key, the console will interpret the commands that have been input. Once
# R has run all of the commands, it will print any appropriate output to the console window.

# You may notice that R is able to handle common mathematical operators. Here is an abbreviated
# list of some of those operators:

#     - Addition: +         (4 + 6 = 10)
#     - Subtraction: -      (7 - 9 = -2)
#     - Multiplication: *   (3 * 2 = 6)
#     - Division: /         (10 / 2.5 = 4)
#     - Exponential: ^      (3^3 = 27)

# Equals: ==
# Greater Than: >
# Less Than: < 
# Greater Than or Equal To: >=
# Less Than or Equal To: <=
#
# R also obeys the order of operations when executing commands, as illustrated in the following
# examples:

# E1.4 Perform the following command in the console pane: "4 + 3 * 2".

# E1.5 Perform the following command in the console pane: "6 ^ 2 + 3 * 9".

# E1.6 Perform the following command in the console pane: "(3 + 7) * 2".

# E1.7 Perform the following command in the console pane: "[8 + (2 - 4) * 1] ^ 2

# (2) THE SOURCE PANE =============================================================================

# If you followed the instructions in (0), the source pane is located in the top left of RStudio.
# In fact, the words you're reading right now are located in the source pane!

# While commands are performed instantaneously in the console pane, they will not be performed here
# until a given section of code is highlighted and the "Run" bottom at the top of the pane is
# clicked. Let's do an example:

# E2.1 Type "12 * 4" (without the quotes) in the space below and press "enter". Then highlight
#      the command and press "Run" at the top of the pane. (Shortcut: use Ctrl + Enter instead
#      of clicking "Run")

# - 12 * 4



# -

# Notice that the command and its associated output are printed to the CONSOLE pane, NOT the
# source pane. Thus, the source pane is essentially nothing more than a basic text editor through
# which commands may be typed and "stored" to be run later. This text may be saved as a ".R" file
# and opened again later in RStudio. These ".R" files are what we call "R programs."

# Some of the key advantages of using the source pane (rather than just typing all commands in
# sequence in the console pane) is that you can easily organize your code, save your code for
# later, and run multiple commands at once. Let's practice that in the examples below:

# E2.2 Type a short block of code below that runs "6*4" and "8^2" at the same time. Note that
# each command should be typed on a separate line.

# - 
6*4
8^2


# - 

# E2.3 Type a short block of code below that runs "8 + 3" and *9 - 6" at the same time. Note that
# each command should be typed on a separate line.

#


8+3
9-6

# - 

# E2.3 Type a short block of code below that runs "# 8 ^ 3" and *# 9 ^ 6" at the same time. Note 
# that each command should be typed on a separate line.

# - 
# 8^3
# 9^6


# - 

# The utility of the source pane and R programs may not be evident right now, but as we begin
# to solve more complex problems, it will quickly become an indispensible tool.

# (3) DATA TYPES AND DATA STRUCTURES ==============================================================

# There are many different data types in R, but you particularly need to know about these four:
#     i. Character - Includes all data written as strings; aka, data in the format "..." (in this
#                    case, the quotes are included!) Character data cannot have mathematical
#                    operations performed upon them.
#     ii. Numeric - Includes all data written in numerical format (basically, the real numbers).
#                   Data may be written as integers, decimals, fractions, and more!
#     iii. Logical - Includes the reserved strings "TRUE", "FALSE", "T", and "F". These values are
#                    stored "under the hood" as 1 for TRUE and 0 for FALSE.
#     iv. Missing - Includes all data for which there is no value. In R, missing data are
#                   represented using the reserved string "NA".

# The following examples will help illustrate the relationship between these data types:

# E3.1 Write and run the command as follows: "1" + "2" (INCLUDE quotes.)

# - 

"1" + "2"

# - 

# E3.2 Write and run the command as follows: 4 == 6

# - 

4 == 6

# - 

# E3.3 Write and run the command as follows: TRUE + 3*TRUE

# - 

TRUE + 3*TRUE

# - 

# E3.4 Write and run the command as follows: 4 - NA + 2 * 4

# - 

4 - NA + 2 * 4


# - 

# This might be a good time to mention that R is case-sensitive. In other words, capitalization
# matters when referring to objects. For instance, "True" and "TRUE" are two different things; only
# the latter is recognized as logical data. This matters very much when we start defining and
# using data objects!

# ... (3i) Vectors ================================================================================

# If you have taken Calculus III, you know that vectors are defined as any quantity having
# magnitude and direction. In R, they serve a much different purpose!

# Imagine looking at a row of seats in a theater. If you were to place a single value in each
# seat, the resulting row would give you a vector. While a minimum of 1 value (seat) is required to
# form a vector, there is technically no maximum. As long as all seats are in the same row, you
# have a vector. A further consraint is that all values contained within a single vector must
# be of the same data type.

# We can define vectors in R by using the following general code:

# c(item1, item2, item3, ..., itemN)

# Let's create a vector to test this out!

# E3i.1 Create a vector containing the elements 2, 3, -1, and 6. Then run the code.

# - 

c(2, 3, -1, 6)

# - 

# E3i.2 Using "+", add two vectors together.

# - 

c(1,2,3) + c(1,2,3)


# - 

# E3i.3 Using "*", multiply two vectors together.

# - 

c(1,2,3) + c(1,2,3)



# - 

# ... (3ii) Matrices ==============================================================================

# A matrix in R is essentially multiple vectors of the same length stacked on top of each other. 
# Thus, a matrix contains both rows and columns. Matrices are also similar to vectors because all
# elements contained within a single matrix must be of the same data type.

# Matrices can be constructed using the following base code:

# matrix(DATA, # of rows, # of columns)

# In its most basic form, DATA is a single vector that is then divided up among rows and columns 
# via the "# of rows" and "# of columns" arguments. When building matrices in this way, it is 
# important to know that they are loaded COLUMN BY COLUMN, not row by row. Let's practice building 
# some matrices below to further illustrate this point:

# E3ii.1 Create a matrix of the following format. Run your code to verify:

# 1 2
# 3 4

# - 

matrix(c(1,2,3,4),2,2)

# - 

# E3ii.2 Create a matrix of the following format. Run your code to verify:

# "a" "b"
# "c" "d"

# - 

matrix(c('a','b','c','d'),2,2)

# - 

# E3ii.3 Using "+", add two matrices together.

# -

matrix(c(1,2,3,4),2,2) + matrix(c(1,2,3,4),2,2)


# -

# E3ii.4 Using "*", multiply two matrices together.

# -

matrix(c(1,2,3,4),2,2) * matrix(c(1,2,3,4),2,2)

# -

# E3ii.5 Using "%*%", multiply two matrices together.

# -

matrix(c(1,2,3,4),2,2) %*% matrix(c(1,2,3,4),2,2)

# -

# ... (3iii) Data Frames ==========================================================================

# Data frames are similar to matrices in that they have rows and columns; however, each column in
# the data frame is permitted to be of a different data type. Consequently, data frames are
# specified differently than matrices. We can construct them using the following base code:

# data.frame(col1Name = col1DATA, col2Name = col2DATA, ..., colNName = colNData)

# As implied by the base code wording, data frames are constructed in this way by adding data
# COLUMN BY COLUMN.

# Note that data frames do not HAVE to have a different data type in each column, they just CAN.

# E3iii.1 Create a data frame of the following format. Run your code to verify:

# one  two  three
#   1    a   TRUE
#   2    b  FALSE
#   3    a   TRUE
#   4    b  FALSE

# -

data.frame('one'=c(1,2,3,4), 'two'=c('a','b','a','b'), 'three'=c(TRUE, FALSE, TRUE,FALSE))


# -

# If all data in a data frame are numeric, the same operations as specified in (3ii) may be
# used here, as well.

# ... (3iv) Lists =================================================================================

# Lists are similar to data frames in that they can hold different data types but similar to
# vectors in that they can be thought of as a series of chairs in which a single element may be
# placed in each chair. The difference between lists and vectors, though, is that the latter can
# only hold a single value (be it numeric, logical, or character) per chair while a list can hold
# either a single value OR an entire data structure per chair. We specify them similar to how we
# specify data frames:

# And now... example time!

# E3iv.1 Create a list in which the first element holds a single logical value, the second element 
# holds a vector of characters, and the third element holds a matrix of numeric values. Name these
# elements "one", "two", and "three", respectively.

# -

list('one'=TRUE,'two'=c('a','b','c'),three=matrix(c(1,2,3,4),2,2))

# -

# E3iv.2 Complete the same example as above, but this time, do NOT name the elements. Instead,
#        just separate them by commas.

# -



# -

# (4) VARIABLES ===================================================================================

# Given our current skills, it can quickly become tedious to keep track of several different
# data objects, especially if such objects are the result of operations applied to numerous
# sub-objects. By using variables, we can both name and store objects for later use. We can do
# so using the following base code:

# variableName <- objectSpecification

# As an example, we might use

# x <- c(1, 2, 3, 4)

# ... which would assign the vector 1, 2, 3, 4 to a variable with the name, "x". If we wanted to
# use this object later, we would simply refer to "x" instead of the much clunkier c(1, 2, 3, 4).
# This is a very useful tool that is important to understand, so we'll take some time to explore
# it through examples.

# E4.1 Create a variable named "evens" that is a vector containing the even integers between 
#      1 and 11 and a variable named "odds" that is a vector containing the odd integers between
#      0 and 10.

# -
evens <- c(0,2,4,6,8,10)
odds <- c(1,3,5,7,9)


# -

# E4.2 Using variable names, add together the two variables created above.

# -

evens + odds


# -

# E4.3 Perform the command as follows: evens <- evens * 2. Then print the variable to the
#      console by typing its name. What has changed about the variable?

# -

evens <- evens * 2

# -

# E4.4 Create a variable named "1234" that is a vector containing the integers 1, 2, 3, and 4.
#      What happens when you try to do so?

# -
1234 <- c(1,2,3,4)


# -

# E4.5 Create a variable named "wow" that is a vector containing the characters "cool" and "neat".
#      Then print the variable to the console by typing its name.

# -

wow <- c('cool','neat'); wow
# -

# E4.6 Create a data frame named "petNames" that contains a column with cat names named "cats",
#      a second column with named "dogs" that contains dog names, and a third column named
#      "hamsters" that contains hamster names.

# -

petNames = data.frame('cats'=c('cat1','cat2','cat3'), 
                      'dogs'=c('d1','d2','d3'), 
                      'hamsters'=c('h1','h2','h3')); petNames
# -

# Variables allow another useful aspect of data frames (and lists) to be utilized. Their columns
# (or elements in the case of lists) can be accessed via the use of the "$" operator. Try it out
# below and see for yourself:

# E4.7 Enter the command as follows and run it: petNames$cats

# -

petNames$cats

# -

# You should see the "cats" column of the petNames data frame print to the console. This tool
# is VERY useful when storing multiple pieces of information in the same frame or list!

# By this point, you may have noticed that the bottom-left pane has updated to reflect the addition
# of four new variables to the global environment; the three vectors are listed under the "Values"
# heading while the "petNames" data frame is listed under the "Data" heading. This pane allows you
# to quickly view which variables are currently available for use and what their names are. While
# it may not seem too useful when only four variables are in play, it can be much more helpful
# when working with dozens (or more) objects.

# If you want to delete all variables listed in the global environment, click the broom at the top
# of the bottom-left pane followed by "Yes" when you get the pop-up message. If you only want to
# remove a single variable, simply use the following command: rm(variableName).

# (5) FUNCTIONS ===================================================================================

# The last thing we'll cover in part 1/2 of Ben's R Boot Camp (TM) are functions. In the applied 
# math courses you have taken so far, functions are "rules" that take input and then use that input
# to produce some kind of output. In R, functions do very much the same thing; they take one or
# more pieces of input in order to produce output based on their definition. Note that the output
# may not always be a number; sometimes, the output will be vectors, data frames, lists, or
# something else. Functions are run by using the following base code:

# functionName(arg1, arg2, ..., argN)

# The inputs to functions (shown above as arg1, arg2, ..., argN) are called arguments. Most of the
# the functions we work with will have three or fewer arguments, but exceptions are certainly
# possible!

# When using functions, sometimes the arguments can be quite long and cause a horizontal scrollbar
# to appear at the bottom of the source pane. Because I'm just a little bit OCD, this triggers me.
# If you are like me, you can also specify functions as follows:

# functionName(arg1,
#              arg2,
#              arg3)

# Just make sure that you start a new line immediately AFTER the comma. Generally, if you split
# up an argument in the middle of a command or word, it will throw an error. Once again, whether
# to keep everything on one line or split it up over multiple lines is a matter of personal
# preference.

# You might have noticed that we've already used a few functions in this boot camp; namely, the
# c(), matrix(), data.frame(), and list() functions. There are MANY other functions out there,
# but the ones we'll primarily focus on will be introduced when they become relevant. Just make
# sure you understand what a function is and how to use it! Note that function output can also
# be assigned to a variable name (as we've done several times above!)

# ... (5i) The Help Command =======================================================================

# It is important to know how to use the help command!

# When connected to the internet, this command allows you to look up detailed information about
# functions and other aspects of R. Even as a statistician, I use it ALL the time when working
# with unfamiliar functions or even to verify the use of a familiar function. The following base
# code gives an idea of how to use it:

# ?functionName

# For instance, entering the command "?matrix" returns the help page regarding matrices. Note that
# the function name must be spelled correctly and be of the correct case, or R will fail to find 
# the correct page (although it may make some suggestions based on how close your misspelling is)!

# Let's use it to look up a function with some familiarity:

# E5i.1 Use the help command to look up the mean() function.

# -

?mean

# -

# ... (5ii) More on Function Arguments ============================================================

# Each argument of a function has a different purpose. In the case of the mean function, the "x"
# argument represents the data for which the mean is calculated, the "trim" argument gives the
# percentage of data that should be trimmed off the top and bottom, and the "na.rm" command
# indicates whether missing values should be excluded or not. Arguments including an "=" in the
# help page have default inputs; in other words, if you do not specify a value for "trim"
# or "na.rm" when using the mean function, it will default to a trim of 0% and will not exclude
# missing values.

# When entered in the order listed on the help page, the arguments need not be named. For instance,
# if you'd like to calculate the 10% trimmed mean of the set of integers 1 through 10 and do not 
# want to exclude missing values, you could use the following function call:

# mean(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10), 0.1, FALSE)

# However, if you for whatever reason would like to list the arguments in a different order, you
# may do so as long as you NAME the arguments as you use them. For example, to get the same result
# as above, you could run the following:

# mean(na.rm = FALSE, x = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10), trim = 0.1)

# If you were to do

# mean(FALSE, c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10), 0.1)

# You would get an error; the FALSE would be treated as a vector of length one (which will run)
# for which the mean should be calculated, but the vector containing the integers would be used as 
# the input for the "trim" argument, which requires a single numeric value between 0 and 0.5 
# (see the help page).