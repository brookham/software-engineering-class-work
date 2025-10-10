# Name Mangler

def modified_name(name, choice)
  first, last = name.split
  reversed_name = "#{last} #{first}"
  
  if choice == true
    name = reversed_name << " Borg"
  end
  if choice == false
    name = reversed_name
  end

  puts name
end
modified_name("Brook Hamilton", false)
modified_name("Brook Hamilton", true)
