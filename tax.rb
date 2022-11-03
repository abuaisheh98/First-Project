#Bagin app
def main
	puts "Please Enter Username .. "
	username=gets.chomp

	puts "Please Enter Password .. "
	password=gets.chomp

	return if !login username, password
	begin		
		    puts "Plese Enter your salary .."
			sal=gets.chomp.to_i
			your_salary sal
			tax = tax_percentage sal
			net_salary tax,sal
	rescue => e		
		puts "Sorry .. there is error "+e.message
	end
end


#login function
def login username,password
	name ="Laith98"
	pass="12345"
	(username == name and password == pass) ? true : false
end

#salary checker
def your_salary salary
	unless (salary > 0 and salary <= 5000)
	 	raise "Your Salary less than 0 !!" if salary < 0
	 	raise "Your Salary more than 5000 !!" if salary > 5000
	 else
	 	 salary
	end  
end


#detect tax percentage
def tax_percentage salary
	tax_rate=0
	case salary
	when 1..1000
		tax_rate = 0.001
	when 1001..2000
		tax_rate = 0.005
	when 2001..3000
		tax_rate = 0.01
	else
		tax_rate = 0.02
	end

	tax_rate
end

#net salary calculation
def net_salary tax,salary	
	puts "Tax percentage is #{tax}jod\nTax is #{tax*salary}jod\nNet salary is #{salary-(tax*salary)}jod"
end


#start app
main

