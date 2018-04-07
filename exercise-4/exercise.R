# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(str1, str2){
  if(nchar(str1) >= nchar(str2)*2 | nchar(str2) >= nchar(str1)*2){
    return(TRUE)
  }
  else{
    return(FALSE)
  }
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
is_twice_as_long("abcd", "ab")
is_twice_as_long("ab", "ab")


# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(str1, str2){
  first_long <- nchar(str1) - nchar(str2)
  second_long <- nchar(str2) - nchar(str1)
  
  if(first_long >= 1){
    return(paste("Your first string is longer by", first_long, "characters"))
  }
  
  else if(second_long >= 1){
    return(paste("Your second string is longer by", second_long, "characters"))
  }
  
  else{
    return(paste("Your strings are the same length!"))
  }
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
describe_difference("abc", "ab")
describe_difference("ab", "abc")
describe_difference("ab", "ab")
