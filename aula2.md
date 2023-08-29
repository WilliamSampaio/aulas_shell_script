# Variáveis

Variáveis são valores armazenados na memória associados a identificadores que podem ser utilizados em tempo de execução. Para declarar uma variável em Shell Script basta escrever o identificador seguido do operador "=" seguido do valor.
Ex:

```bash
nome="William"
```

**Obs.:** Não pode haver espaços entre o "=" pois ocasionará erros.

para utilizar essa variável utiliza-se o "$" seguido do identificador.
Ex:

```bash
echo $nome
```

## Regras para nomear variáveis

É permitido screaming case, camel case, pascal case, snake case. Kebab case NÃO é permitido.
Ex:

```bash
SCREAMINGCASE="screaming case permitido"
camelCase="camel case permitido"
PascalCase="pascal case permitido"
snake_case="snake case permitido"
```

**Obs.:** A combinação de todas essas acima também é permitida.

Kebab case não é permitida porque utiliza o caractere "-" (hífen) para separar os nomes compostos.

Não há mistério em nomear variáveis, contudo use e abuse do bom senso. Lembre-se que você programa sempre para outros (incluindo você no futuro), então procure utilizar identificadores que faça sentido para o próximo que terá que entender o que você escreveu (incluindo você no futuro).

## Variável de Ambiente Global

Podem ser acessadas por todos os subprocessos do shell. O próprio sistema operacional utiliza varias delas.
Ex:

```bash
echo $USER # Armazena o usuário logado
echo $HOME # Armazena o diretório da Home do usuário
echo $PATH # Armazena todos os path on fica os executáveis
```

Para listar as variáveis globias use o comando "env" ou "printenv".

**Obs.:** Ao declarar uma variável tenha o cuidado de não utilizar o mesmo nome utilizado pelas variáveis do sistema.

## O Comando export

Quando declaramos uma variável ela poderá ser acessada somente pela instância do bash, os processos filhos do bash não tem acesso a variável. Esse comportamento muda ao utilizar o comando "export".

Execute os comandos abaixo linha a linha e observe o comportamento.

```bash
# declare uma variável qualquer. Exemplo:
nome="William"

# digite o comando abaixo, e observe que sua variável não foi retornada
env | grep nome

# utilizando o comando "export" defina sua variável como global
export nome

# digitando o comando novamente, observe que sua variável foi retornada
env | grep nome

# inicie uma nova instancia do bash
bash

# imprima sua variável
echo "$nome"

# sair da instancia
exit
```

Outra forma de utilizar o export é:

```bash
export nome="William"
```

Para desalocar uma variável utilize o comando "unset":

```bash
unset nome
```
