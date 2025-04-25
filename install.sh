python3 -m venv .venv
source .venv/bin/activate
pip install robotframework
pip install robotframework-requests
pip install robotframework-seleniumlibrary
pip install robotframework-screencaplibrary
pip install faker
pip install webdriver-manager

touch .gitignore
printf ".venv \n" >> .gitignore
printf "log \n" >> .gitignore
printf "driver \n" >> .gitignore

mkdir log
mkdir resources
mkdir utils
mkdir driver
mkdir tests
mkdir .github/workflows
