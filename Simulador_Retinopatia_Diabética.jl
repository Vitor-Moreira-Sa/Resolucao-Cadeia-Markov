#matruz referente ao documento
P = [0.80 0.12 0.08 0.0 0.0;
    0.0 0.44 0.30 0.26 0.0;
    0.0 0.0 0.46 0.50 0.04;
    0.0 0.0 0.0 0.88 0.12;
    0.0 0.0 0.0 0.0 1.0]

println("Matriz P:")
println(P)

#estagio inicial da Retinopatia Diabética
x0 = [1.0, 0.0, 0.0, 0.0, 0.0]

#mudanas de estagio da doença
mudancas = 5

println("\nSimulação da Cadeia de Markov:")
println("Estado inicial a₀ = ", x0)
print("\n")

estado = x0

#calculo da probabilidade de cada mudança
for i in 1:mudancas
    global estado = P' * estado
    println("a[$i] = ", round.(estado, digits=4))
end

# Probabilidade de cegueira no estado 5
prob_cegueira = estado[5]
println("\nApós $mudancas passos, aproximadamente ", round(prob_cegueira * 100, digits=2), "% da população está no estado de cegueira.")