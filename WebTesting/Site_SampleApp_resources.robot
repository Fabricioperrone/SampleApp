*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}                          https://sampleapp.tricentis.com/101/app.php
${MENU_LOCATOR}                 //select[contains(@name,'Make')]
# ${TITLE_VEHICLE_DATA}           Enter Vehicle Data
# ${TEXTO_TITLE_VEHICLE_DATA}     Enter Vehicle Data
# ${TITULO}                       //a[contains(.,'Enter Vehicle Data12')]
${PRECOTABELA}                   6,75
${CHECKBOX}                     //option[@value='Porsche'][contains(.,'Porsche')]
${Engine_Performance}           engineperformance
${BTN_NEXT}                     //button[@name='Next (Enter Insurant Data)'][contains(.,'Next »')]
${FirstName}                    João
${LOCATOR_NAME}                 //label[@class='main'][contains(.,'First Name')]
${CV}                           450 
${DATAFABRICACAO}               05/08/1964
${KM_ANUAL}                     15.000,00
${MATRICULA}                    123456
${LASTNAME}                     Ruy
${BTN_MENU}                     //a[contains(.,'Enter Insurant Data7')]
${DATANASCIMENTO}               27/01/1981
${ENDERECO}                     Rua 3 de outubro, 738
${ZIPCODE}                      94475800
${CIDADE}                       Porto Alegre
${WEBSITE}                      https://fabricioperrone.github.io/
${BTN_UPLOAD}                   //button[@type='button'][contains(.,'Open')]
${FILE}                         C:\Users\Fabricio Perrone\Desktop\eu.jpg
*** Keywords ***
Abrir o navegador
    Open Browser  browser=firefox
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser
Passo 1: Acessar o site e preencher os formulários
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${MENU_LOCATOR}

Preencha os campos obrigatórios com os detalhes da marca do veículo.
    Go To    url=${URL}
    Click Element    locator=//select[contains(@name,'Make')]
    Click Element    locator=${CHECKBOX}

Preencha os campos obrigatórios com os detalhes da quilometragem do veículo.
    Input Text    locator=${Engine_Performance}    text=${CV}

Preencha os campos obrigatórios com os detalhes da data de farbicação do veículo.
    Input Text    locator=dateofmanufacture    text=${DATAFABRICACAO}

Preencha os campos obrigatórios com os detalhes quantidade de assentos do veículo.
    Click Element    //select[contains(@name,'Number of Seats')]
    Click Element    locator=//option[@value='2'][contains(.,'2')]

Preencha os campos obrigatórios com os detalhes do tipo de do veículo.
    Click Element    locator=Fuel Type
    Click Element    locator=//select[contains(@name,'Fuel Type')]

Preencha os campos obrigatórios com os detalhes do preço de tabeça do combustível.
    Click Element    locator=listprice
    Input Text    locator=listprice    text=${PRECOTABELA}

Preencha os campos obrigatórios com os detalhes número de matrícula.
    Input Text    locator=licenseplatenumber   text=${MATRICULA}

Preencha os campos obrigatórios com os detalhes da quilometragem anual.
    Input Text    locator=annualmileage    text=${KM_ANUAL}
    Click Button    locator=${BTN_NEXT}
Na aba "Enter Insurant Data", Preencha os campos obrigatórios com os dados do segurado primeiro nome.
    Go To    url=${URL}
    Click Button    locator=nextenterinsurantdata
    Input Text    locator=firstname    text=${FIRSTNAME}
Preencha os campos obrigatórios com os dados do segurado sobrenome.
    Input Text    locator=lastname    text=${LASTNAME}
Preencha os campos obrigatórios com os dados do segurado data de aniverário.
    Input Text    locator=birthdate    text=${DATANASCIMENTO} 
Preencha os campos obrigatórios com os dados do segurado genero.
    Click Element   locator=//label[@class='ideal-radiocheck-label'][contains(.,'Male')]
Preencha os campos obrigatórios com os dados do segurado endereço.
    Input Text    locator=streetaddress    text=${ENDERECO}
Preencha os campos obrigatórios com os dados do segurado cep.
    Input Text    locator=zipcode    text=${ZIPCODE} 
Preencha os campos obrigatórios com os dados do segurado cidade.
    Input Text    locator=//input[contains(@name,'City')]    text=${CIDADE} 
Preencha os campos obrigatórios com os dados do segurado ocupação.
    Click Element    locator=//select[contains(@name,'Occupation')]
    Click Element    locator=//option[@value='Public Official'][contains(.,'Public Official')]
Preencha os campos obrigatórios com os dados do segurado hobbies.
    Click Element    locator=//label[contains(.,'Bungee Jumping')]
Preencha os campos obrigatórios com os dados do segurado website.
    Input Text    locator=//input[@name='Website']  text=${WEBSITE}
Preencha os campos obrigatórios com os dados do segurado upload foto.
    Wait Until Element Is Visible   picture
    # Click Button    ${BTN_UPLOAD}   
    Choose File     picture   ${FILE}
    # Wait Until Page Contains        //input[contains(@title,'eu.jpg')]
# Na aba "Enter Product Data" Preencha os campos obrigatórios com os detalhes do produto data de início.
#     Go To    url=${URL}
#     Click Button    locator=nextenterproductdata
