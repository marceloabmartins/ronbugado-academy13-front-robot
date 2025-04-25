from faker import Faker
import re

def fake_company():
    faker = Faker("pt_BR")
    company = {
        "empresa": faker.company(),
        "cnpj": faker.cnpj(),
        "telefone": faker.msisdn(),
        "email": faker.company_email(),
        "cep": faker.postcode(),
        "cidade": faker.city(),
        "estado": faker.state_abbr(),
        "bairro": faker.street_name(),
        "rua": faker.street_name(),
        "numero": faker.building_number(),
        "pais": faker.country(),
        "descricao": faker.job(),
        "responsavel": faker.first_name(), 
        "diretoria": faker.first_name(),
    }
    return company

def fake_person():
    faker = Faker("pt_BR")
    person = {
        "nome": re.sub(r'^((Sr\.|Sra\.|Dr\.|Dra\.|Prof\.|Profa\.)\s*)+', '', faker.name()),
        "nascimento": ajusta_nasc(faker.date_of_birth()),
        "email": faker.email(),
        "telefone": faker.msisdn(),
        "cargo": faker.job(),
        "rg": str(faker.rg())[:7],
        "cpf": limpar_cpf(faker.cpf()),
        "cep": faker.postcode(),
        "pais": 'Brasil',
        "cidade": faker.city(),
        "estado": faker.state_abbr(),
        "bairro": faker.street_name(),
        "rua": faker.street_name(),
        "numero": faker.building_number(),
        "complemento": '',
        "senha": faker.password(length=11, special_chars=False, digits=True, upper_case=True, lower_case=True),
    }
    return person

def fake_board():
    faker = Faker("pt_BR")
    nome1 = faker.company().split()[0]
    nome2 = faker.company().split()[0]
    return f"{nome1} {nome2}"

def fake_department():
    faker = Faker("pt_BR")
    nome1 = faker.company().split()[0]
    nome2 = faker.company().split()[0]
    return f"{nome1} {nome2}"

def fake_client():
    faker = Faker("pt_BR")
    client = {
        "nome": re.sub(r'^((Sr\.|Sra\.|Dr\.|Dra\.|Prof\.|Profa\.)\s*)+', '', faker.name()),
        "nascimento": ajusta_nasc(faker.date_of_birth()),
        "email": faker.email(),
        "telefone": faker.msisdn(),
        "cargo": faker.job(),
        "rg": str(faker.rg())[:7],
        "cpf": limpar_cpf(faker.cpf()),
        "cep": faker.postcode(),
        "pais": 'Brasil',
        "cidade": faker.city(),
        "estado": faker.state_abbr(),
        "bairro": faker.street_name(),
        "rua": faker.street_name(),
        "numero": faker.building_number(),
        "complemento": ''
    }
    return client

def limpar_nome(nome):
    # Remove apenas o ponto
    nome_limpo = nome.replace('.', '')
    return nome_limpo

def ajusta_nasc(data):
    data_formatada = data.strftime("%d%m%Y")
    return data_formatada

def limpar_cpf(cpf):
    cpf_limpo = cpf.replace('.', '').replace('-', '')
    return cpf_limpo

#print(get_fake_person())
#print(get_fake_company())