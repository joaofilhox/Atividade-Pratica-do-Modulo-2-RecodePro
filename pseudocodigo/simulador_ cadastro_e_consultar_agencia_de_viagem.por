programa {
  funcao inicio() {
    inteiro i
    inteiro k
    cadeia listaNomes[100]
    inteiro listaIdades[100]
    inteiro listaTelefones[100]
    cadeia nome
    inteiro idade
    inteiro telefone
    cadeia listaLocal[100]
    inteiro listaDuracao[100]
    inteiro listaPreco[100]
    cadeia local
    inteiro duracao
    inteiro preco
    inteiro opcao

    para (i = 0; i < 100; i++) {
      listaNomes[i] = ""
      listaIdades[i] = 0
      listaTelefones[i] = 0
    }

    para (k = 0; k < 100; k++) {
      listaLocal[k] = ""
      listaDuracao[k] = 0
      listaPreco[k] = 0
    }

    faca {
      escreva(
        "========= MENU PRINCIPAL =========\n" +
        "1 - Cadastrar Cliente\n" +
        "2 - Cadastrar Destino\n" +
        "3 - Consultar Clientes\n" +
        "4 - Consultar Destinos\n" +
        "0 - Sair\n" +
        "===================================\n" +
        "Escolha a opção desejada:"
      )
      leia(opcao)

      escolha (opcao) {
        caso 1: 
          escreva("Digite o nome do cliente:")
          leia(nome)
          escreva("Digite a idade do cliente:")
          leia(idade)
          escreva("Digite o telefone do cliente:")
          leia(telefone)
          i = 0
          enquanto (i < 100) {
            se (listaNomes[i] == "") {
              listaNomes[i] = nome
              listaIdades[i] = idade
              listaTelefones[i] = telefone
              escreva("Cliente adicionado com sucesso.\n")
              pare
            }
            i = i + 1
          }
          pare
        caso 2: 
          escreva("Digite o local do destino:")
          leia(local)
          escreva("Digite a duração do destino (em dias):")
          leia(duracao)
          escreva("Digite o preço do destino:")
          leia(preco)
          k = 0
          enquanto (k < 100) {
            se (listaLocal[k] == "") {
              listaLocal[k] = local
              listaDuracao[k] = duracao
              listaPreco[k] = preco
              escreva("Destino cadastrado com sucesso.\n")
              pare
            }
            k = k + 1
          }
          pare
        caso 3: 
          escreva ("\n\n=== CLIENTES CADASTRADOS ===\n\n")
          para (i = 0; i < 100; i++) {
            se (listaNomes[i] != "") {
              escreva("Nome: " + listaNomes[i] + ", Idade: " + listaIdades[i] + ", Telefone: " + listaTelefones[i] + "\n")
            }
          }
          escreva("\n\n=== FIM DA LISTA ===\n\n")
          pare
        caso 4: 
           escreva ("\n\n=== DESTINOS CADASTRADOS ===\n\n")
          para (k = 0; k < 100; k++) {
            se (listaLocal[k] != "") {
              escreva("Local: " + listaLocal[k] + ", Duração: " + listaDuracao[k] + ", Preço: " + listaPreco[k] + "\n")
            }
          }
          escreva("\n\n=== FIM DA DESTINOS ===\n\n")
          pare
        caso contrario: 
          escreva ("Opção Inválida !")
      }
    } enquanto (opcao != 0)

    escreva("Tchau")
  } 
}

