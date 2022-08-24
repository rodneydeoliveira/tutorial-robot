*** Settings ***
Library  SeleniumLibrary


*** Variables ***
#Dados da pesquisa
${títuloDoVídeo}    Michael Jackson Hollywood Tonight

#Variáveis de configuração
${URL}    https://www.youtube.com/
${Browser}    chrome

#Elementos
${input_search}     //input[@id="search"]
${button_search}    //button[@id="search-icon-legacy"]
${primeira_opcao}    (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
*** Keywords ***
Dado que acesso o site do Youtube
    Open Browser        ${URL}    ${Browser}

Quando pesquiso o nome da música
    Wait Until Element Is Visible  ${input_search}  10
    Input Text  ${input_search}    ${títuloDoVídeo}
    Click Button    ${button_search}

E clico na primeira opção
    Wait Until Element Is Visible    ${primeira_opcao}  10
    Click Element    ${primeira_opcao}
    
Então o vídeo é executado
    Page Should Contain    Compartilhar


*** Test Cases ***
Cenário 1: Executar vídeo no Youtube
    Dado que acesso o site do Youtube
    Quando pesquiso o nome da música
    E clico na primeira opção
    Então o vídeo é executado