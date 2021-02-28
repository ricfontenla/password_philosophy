require 'csv'
require_relative './lib/analyzer.rb'

puts('Password Philosophy')
#Each line gives the password policy and then the password.
#The password policy indicates the lowest and highestnumber of times a given letter must appear for the password to be valid
#How many passwords are valid according to their policies?

file = File.read('./../data/passwords.txt')
csv = CSV.parse(file)

total = Analyzer.new(csv).test()

puts("O total de senhas possiveis é: #{total}")
