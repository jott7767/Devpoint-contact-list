contacts = []
continue = true
none = "There's no one here"
while continue === true 

puts "---Contacts List---"
puts "1) All Contacts"
puts "2) Add Contact"
puts "3) Delete Contact"
puts "4) Edit Contact"
puts "5) Exit"
choice = gets.to_i

    case choice
        when 1
          if contacts.count < 1
            continue == true  
            puts "There's no one here"
          else
            puts contacts.sort
          end    
        when 2
            puts "Add contact info:"
            contact_info = gets.strip
            contacts << contact_info
            puts "Contact #{contact_info} added"
        when 3 
          if contacts.count < 1 
            continue == true
            puts none
          else    
            puts "Who do you hate?"
            hater = gets.strip
            contacts.delete(hater)
            puts "Who needs 'em?"
          end    
        when 4 
          if contacts.count < 1
            continue == true  
            puts none
          else
            puts contacts.sort  
            puts "Edit Who?"
            edited = gets.strip
            contacts.delete(edited)
            puts "New Contact info:"
            new_contact = gets.strip
            contacts << new_contact
            puts "Contact Updated!"
          end
            
        when 5
            continue = false
            puts "Thanks, bye!"
            
        when choice > 5
            puts "Nice try wise-guy"
        else
            puts "Nice try wise-guy"
        
    end
  
end    