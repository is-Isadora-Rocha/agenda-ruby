# Add, Edit, Remover Contato
# nome e telefone
# poderemos ver todos os contatos ou somente um

# array de hashes
# variavel de instancia
@agenda = [
  { nome: 'Jade', telefone: '999856478' },
  { nome: 'Pedro', telefone: '9986545251' }
]

def todos_contatos
  # PEGA CADA contato que está dentro de @AGENDA, e imprima
  @agenda.each do |contato|
    puts "#{contato[:nome]} - #{contato[:telefone]}"
  end
  puts '----------------------------'
end

def adicionar_contato
  print 'Nome: '
  nome = gets.chomp
  print 'Telefone: '
  telefone = gets.chomp

  # atribuir a resposta do usuário para dentro de um array
  @agenda << { nome: nome, telefone: telefone }
end

def ver_contato
  print 'Qual contato você deseja?'
  nome = gets.chomp

  @agenda.each do |contato|
    # contato está incluido na lista?
    if contato[:nome].downcase.include?(nome.downcase)
      puts "#{contato[:nome]} - #{contato[:telefone]}"
      break
    end
  end
  puts '----------------------------'
end

loop do
  puts "1. Contatos\n2. Adicionar Contato\n3. Ver Contato\n4. Editar Contato\n5. Remover Contato\n0. Sair"
  codigo = gets.chomp.to_i

  if codigo == 0
    puts 'Até mais!'
    break
  elsif codigo == 1
    todos_contatos
  elsif codigo == 2
    adicionar_contato
  elsif codigo == 3
    ver_contato
  end
end
