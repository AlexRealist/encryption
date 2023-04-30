require 'digest' # подсоединил метод шифрования

puts "Введите слово или фразу для шифрования:"

user = gets.chomp
puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"

user_way = gets.chomp.to_i

until user_way.between?(1, 2) # если не 1 и 2 заново спросить у пользователя!
  puts "Введите 1 или 2"
  user_way = gets.chomp.to_i
end

puts "Результат"

if user_way == 1
  puts Digest::MD5.hexdigest(user)
else
  puts Digest::SHA1.hexdigest(user)
end
