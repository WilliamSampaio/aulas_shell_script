# 1. Shebang

A shebang é usada para determinar qual interpretador deve ser usado para executar o script. Deve
ser utilizada sempre na primeira linha do script, e começar com "#!" seguido do path do executável.
Ex:

* #!/bin/bash (para shell script)
* #!/usr/bin/perl (para perl script)
* #!/usr/bin/python3 (para python script)

# 2. Path absoluto Vs. Path dinâmico

Ao utilizar o path absoluto do interpretador bash na shebang do script poderá ocorrer error ao
tentar executar em outras distribuições GNU/Linux devido as configurações que variam de sistema
para sistema.

Para resolver esse problema é utilizado o comando "env". O comando "env" ao ser chamado procura e
executa o interpretador definido.
Ex:

* #!/usr/bin/env bash (Procura e executa o script com o bash independentemente do seu path)
* #!/usr/bin/env python (...)

# 3. Criar primeiro script

## Passo 0

Primeiramente verifique se o bash existe no seu Linux, utilizando o comando "which". Basta executar: which bash. O comando deve retornar o path do bash caso ele exista.

```bash
which bash
```

## Passo 1

Utilize o editar de texto de sua preferência, por exemplo vim, nano, gedit, vscode. Utilizarei o vim.

```bash
vim helloworld
```

**Obs.:** Não é obrigatório informar a extensão do arquivo "*.sh*" ou ".bash"

## Passo 2

Inicie o script com a shebang e em seguida escreva o código abaixo:

```bash
#!/usr/bin/env bash

echo -e "Hello,\n$USER!"
```

## Passo 3

Após escrever e salvar o script é necessário dar permissão de execução para ele, para isso utilize o comando "chmod +x" seguido do path ou nome do seu script.

```bash
chmod +x helloworld
```

Para verificar se agora seu script pode ser executado utilize o comando "ls -l"

## Passo 4

Pronto! basta executar seu script!

### Caso o script esteja no mesmo diretório que seu terminal

```bash
./helloworld
```

### Caso esteja em outra pasta (opção 1)

```bash
cd caminho/para/o/script
./helloworld
```

### Caso esteja em outra pasta (opção 2)

```bash
caminho/para/o/script/helloworld
```

O resultado da execução deve ser algo como:

```bash
Hello,
William
```

**Obs.:** No meu caso foi retornado "William" porque é meu nome de usuário, no seu caso será o seu
nome de usuário.

## Passo 5

Vamos analisar linha a linha o nosso script helloworld.

A primeira linha, como explicado acima é a shebang, que determina qual interpretador será usado para executar nosso script.

A segunda linha com o comando echo é a responsável por imprimir na tela a nossa string. Vamos entender melhor o que acontece aqui.

O comando "echo" imprime na saída padrão (STDOUT) uma string qualquer. Passamos como opção o "-e" que habilita os caracteres de escape. Depois informamos uma string entre aspas duplas. Dentro da string observamos um "\n" e um "\$USER". O "\n" trata-se de um caractere de escape que o interpretador entende como uma quebra de linha. Já o "\$USER" é uma variável de ambiente que contem o nome do usuário que está logado no Linux.
