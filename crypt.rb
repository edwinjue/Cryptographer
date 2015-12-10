class Encryptor
  def initialize
  	@input = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'.scan(/./)
  	@output = 'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm'.scan(/./)
  end
  def run(str)
  	encryptedStr = ''
  	charAr = str.to_s.scan(/./)
  	charAr.each do |char|
  		index = @input.index(char)
  		if index != nil
  			encryptedStr += @output[index].to_s
  		else
  			encryptedStr += char
  		end
  	end
  	encryptedStr
  end
end

class Decryptor
  def initialize
  	@input = 'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm'
  	@output = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
  end
  def run(str)
  	decryptedStr = ''
  	charAr = str.to_s.scan(/./)
  	charAr.each do |char|
  		index = @input.index(char)
  		if index != nil
  			decryptedStr += @output[index].to_s
  		else
  			decryptedStr += char
  		end
  	end
  	decryptedStr
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
