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

## Considerações

Não há mistério em nomear variáveis, contudo use e abuse do bom senso. Lembre-se que você programa sempre para outros (incluindo você no futuro), então procure utilizar identificadores que faça sentido para o próximo que terá que entender o que você escreveu (incluindo você no futuro).
