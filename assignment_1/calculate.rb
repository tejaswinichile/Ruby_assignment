class Calculate
        def operation op1,op2,opearator
                op1=op1.to_i
                op2=op2.to_i
                op1.send(opearator,op2)
        end


end

c=Calculate.new

puts "Enter two no"
operand1=gets.chomp
operand2=gets.chomp

puts "Enter operator:"
operator=gets.chomp
op=c.operation(operand1,operand2,operator)
puts "output of operation is:#{op}"


