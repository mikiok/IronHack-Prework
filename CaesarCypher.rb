def solve_cipher(text, num = -3)
	cipher = ''
	text_array = text.split('')
	for letter in text_array
		# converts letter to ascii and shifts
		val = letter.ord
		if val < 127
			val = val + num
		end
		cipher += val.chr
	end
	cipher
end

puts solve_cipher("P| uhdo qdph lv grqdog gxfn",)

