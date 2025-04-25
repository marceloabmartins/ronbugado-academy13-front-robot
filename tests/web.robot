*** Settings ***
Documentation    ronbugado-academy13-front-robot

Library    SeleniumLibrary
Library    RequestsLibrary
Library    String
Library    random
Library    Collections
Library    ScreenCapLibrary
Library    ../utils/get_faker.py

Resource    ../utils/variables.resource


*** Test Cases ***
#20513 Login
    #20518 Login de Acesso
Login de Sucesso
    [Documentation]    Realiza login com [mailAdminValid] e [passwordAdminValid]
    [Tags]    LoginSucesso    #robot --include LoginSucesso --outputdir log web.robot
    Realiza Login de Acesso    ${mailAdminValid}    ${passwordAdminValid}

#20624 Cost Center
    #20625 Cadastrar Novo Centro de Custo
Cadastrar Novo Centro de Custo
    [Documentation]    Realiza o cadastro de um novo centro de custo
    [Tags]    CadastroCen    #robot --include CadastroCen --outputdir log web.robot
    Realiza Login de Acesso    ${mailAdminValid}    ${passwordAdminValid}
    Cadastrar Novo Centro de Custo

    #20626 Editar Centro de Custo
Editar Centro de Custo
    [Documentation]    Realiza a edição do Centro de Custo, recebendo o nome do Centro de Custo [cent]
    [Tags]    EditarCent    #robot --include EditarCent --outputdir log web.robot
    Realiza Login de Acesso    ${mailAdminValid}    ${passwordAdminValid}
    Editar Centro de Custo    #${cent}

    #20627
Listar Centro de Custo
    [Documentation]    Listar os Centros de Custo
    [Tags]    ListarCent    #robot --include ListarCent --outputdir log web.robot
    Realiza Login de Acesso    ${mailAdminValid}    ${passwordAdminValid}
    Listar Centro de Custo

#20628 Department
    #20629 Criar Departamento
Criar Departamento
    [Tags]    CadastroDep    #robot --include CadastroDep --outputdir log web.robot
    Realiza Login de Acesso    ${mailAdminValid}    ${passwordAdminValid}
    Criar Departamento

    #20630 Editar Departamento
Editar Departamento
    [Tags]    EditarDep    #robot --include EditarDep --outputdir log web.robot
    Realiza Login de Acesso    ${mailAdminValid}    ${passwordAdminValid}
    Editar Departamento    #${dept}

    #20631 Inativar Departamento
#Inativar Departamento
    #[Tags]    InativarDep    #robot --include InativarDep --outputdir log web.robot

    #20632 Listar Departamento
Listar Departamento
    [Tags]    ListarDep    #robot --include ListarDep --outputdir log web.robot
    Realiza Login de Acesso    ${mailAdminValid}    ${passwordAdminValid}
    Listar Departamento

    #20633 Pesquisar Departamento
# Pesquisar Departamento
#     [Tags]    PesquisarDep    #robot --include PesquisarDep --outputdir log web.robot

*** Keywords ***
Abrir o navegador
    Open Browser    ${URL}    ${BROWSER}    #options=add_argument("--headless")
    #Maximize Browser Window

Fechar Navegador
    Close Browser

Realiza Login de Acesso
    [Arguments]    ${mailAdminValid}    ${passwordAdminValid}
    Abrir o navegador
    Input Text    ${input_email}    ${mailAdminValid}
    Input Text    ${input_senha}    ${passwordAdminValid}
    Click Button    ${btn-entrar}
    Capture Page Screenshot    filename=20518LoginSucesso.png
    #Fechar Navegador

Cadastrar Novo Centro de Custo
    ${dadosEmpresa}=    Fake Company
    Wait Until Element Is Visible    locator=${btn_cadastros}    timeout=7s
    Click Element    ${btn_cadastros}
    Click Element    ${btn_centro}
    Wait Until Element Is Visible    ${btn_novo_cadastro}
    Click Element    ${btn_novo_cadastro}
    Input Text    ${input_costcentername}    text=${dadosEmpresa["diretoria"]}
    Wait Until Element Is Visible    ${id_diretoria}
    Sleep    time_=2
    Select From List By Label   ${id_diretoria}    ${diretoria}
    Click Element    ${btn_save}
    Sleep    time_=1
    Capture Page Screenshot    filename=20624CadastrarCentroCusto.png
    Fechar Navegador

Editar Centro de Custo
    Wait Until Element Is Visible    locator=${btn_cadastros}    timeout=5s
    Click Element    ${btn_cadastros}
    Click Element    ${btn_centro}
    Wait Until Element Is Visible    ${edit_1}
    ${vi_costCentername}=    Get Value    ${li_1}
    Click Element    ${edit_1}
    Wait Until Element Is Visible    locator=//*[@id="costCentername"]
    ${vf_costCentername}=    Set Variable    ${vi_costCentername}${atualizado2}
    Input Text    //*[@id="costCentername"]    ${vf_costCentername}
    Click Element    ${btn_save}
    Element Should Be Visible    locator=${btn_novo_cadastro}
    Capture Page Screenshot    filename=20626EditarCentroCusto.png
    Fechar Navegador

Listar Centro de Custo
    Wait Until Element Is Visible    locator=${btn_cadastros}    timeout=5s
    Click Element    ${btn_cadastros}
    Click Element    ${btn_centro}
    Wait Until Element Is Visible    ${edit_1}
    Capture Page Screenshot    filename=20627ListarCentroCusto.png
    Fechar Navegador

Criar Departamento
    ${dadosDept}=    Fake Department
    Wait Until Element Is Visible    ${btn_cadastros}    timeout=7s
    Click Element    ${btn_cadastros}
    Click Element    ${btn_departamento}
    Wait Until Element Is Visible    ${btn_novo_cadastro}    timeout=3s
    Click Element    ${btn_novo_cadastro}
    Input Text    ${input_department}    text=${dadosDept}
    Wait Until Element Is Visible    ${id_costcenter}
    Select From List By Label   ${id_costcenter}    teste
    Click Element    ${btn_save}
    Capture Page Screenshot    filename=20629CriarDepartamento.png
    Fechar Navegador

Editar Departamento
    Wait Until Element Is Visible    locator=${btn_cadastros}    timeout=5s
    Click Element    ${btn_cadastros}
    Click Element    ${btn_departamento}
    Wait Until Element Is Visible    ${edit_2}
    ${vi_department}=    Get Value    ${li_1}
    Click Element    ${edit_2}
    Wait Until Element Is Visible    ${id_department}
    ${vf_department}=    Set Variable    ${vi_department}${atualizado2}
    Input Text    ${id_department}    ${vf_department}
    Click Element    ${btn_save}
    Element Should Be Visible    locator=${btn_novo_cadastro}
    Capture Page Screenshot    filename=20630EditarDepartamento.png
    Fechar Navegador

#Inativar Departamento
    # [Arguments]    ${dept}
    # Capture Page Screenshot    filename=20631InativarDepartamento.png
    # Fechar Navegador

Listar Departamento
    Wait Until Element Is Visible    locator=${btn_cadastros}    timeout=5s
    Click Element    ${btn_cadastros}
    Click Element    ${btn_departamento}
    Wait Until Element Is Visible    ${edit_1}
    Capture Page Screenshot    filename=20632ListarDepartamento.png
    Fechar Navegador

#Pesquisar Departamento
    # [Arguments]    ${dept}
    # Capture Page Screenshot    filename=20633PesquisarDepartamento.png
    # Fechar Navegador
