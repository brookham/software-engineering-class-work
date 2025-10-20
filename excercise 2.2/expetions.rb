# In-class Challenge: Exceptions versus return codes

# For this challenge, we're going to be writing wrapper functions to call
# `function_1()` and `function_2()`.

# Call these wrappers `function_1_wrapped()` and `function_2_wrapped()`.
# They should call the functions they wrap up.

# Don't change anything in `function_1()` or `function_2()`.

# Here we go!

# 1. Wrap this up so it fires an exception instead of using an error code:


   def function_1(x)
       if x == 99
           return nil
       end
   
       x + 1
   end


# 2. Wrap this up so that it returns an error code (`nil`) instead of an
#    exception.

   def function_2(x)
       if x == 99
           raise IndexError
       end
  
       x + 1
   end


## What to turn in

def function_1_wrapped(function)
    if function == IndexError
        return nil
    end
end

def function_2_wrapped(function)
    if function == nil
        raise IndexError
    end
end

function_1_wrapped(function_1(99))
function_2_wrapped(function_2(99))