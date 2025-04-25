*** Variables ***
${BROWSER}    chrome
#${BROWSER}    edge

#${baseUrl}    https://develop.qacoders-academy.com.br/api/
${URL}    https://automacao.qacoders-academy.com.br/login
#${URL}    https://ron-bugado-front.qacoders.dev.br/login


${mailAdminValid}    sysadmin@qacoders.com
${mailAdminInvalid}    sysadmin@qacoders.com.br
${passwordAdminValid}    1234@Test
${passwordAdminInvalid}    1234@Teste

${input_email}    //input[@id="email"]
${input_senha}    //*[@id="password"]
${btn-entrar}    //button[text()='Entrar']
${logout_button}    button[class*=css-1nvbq2d]
${msg_error}    div[class*=MuiAlert-standardError]

${btn_cadastros}    //span[contains(.,'Cadastros')]
${btn_empresa}    //span[contains(.,'Empresa')]
${btn_cliente}    //span[contains(.,'Cliente')]
${btn_usuario}    //span[contains(.,'Usuários')]
${btn_diretoria}    //span[contains(.,'Diretoria')]
${btn_centro}    //span[contains(.,'Centro de Custo')]
${btn_departamento}    //span[contains(.,'Departamento')]
${btn_novo_cadastro}    //button[@id='Novo Cadastro']
${btn_empresa_editar}    //button[@id='edit']
${btn_save}    //button[@id='save']
${btn_next}    //*[@id="firstIndexButton"]


${input_fullName}    //input[@id="fullName"]
${input_mail}    //input[@id="mail"]
${input_phone}    //input[@id="phone"]
${input_birthdate}    //input[@id="birthDate"]
${input_currentrole}    //input[@id="currentRole"]
${input_cpf1}    (//input[@id="cpf"])[1]
${input_cpf2}    (//input[@id="cpf"])[2]
${input_profile}    //input[@id='accessProfile']
${input_cpf}    //input[@id='cpf']
${input_password}    //input[@id='password']
${input_confirmPassword}    //input[@id='confirmPassword']
${edit_1}    //*[@id="edit"][1]
${edit_2}    (//*[@id="edit"])[2]
${edit_3}    (//*[@id="edit"])[1]
${edit_29}    (//*[@id="edit"])[29]
${dados_empresa}    //h4[text()="Dados da Empresa"]
${boardname}    //input[@id='boardName']
${li_1}    (//div/ul/li[1]/p)

${input_companyName}    //*[@id="companyName"]
${input_fantasyName}    //*[@id="fantasyName"]
${input_companyMail}    //*[@id="companyMail"]
${input_matriz}    //*[@id="matriz"]
${input_telephone}    //*[@id="telephone"]
${input_serviceDescription}    //*[@id="serviceDescription"]
${id_fullName}    //*[@id="fullName"]
${input_zipCode}    //*[@id="zipCode"]
${input_country}    //*[@id="country"]
${input_city}    //*[@id="city"]
${input_state}    //*[@id="state"]
${input_district}    //*[@id="district"]
${input_street}    //*[@id="street"]
${input_number}    //*[@id="number"]
${input_complement}    //*[@id="complement"]
${id_boardName}    //*[@id="boardName"]
${input_costcentername}    //input[@id='costCentername']
${id_diretoria}    id=Diretoria
${id_costcenter}    id=Centro de Custo
${input_department}    //input[@id='departmentName']
${id_department}    //*[@id="departmentName"]


${diretoria}    Contasa
${department}    teste
${atualizado}    - Atualizado
${atualizado2}    & Atualizado
${empr}    Joalheria Barbosa
${h5Empresa}    
${clie}    Luana Soarez
${usua}    Aaaa Bbbb
${dire}    bla
${cent}    Master&et
${dept}    bugadoBarbosa Campos e Filhos
${country}    Brasil
${cargo}    ADMIN
${vazio}    Teste