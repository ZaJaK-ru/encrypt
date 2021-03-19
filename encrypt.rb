require 'digest'

puts "Введите слово или фразу для шифрования:"
text_to_encrypt = gets.to_s.chomp

puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"
print ">"
variant_encrypt = gets.to_i
puts "Вот что получилось:"
case variant_encrypt
when 1 then puts Digest::MD5.hexdigest text_to_encrypt
when 2 then puts Digest::SHA1.hexdigest text_to_encrypt
end