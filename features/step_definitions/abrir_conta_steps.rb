#encoding: utf-8

Dado(/^que eu tenho cadastro de novo cliente$/) do
  @nome = Faker::Name.name
  puts @cpf = Faker::Number.number(11)
  @email = Faker::Internet.email
  @celular = Faker::PhoneNumber.phone_number
end

Dado (/^o deposito inicial desse cliente é de (\d+)$/) do |valor|
  @deposito = valor
end

Quando(/^faço o cadastro de nova conta$/) do
  @home.load
  @navbar.new_account.click
  @account.save(@home, @cpf, @email, @celular, @deposito)

end

Então(/^vejo a mensagem "([^"]*)"$/) do |msg|
  expect(@home.get_alert).to include msg
end

Dado(/^que eu tenho um CPF ja cadastrado$/) do  
  @nome = Faker::Name.name
  @cpf = '66181378834'
  @email = Faker::Internet.email
  @celular = Faker::PhoneNumber.phone_number
end