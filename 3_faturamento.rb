require 'json'

file = File.read('./faturamento_30_dias.json')
vetor = JSON.parse(file)

media = 0
faturamentos = []

vetor.each do |dia|
  if dia["faturamento_total"] != 0
    media+=dia["faturamento_total"]
    faturamentos << dia["faturamento_total"]
  end
end

media = media / faturamentos.length
maior = faturamentos.max
menor = faturamentos.min

dias = 0

faturamentos.each do |valor|
  if valor > media
    dias+=1
  end
end

puts "Faturamento diario"
puts "Média: #{media}"
puts "Maior: #{maior}"
puts "Menor: #{menor}"
puts "O número de dias em que foi maior que a média: #{dias}"