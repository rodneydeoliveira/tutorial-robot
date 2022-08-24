*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${input_name}        id:name
${input_phone}       id:phone
${input_email}       id:email
${input_password}    id:password
${textarea_address}  id:address
${button_submit}     name:submit
    


*** Keywords ***
abrir navegador e acessar o site
    Open Browser    https://itera-qa.azurewebsites.net/home/automation     chrome
preencher os campos
    Input Text    ${input_name}          Rodney
    Input Text    ${input_phone}         96771
    Input Text    ${input_email}         rodney@gmail.com
    Input Text    ${input_password}      123456
    Input Text    ${textarea_address}    xxxxxxxxxxxxxxxx

clicar em submit
    Sleep    3s
    Click Button    ${button_submit}
fechar o navegador
    Close Browser



*** Test Cases ***
Cenario 1: Preencher o formulário
    abrir navegador e acessar o site
    preencher os campos
    clicar em submit
    fechar o navegador