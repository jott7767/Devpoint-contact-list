$think = "Thinking... "



def calc_start
  puts ""
  puts "What is your number? "
  print ">>: "
end  
 


def second_choice
  puts "What is the other number?:"
  print ">>: "
end

def add(num2, num4)
  puts $think
  result = num2 + num4
  puts "#{num2} + #{num4} = #{result.round(2)}"
end  

def minus(num2, num4)
  puts $think
  result = num2 - num4
  puts "#{num2} - #{num4} = #{result.round(2)}"
end  

def mult(num2, num4)
  puts $think
   result = num2 * num4
    puts "#{num2} * #{num4} = #{result.round(2)}"
end
    
def divide(num2, num4)
  puts $think
   if num4 == 0 
     puts "nope"
   else
     result = num2 / num4
     puts "#{num2} / #{num4} = #{result.round(2)}"
  
   end  
end     
    
  
continue = true


  puts "Welcome to Ruby Calculator"
  puts " #######***+-/***#######"
while continue 
 calc_start
  num1 = gets.strip.downcase
    if num1 == "quit"
      continue = false

    else num2 = num1.to_f
    end
      
  
   puts "+ - * /"
   puts "What operation?"
   print ">>: "
   symbol = gets.strip.downcase

 second_choice
   num3 = gets.strip.downcase
    if num3 == "quit"
      continue = false
    else num4 = num3.to_f 
    end  

 case symbol 
   when "*" 
     mult(num2, num4)
   when "/"
     divide(num2, num4)
   when "+"
     add(num2, num4)
   when "-"
     minus(num2, num4)
   when "quit"
     continue = false
   else
     puts "operator not supported, try agin"
 end  
 

end