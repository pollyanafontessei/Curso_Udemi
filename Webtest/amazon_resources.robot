*** Settings***
Library     SeleniumLibrary

*** Variables ***
${URL}                  https://www.amazon.com.br
${menu_eletronicos}      //span[contains(.,'ELETRÔNICOS')]
${slogan}         "Eletrônicos e Tecnologia"
*** Keywords ***


Abrir o navegador
    open browser        browser=chrome
    Maximize browser Window
Fechar o navegador  
    close browser
 
Acessar a home page do site Amazon.com.br
    Go to  url=${URL}  
    Wait Until Element Is Visible  locator=${menu_eletronicos} 
Entrar no menu "Eletrônicos"
 
     Click Element  locator=${menu_eletronicos}

Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Wait Until page contains    text=Eletrônicos e Tecnologia
