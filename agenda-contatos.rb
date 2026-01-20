contatos = {}

def mostrar_menu
  puts "\n=== MENU ==="
  puts "1 - Adicionar contato"
  puts "2 - Listar contatos"
  puts "3 - Buscar contato"
  puts "4 - Sair"
  print "Escolha uma opção: "
end

loop do
  mostrar_menu
  opcao = gets&.chomp

  case opcao
  when "1"
    print "Digite o nome: "
    nome = gets&.chomp.to_s.strip

    print "Digite o telefone: "
    telefone = gets&.chomp.to_s.strip

    if nome.empty? || telefone.empty?
      puts "[AVISO] Nome e telefone não podem ficar vazios."
    else
      contatos[nome] = telefone
      puts "Contato '#{nome}' adicionado/atualizado!"
    end

  when "2"
    if contatos.empty?
      puts "[AVISO] Nenhum contato cadastrado."
    else
      puts "\nLista de contatos:"
      contatos.each do |nome, telefone|
        puts "- #{nome}: #{telefone}"
      end
    end

  when "3"
    print "Digite o nome para buscar: "
    nome_busca = gets&.chomp.to_s.strip

    if contatos.key?(nome_busca)
      puts "Encontrado: #{nome_busca} -> #{contatos[nome_busca]}"
    else
      puts "[AVISO] Contato não encontrado."
    end

  when "4"
    puts "[AVISO] Saindo... até mais!"
    break

  else
    puts "[AVISO] Opção inválida. Tente novamente."
  end
end
