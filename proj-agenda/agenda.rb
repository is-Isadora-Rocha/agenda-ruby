# Add, Edit, Remover Contato
# nome e telefone
# poderemos ver todos os contatos ou somente um


# array de hashes
# variavel de instancia
@agenda = [
    {nome: "Jade", telefone: "999856478"},
    {nome: "Pedro", telefone: "9986545251"}
]

def todos_contatos
    #PEGA CADA contato que está dentro de @AGENDA, e imprima
    @agenda.each do |contato|
        puts "#{contato[:nome]} - #{contato[:telefone]}"
        puts "\n"
    end
end

loop do

puts "1. Contatos\n2. Adicionar Contato\n3. Ver Contato\n4. Editar Contato\n5. Remover Contato\n0. Sair"
    codigo = gets.chomp.to_i

    case
    when codigo == 0
        puts "Até mais!"
        break
    when codigo == 1
        todos_contatos
    end
end
