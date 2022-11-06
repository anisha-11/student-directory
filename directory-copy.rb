#lets put all students into an array
students = [ 
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name:"Darth Vader", cohort: :november},
  {name:"Nurse Ratched", cohort: :november},
  {name:"Michael Corleone", cohort: :november},
  {name:"Alex DeLarge", cohort: :november},
  {name:"The Wicket Witch of the West", cohort: :november},
  {name:"Terminator", cohort: :november},
  {name:"Freddy Krueger", cohort: :november},
  {name:"The Joker", cohort: :november},
  {name:"Joffrey Baratheon", cohort: :november},
  {name:"Norman Bates", cohort: :november}
]

def interactive_menu
  students = []
  loop do
    puts "1. Input the students"
    puts "2. show the students"
    puts "9. Exit"
   # 2. read the input and save it into a variable 
   selection = gets.chomp
   # 3. do what the user has asked
   case selection 
      when "1"
       students = input_students
      when "2"
        print_header
        print(students)
        print_footer(students)
      when "9"
       exit ## this will cause the program to terminate
      else
       puts "I don't know what you meant, try again"
    end
  end
end
  

def plural_students(n)
  if n == 1 
    puts "#{n} great student"
  else 
    puts "#{n} great students"
  end 
end 

@width = (100)

def another_student
  puts "Add another student?".center(@width)
  another = gets.chomp
  if another == "yes"
    return true 
  elsif another == "no"
    return false 
  else
    puts "This won't work".center(@width)
  end
  another_student
end 

def input_students
  students = []
  another = another_student
  while another
    puts "Enter a student name".center(@width)
    name = gets.chomp 
    puts "Enter a cohort".center(@width)
    cohort = gets.chomp
    puts "Enter country of birth".center(@width)
    birth_country = gets.chomp 
    students << { name: name, cohort: cohort, birth_country: birth_country }
    puts "Now there are #{plural_students.count} students".center(@width)
    another = another_student
  end 
  #return array of students 
  students 
end

def print_header
    puts "The students of Villains Academy".center(@width)
    puts "-------------".center(@width)
end

def print(students)
  number = 0 
  while number < students.count
    puts "#{number + 1}. #{students[number][:name]}, #{students[number][:birth_country]} (#{students[number][:cohort]}) cohort".center(@width)
    number += 1
  end
end

def print_certain_letter 
  puts "Enter letter to find the student".center(@width)
  letter = gets.chomp
  number = 0 
  students.each do |student|
    if student[:name].start_with?(letter.downcase, letter.upcase)
    puts "#{student[:name]}, #{students[number][:birth_couunty]} (#{student[:cohort]} cohort)".center(@width)
    number += 1
    else
    end
  end
  puts "There are #{plural_students.count} students with name beginning with #{letter}".center(@width)
end 

def print_name_by_character_length(students)
  puts "Enter letter to find the student".center(@width)
  letter = gets.chomp
  number = 0 
  students.each do |student|
    if student[:name].length < 12 
      puts "#{student[:name]} (#{student[:cohort]} cohort)".center(@width)
      number += 1
    end 
  end
  puts "There are #{plural_students.count} students with names less than 12 characters".center(@width)
end 

def print_footer(students)
  puts "Overall, we have #{plural_students.count} great students".center(@width)
end


students = input_students
#nothing happens until we call the methods
print_header
print(students)
print_footer(students)
print_interactive_menu