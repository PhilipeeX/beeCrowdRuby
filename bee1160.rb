=begin
            Crescimento Populacional

    Mariazinha quer resolver um problema interessante. Dadas as informações de população e a taxa
    de crescimento de duas cidades quaisquer (A e B), ela gostaria de saber quantos anos levará para 
    que a cidade menor (sempre é a cidade A) ultrapasse a cidade B em população. Claro que ela quer 
    saber apenas para as cidades cuja taxa de crescimento da cidade A é maior do que a taxa de crescimento
    da cidade B, portanto, previamente já separou para você apenas os casos de teste que tem a taxa
    de crescimento maior para a cidade A. Sua tarefa é construir um programa que apresente o tempo 
    em anos para cada caso de teste.

    Porém, em alguns casos o tempo pode ser muito grande, e Mariazinha não se interessa em saber 
    exatamente o tempo para estes casos. Basta que você informe, nesta situação, a mensagem "Mais de 1 seculo.".

    Entrada
    A primeira linha da entrada contém um único inteiro T, indicando o número de casos de teste (1 ≤ T ≤ 3000). 
    Cada caso de teste contém 4 números: dois inteiros PA e PB (100 ≤ PA < 1000000, PA < PB ≤ 1000000) indicando 
    respectivamente a população de A e B, e dois valores G1 e G2 (0.1 ≤ G1 ≤ 10.0, 0.0 ≤ G2 ≤ 10.0, G2 < G1) com 
    um digito após o ponto decimal cada, indicando respectivamente o crescimento populacional de A e B (em percentual).

    Atenção: A população é sempre um valor inteiro, portanto, um crescimento de 2.5 % sobre uma população de 
    100 pessoas resultará em 102 pessoas, e não 102.5 pessoas, enquanto um crescimento de 2.5% sobre uma população 
    de 1000 pessoas resultará em 1025 pessoas. Além disso, não utilize variáveis de precisão simples para as taxas 
    de crescimento.

    Saída
    Imprima, para cada caso de teste, quantos anos levará para que a cidade A ultrapasse a cidade B em número de 
    habitantes. Obs.: se o tempo for mais do que 100 anos o programa deve apresentar a mensagem: Mais de 1 seculo. 
    Neste caso, acredito que seja melhor interromper o programa imediatamente após passar de 100 anos, caso 
    contrário você poderá receber como resposta da submissão deste problema "Time Limit Exceeded".
=end

casos_de_teste = gets.chomp.to_i
i = 0

while i < casos_de_teste do
    dados = gets.chomp.split(' ')
    pA = dados[0].to_i
    pB = dados[1].to_i
    g1 = dados[2].to_f
    g2 = dados[3].to_f

     anos = 1
     crescimento_em_A = pA * (g1/100)
     crescimento_em_B = pB * (g2/100)
     while pA < pB do
        puts "crescimento na cidade A é de: #{crescimento_em_A} % ao ano"
        pA = pA + crescimento_em_A
        puts "pA recebeu #{pA + crescimento_em_A}"
        puts "crescimento na cidade B é de: #{crescimento_em_B} % ao ano"
        pB += crescimento_em_B
        puts "pB recebeu #{pB + crescimento_em_B}"
        anos += 1
        puts "se passaram #{anos} anos"
     end
     puts "demorou #{anos} anos"
     i += 1
end