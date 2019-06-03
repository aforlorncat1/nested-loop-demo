# Write a function that will take in an odd integer as the height and print out an X. Use nested loops to achieve this.
        # *    *
        #  *  *
        #   * *
        #    *
        #   * *
        #  *   *
        # *     *

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
def print_x(size)
    for i in 1..size
        for j in 1..size
            print i.to_s + "*"
            print j.to_s + "|"
        end
        print "\n"
    end
end

# Function to print out the X, left line obeys x=y, right one follows the pattern i = size + 1 - j 
# def print_x(size)
#     for i in 1..size
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

input_number = user_input
print_x(input_number)