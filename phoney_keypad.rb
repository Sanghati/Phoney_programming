require_relative './permutation'

class PhoneKeypad
	phone_number = []
	validate_phone_number = []
	puts "Enter the phone number : "
	validate_phone_number = gets.to_i
	if validate_phone_number = ~ /\d{3} - \d{4}/
		phone_number = validate_phone_number.to_s.split('-',2)
		permute_number = phone_number[1].chomp.split('')
		permute = Permutation.new(permute_number)
		permute.permute	
	else
	puts "Please Enter 8 digit only"
	end
	
end
