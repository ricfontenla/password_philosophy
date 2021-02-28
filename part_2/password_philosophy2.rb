require 'csv'
require_relative './lib/analyzer.rb'

puts('Password Philosophy')
#Each line gives the password policy and then the password.
#Each policy actually describes two positions in the password, where 1 means the first character, 2 means the second character, and so on
#Exactly one of these positions must contain the given letter
#How many passwords are valid according to their policies?

file = File.read('./../data/passwords.txt')
csv = CSV.parse(file)

total = Analyzer.new(csv).test()

puts("O total de senhas possiveis é: #{total}")
