*** Variables ***

${user_standart}    standard_user
${password_standart}    secret_sauce

${user_problem}    problem_user
${password_problem}    secret_sauce

*** Comments ***
Aqui são adicionadas as variáveis sensíveis
que não devem ser postas nos commits do Gitlab ou Github.

Sempre que for clonado um repositório a primeira vez, precisará adicionar o arquivo de env
mas depois não será mais necessário.