### Script para importar os programas privados e que pagam da Hackerone

A utilização do script é simples:

- Gere seu token na pagina da Hackerone
- Baixe o script ```import.sh```
- Neste script mude as variáveis, conforme abaixo:

Por exemplo, meu usuário é grrg então, coloque:

```USUARIO_HACKERONE="grrg"```

E aqui você colocará seu token que foi previamente gerado na página da Hackerone

```TOKEN_HACKERONE="xxxxxxx/xxxxxxxxxxxxxxxxxx+xxxxxxxxxxx+xxxx="```

- Dê permissão de execução ao arquivo import.sh
 
```chmod +x import.sh```

- Execute o arquivo
```./import.sh```

**IMPORTANTE:** Ignore os erros gerados, o bbrf está com alguns bugs atualmente, o mantenedor está ciente.
