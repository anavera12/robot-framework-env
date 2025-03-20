# 📌 Repositório: Login Seguro com Robot Framework

Este repositório demonstra como utilizar o env.resource para armazenar credenciais sensíveis, evitando exposição de dados no controle de versão (Git). Além disso, mostramos como reutilizar uma única lógica de login, substituindo credenciais dinamicamente com Set Global Variable.

## 🚀 Objetivo
- ✔️ Manter credenciais seguras e fora do código-fonte.
- ✔️ Usar o env.resource para armazenar variáveis sensíveis.
- ✔️ Evitar o vazamento de dados sensíveis no repositório.
- ✔️ Demonstrar como reutilizar a lógica de login com variáveis globais.

## 📂 Estrutura do Repositório
```
📦 ROBOT-FRAMEWORK-ENV
 ┣ 📂 Settings/
 ┃ ┗ 📂 auth
 ┃ ┣  📜 env.resource     # Arquivo contendo credenciais (IGNORADO no Git)
 ┃ ┗ 📂 login
 ┃ ┣  📜 login.resource   # Implementação do login usando credenciais do env.robot       
 ┣ 📂 Utilizando_o_env
 ┃ ┣ 📜 executar.robot    # Teste chamando o login
 ┃ ┗ 📜 keyword.resource    
 ┣ 📜 .gitignore          # Impede o commit do env.robot
 ┗ 📜 README.md           # Você está aqui! 😃
```

# 🔑 Configurando o env.robot

O env.resource armazena credenciais e outras informações sensíveis, garantindo que não sejam expostas no repositório.
📌 Exemplo do env.resource (NÃO COMMITAR NO GIT!)

```
*** Variables ***
${USER_STANDART}    usuario_padrao
${PASSWORD_STANDART}    senha_segura
${USER_PROBLEM}    usuario_secundario
${PASSWORD_PROBLEM}    senha_secundaria
```
📌 Adicione ao .gitignore para evitar vazamento:

```
# Evita que credenciais sejam commitadas
env.resource
```

## 🔄 Reutilizando o Login com Set Global Variable

Ao invés de duplicar a lógica de login, alteramos as credenciais dinamicamente.

📌 Exemplo de reutilização do login com Set Global Variable

```
*** Keywords ***
Login problem_user
    Set Global Variable    ${user_standart}    ${user_problem}
    Set Global Variable    ${password_standart}    ${password_problem}
    Efetuar login
```
🔹 Assim, o mesmo código de login funciona para múltiplos usuários sem precisar duplicar código!

## 🔥 Conclusão
- ✅ Protegemos credenciais usando env.resource (que não é commitado).
- ✅ Reutilizamos a lógica de login, alterando dinamicamente as variáveis com Set Global Variable.
- ✅ Evitamos exposição de dados sensíveis, garantindo segurança no repositório.
