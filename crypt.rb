class BaseClass
	def run(str)
  	outputStr = ''
  	charAr = str.to_s.scan(/./)
  	charAr.each do |char|
  		index = @input.index(char)
  		if index != nil
  			outputStr += @output[index]
  		else
  			outputStr += char
  		end
  	end
  	outputStr
  end
end

class Encryptor < BaseClass
  def initialize
  	@input = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
  	@output = 'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm'
  end
  
end

class Decryptor < BaseClass
  def initialize
  	@input = 'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm'
  	@output = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
  end
end

class EncryptionEngine
  def encrypt(str)
  	encryptor = Encryptor.new
  	encryptor.run(str)
  end

  def decrypt(str)
  	decryptor = Decryptor.new
  	decryptor.run(str)
  end
end

engine = EncryptionEngine.new
output = engine.encrypt("My Message")
puts output  # outputs "Zl Zrffntr"
output2 = engine.decrypt("Zl Zrffntr")
puts output2 # outputs "My Message"
