*** Settings ***
[Documentation]     Essa suite testa o site da amazon.com.br
Resource            amazon_resources.robot
Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador
         
     

*** Test Cases  ***
Cases Test 01   Acesso o Menu "Eletrônicos" 
    [Documentation]     Esse teste verifica o menu eletrônicos do site Amazon.com.br
    [Tags]              Menus       categorias
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Eletrônicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se o título da página fica "Eletrônicos e Tecnologia Amazon.com.br"|
    Verificar se aparece a categoria "Computadores e Informática"


Cases Test 02   Pesquisa de Produtos
    [Documentation]     Esse teste verifica a busca de um produto
    [Tags]              Busca_produtos
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa     
    Verficar o resultado da pesquisa, se está listando o produto pesquisado