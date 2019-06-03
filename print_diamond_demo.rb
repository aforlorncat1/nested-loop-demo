# Write a function that will take in an odd integer as the height and print out hollow diamond. Use nested loops to achieve this.
#     *    
#    * *   
#   *   *  
#  *     * 
# *       *
#  *     * 
#   *   *  
#    * *   
#     *  

def user_input
    loop do
    print "Please input an integer: "
    input_number = gets.chomp
        if input_number == "0"
            puts "0 is not a positive integer"
        elsif input_number.to_i < 0
            puts "The number you have input is a negative integer"
        elsif input_number.to_i == 0
            puts "You have input an invalid integer"
        elsif input_number.to_i%2 == 0
            puts "You must input an odd number"
        else
            return input_number.to_i
        end
    end
end

# Supplemental demonstration to show what's exactly happening with the looped variables
# Top of the diamond
def print_x(size)
    mid = (size + 1)/2
        mid.downto(1) do |i|
        for j in 1..size
            print i.to_s + "*"
            print j.to_s + "|"
        end
        print "\n"
    end
# Bottom of the diamond
    for i in 2..mid 
        for j in 1..size
            print i.to_s + "*"
            print j.to_s + "|"
        end
        print "\n"
    end
end


# 
# def print_diamond(size)
#     mid = (size + 1)/2
#     mid.downto(1) do |i|
#         for j in 1..size
#             if i == j || i == size + 1 - j
#                 print "*"
#             else
#                 print " "
#             end
#         end
#         print "\n"
#     end

#     for i in 2..mid 
#         for j in 1..size
#             if i == j || i == size + 1 - j
#                 print "*"
#             else
#                 print " "
#             end
#         end
#         print "\n"
#     end
# end




input_number  = user_input
print_diamond(input_number) 