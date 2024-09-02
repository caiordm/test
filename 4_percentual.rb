faturamentos = {
  "SP": 67836.43, 
	"RJ": 36678.66, 
  "MG": 29229.88, 
  "ES": 27165.48,
	"Outros": 19849.53 
}

faturamento_total = faturamentos.values.sum

percentuais = faturamentos.map do |estado, valor|
  percentual = (valor / faturamento_total) * 100
  "#{estado}: #{percentual.round(2)}%"
end

puts percentuais
