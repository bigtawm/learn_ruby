#write your code here

def add(num1,num2)
	return num1+num2
end

def subtract(num1,num2)
	return num1-num2
end

def sum(num_array)
	sum = 0
	num_array.each do |number|
		sum += number
	end
	return sum
end

def multiply (num1)
	result = 1
	num1.each {|num| result*=num}
	return result
end


def power (num1,num2)
	power_num = 1
	num2.times {power_num *= num1}
	return power_num
end

def factorial number
	factorial_num=1
	if number > 0
		factorial_num = (number* factorial(number-1))
	end

	return factorial_num
end
