@login
Feature: Login

  @valid
  Scenario: Login Usuário Válido

    Given que estou na tela de login
    When tento fazer um login com um usuário válido
    Then devo me logar

  @invalid
  Scenario: Login Usuário inválido

    Given que estou na tela de login
    When tento fazer um login com um usuário inválido
    Then não devo me logar