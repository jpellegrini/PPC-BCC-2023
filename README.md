# PPC-BCC

Para gerar o arquivo PDF a partir dos arquivos-fonte `.tex`, você deve baixar todos os arquivos e executar o comando para compilação do LaTeX.

Como o projeto utiliza fontes externas, recomenda-se utilizar o LuaLatex.

Há um arquivo `makefile` disponível, bastando executar o seguinte comando:

```
make ppc
```

# DOCUMENTO COMPLEMENTAR 1: LISTA DE DISCIPLINAS DE OPÇÃO LIMITADA

A lista de disciplinas OL está em arquivo separado.

Para gerar o PDF, execute o comando:
```
make ol
```

# DOCUMENTO COMPLEMENTAR 2: REGRAS DE TRANSIÇÃO

As regras de transição encontram-se em arquivo separado do PPC.

Para gerar o PDF, basta executar o comando:

```
make transicao
```

