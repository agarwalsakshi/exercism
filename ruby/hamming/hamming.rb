module BookKeeping
	VERSION = 1
end

class Hamming
	def self.compute(param1, param2)
		if( param1.length == param2.length)
			i = 0
			differenceCount = 0
			while(i<param1.length)

				if(param1[i] != param2[i])
					differenceCount+=1
				end

				i+=1
			end
			differenceCount

		else
			raise(ArgumentError)
		end
	end
end

# Hamming.compute("Sakshi", "Sakaai")
# Hamming.compute("SAkshi", "Agarwal")
