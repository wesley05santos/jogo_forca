new_game = "S"
while new_game == "S"
    puts "=====BEM VINDO AO JOGO DA FORCA====="
    palavras = %w{cavalo elefante rinoceronte cachorro hiena tigre jacare papagaio pinguim hipopotamo formiga besouro joaninha}

    palavra_sorteada = palavras.sample    
    palavra_parcial = []
    letras_digitadas = []

    palavra_sorteada.size.times do
        palavra_parcial << " _ "
    end

    puts palavra_parcial.join
    
    fim = false
    while fim == false        
        puts "Você já escolheu as seguintes letras #{letras_digitadas}!"        
        puts "Escolha uma letra: "
        sua_letra = gets.chomp
        letras_digitadas << sua_letra.upcase
        aux = 0
        palavra_sorteada.each_char do |letra|
            if palavra_parcial[aux] == " _ "
                if letra == sua_letra
                    palavra_parcial[aux] = sua_letra                                  
                end 
            end            
            aux += 1            
        end            
        if palavra_parcial.join.count(" _ ") > 0
            fim = false
            puts palavra_parcial.join.upcase
        else
            fim = true
        end        
    end

    puts "Parabéns a palavra era #{palavra_parcial.join.upcase}!!!"
    puts "Deseja jogar novamente: (S/N)"
    new_game = gets.chomp.upcase
end

puts "Obrigado por jogar!!!"