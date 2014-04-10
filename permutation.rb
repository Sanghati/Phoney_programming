class Permutation
	
	def initialize (phone_array)
		@phone_array = phone_array
		@phone_hash = {"0"=> ["0","0","0"], "1"=> ["1","1","1"], "2"=> ["A","B","C"] , "3" => ["D","E" ,"F"] ,
				   "4" => ["G","H","I"],"5" => ["J","K","L"], "6" =>["M","N","O"],"7" => ["P","R","S"],
				   "8"=>["T","U","V"],"9"=>["W","X","Y"]}
	end
	def permute
		
		array_one = @phone_hash[@phone_array[0]]

		array_two  = @phone_hash[@phone_array[1]]

		array_three = @phone_hash[@phone_array[2]]

		array_four = @phone_hash[@phone_array[3]]

		puts "Solution output : "

		print array_one.product(array_two,array_three,array_four).uniq
	end
end
