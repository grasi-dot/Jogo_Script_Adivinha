
def dar_boas_vindas
    puts "Bem vindo ao jogo da advinhacao"
    puts "Qual o seu nome? "
    nome = gets
    puts "\n\n\n\n\n\n"
    puts "Comecaremos o jogo para voce, #{nome}"
end

def sorteio
    puts "\n\n"
    puts "Escolhendo um numero secreto de 0 a 200"
    sorteado = 175
    puts "\n\n"
    puts "Escolhido ... que tal adivinhar hoje o numero secreto"
    sorteado
end

def pede_um_numero(chutes, tentativa, limite_chute)
    puts "\n\n\n\n"
    puts "Tentativas #{tentativa.to_s} de #{limite_chute.to_s}" 
    puts "Chutes até agora #{chutes.to_s}"
    puts "Entre com o numero: "
    chute = gets
    puts "\n\n"
    puts "Sera que voce acertou?... Voce chutou #{chute}"
    chute.to_i
end

def verifica_se_acertou(numero_secreto, chute)
    acertou = numero_secreto == chute
    if acertou
        puts "Acertou"
        return true
    end
    maior = numero_secreto > chute.to_i
    if maior 
        puts "O numero secreto é maior"
    else
        puts "O numero secreto é menor"
    end
    false
end

dar_boas_vindas
numero_secreto = sorteio

ultimo_chute = -1
penultimo_chute = -1

limite_chute = 5
chutes = []
total_de_chutes = 0

for tentativa in 1..limite_chute

    chute = pede_um_numero(chutes, tentativa, limite_chute)

    chutes << chute


    acertou = numero_secreto == chute.to_i
    
    break if verifica_se_acertou(numero_secreto, chute)

    penultimo_chute = ultimo_chute
    ultimo_chute = chute
end