class Encryptor
	# hash to hold values and keys for our cipher
	def cipher
		{
		'a' => '', 'b' => '', 'c' => 'o', 
		'd' => '01100100', 'e' => '01000101', 'f' => '01100110', 
		'g' => '01100111', 'h' => '01101000', 'i' => '01101001', 
		'j' => '01101010', 'k' => '01101011', 'l' => '01101100', 
		'm' => '01101101', 'n' => '01101110', 'o' => '01101111', 
		'p' => '01110000', 'q' => '01110001', 'r' => '01110010', 
		's' => '01110011', 't' => '01110100', 'u' => '01110101', 
		'v' => '01110110', 'w' => '01110111', 'x' => '01111000', 
		'y' => '01111001', 'z' => '01111010'
	}
	end










	# can you write a program that doesn't need a second hash?
	def decipher
		{ 
		'01100001' =>'a',  '01100010' => 'b', '01000011' => 'c', 
		'01100100' => 'd', '01000101' => 'e', '01100110' => 'f', 
		'01100111' => 'g', '01101000' => 'h', '01101001' => 'i', 
		'01101010' => 'j', '01101011' => 'k', '01101100' => 'l', 
		'01101101' => 'm', '01101110' => 'n', '01101111' => 'o', 
		'01110000' => 'p', '01110001' => 'q', '01110010' => 'r', 
		'01110011' => 's', '01110100' => 't', '01110101' => 'u', 
		'01110110' => 'v', '01110111' => 'w', '01111000' => 'x', 
		'01111001' => 'y',  '01111010'=> 'z'
	}
	end
	
	# encrypt each letter
	def encrypt_letter(letter)
		lowercase_letter = letter.downcase
		cipher[lowercase_letter]
	end
	
	# encrypt whole string
	def encrypt(string)
  	# 1. Cut the input string into letters
  	letters = string.split("")

  	# 2. Encrypt those letters one at a time, gathering the results
  	results = letters.collect do |letter|
    	encrypted_letter = encrypt_letter(letter)
  		end
  	results.join
	end


	def decrypt(message)
		solved = message.scan(/.{8}/)
		meow = solved.collect do |letter|
			decipher[letter]
		end
	end
end
