require 'date'
blog_entries = {}
date = Date.today

puts "Well, hey there! Ready for your Ruby blog entry?"
print "Today is ", date, "."
puts ''
puts "What did you do in Ruby today, dude? Please use the associated number to tell me!"
puts ''
chatty = gets.chomp

puts "1) Read about it"
puts "2) Did some exercises"
puts "3) Coded!!"
puts "4) Nothing in Ruby... =["
puts ''
puts "-------------------------"
puts ''
print "User input: ", chatty
puts ''
puts ''

case chatty
    when '1'
        holder = []
        puts "Oh yeah? What did you read about today. Keep it short, Dickens.."
        read_about = gets.chomp
        holder[0] = read_about
        print "So you read about: ", read_about
        puts ''
        puts "And did you find it interesting?"
        liked_it = gets.chomp
        holder[1] = liked_it
        print "You said: ", liked_it
        puts ''
        blog_entries[date].nil? ? blog_entries[date] = holder : "We already have an entry for today!"
        puts "Thank you for that! I'm going to store that in the blog!"
    when '2' 
        holder = []
        puts "Great!! Where were the exercises from?"
        exer_source = gets.chomp
        holder[0] = exer_source
        print "So you worked on exercises from: ", exer_source
        puts ''
        puts "And what level of difficulty?"
        exer_diff = gets.chomp
        holder[1] = exer_diff
        print "You said it was this difficult: ", exer_diff
        puts ''
        blog_entries[date].nil? ? blog_entries[date] = holder : "We already have an entry for today!"
        puts "Thank you for that! I'm going to store that in the blog!"
    when '3' 
        holder = []
        puts "Nice! What kind of coding?"
        cod_1 = gets.chomp
        holder[0] = cod_1
        print "So you did some ", cod_1, " coding!"
        puts ''
        puts "And what was the coding for?"
        cod_2 = gets.chomp
        holder[1] = cod_2
        print "So your coding was for this purpose: ", cod_2
        puts ''
        blog_entries[date].nil? ? blog_entries[date] = holder : "We already have an entry for today!"        
        puts "Thank you for that! I'm going to store that in the blog!"
    when '4' 
        holder = []
        puts "You didn't do anything in Ruby!? Well, what DID you do?"
        nadda_1 = gets.chomp
        holder[0] = nadda_1
        print "So you did: ", nadda_1
        puts ''
        puts "And was it worth it, jerk? Obviously not, but please go on.."
        nadda_2 = gets.chomp
        holder[1] = exer_source
        print "So you think that was more worthwhile than coding... As if."
        puts ''
        blog_entries[date].nil? ? blog_entries[date] = holder : "We already have an entry for today!"        
        puts "Thank you for that! I'm going to store that in the blog!"
    else 
        puts "Hey... you were supposed to use a number 1 through 4.. Can you read!?"
end

puts blog_entries