saved_password=12345
amount=1000

puts "Please Enter Your Password"
password_enterd=gets
password_as_a_number=password_enterd.to_i

#count var for validation
count=0

for i in 0..2
	count+=1

	#check password
	if password_as_a_number == saved_password
		puts "How much money do you want ?"
		taked_money=gets
		taked_money_as_a_number=taked_money.to_i

		#loop for check the user amount
		for x in 0..2
			count+=1

			if taked_money_as_a_number <= 0 or taked_money_as_a_number>amount

				if count !=3
					puts "Oops,The amount you entered is not allowed .."
					taked_money=gets
					taked_money_as_a_number=taked_money.to_i
					
				end

			else
				puts "Your total amount is #{amount-taked_money_as_a_number} and withdrawn amount is #{taked_money_as_a_number}"
				break
			end

		end

		break


	else

		if count != 3
			puts "Please try again ..."
			password_enterd=gets
			password_as_a_number=password_enterd.to_i
			
		else
			puts "Sorry , try again after 1 houre"
		end

	end

end






