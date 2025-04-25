# Projeto de Testes Automatizados com Robot Framework e Selenium

Este projeto realiza testes automatizados utilizando **Robot Framework** e **SeleniumLibrary**, com execução em modo headless (sem interface gráfica), ideal para rodar em pipelines CI/CD como o **GitHub Actions**.

---

## 🚀 Tecnologias utilizadas

- [Robot Framework](https://robotframework.org/)
- [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/)
- [Selenium](https://www.selenium.dev/)
- [Webdriver Manager](https://pypi.org/project/webdriver-manager/)

---

## 🧪 Como executar localmente

### 1. Clone o repositório
```bash
git clone https://github.com/marceloabmartins/ronbugado-academy13-front-robot.git
cd ronbugado-academy13-front-robot
```

### 2. Crie um ambiente virtual e ative

```python
python -m venv .venv
.venv\Scripts\activate  #Windows
source .venv/bin/activate #linux
```

### 3. Instale as dependências
```bash
pip install -r requirements.txt
```

### 4. Execute os testes
```bash
robot --outputdir results tests/
```

## 👥 Squad

**Ron Bugado**

### 💡 Tech Lead  
- Vanderson

### 👩‍💻 Participantes  
- Andre Minato  
- Cida Nunes  
- Cristielem Vilaça  
- Karen Krejcik  
- Marcelo Martins  
- Matheus Silva
```