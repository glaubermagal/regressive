Given(/^que estou na tela de login$/) do
  @browser.goto "www.centauro.com.br/slogin"
end

When(/^tento fazer um login com um usuário válido$/) do
  @browser.text_field(class:"box-TipoUser").set "37536617402@teste.com"
  @browser.radio(id:"optYesclient").click
  @browser.text_field(name:"Senha").set "123"
  @browser.button(class:"btn-entrar-login").click
end

When(/^tento fazer um login com um usuário inválido$/) do
  @browser.text_field(class:"box-TipoUser").set "a37536617402@teste.com"
  @browser.radio(id:"optYesclient").click
  @browser.text_field(name:"Senha").set "123"
  @browser.button(class:"btn-entrar-login").click
end

Then(/^devo me logar$/) do
  text = @browser.div(class:"container-header-ab").text
  expect(text.include?("Olá")).to be true
end

Then(/^não devo me logar$/) do
  expect(@browser.url).to include("/slogin")
end