*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${variavel1}    teste
${variavel2}    12345
${variavel3}    something



*** Keywords ***
abrir site do google
        Open Browser    https://www.google.com.br/    chrome
abrir site da globo
        Open Browser    https://www.globo.com/    chrome

fechar navegador
        Close Browser


*** Test Cases ***
Cenário 1: Teste de abrir navegador
    abrir site do google
    fechar navegador
Cenário 2: Teste de abrir site da Globo
    abrir site da globo
    fechar navegador
