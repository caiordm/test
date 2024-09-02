import json
import random
import datetime

def gerar_faturamento_mensal(ano, mes, num_dias=30):
  dados = []
  for dia in range(1, num_dias + 1):
    data = datetime.date(ano, mes, dia)
    faturamento_total = random.uniform(500, 5000)
    dados.append({"data": data.strftime("%Y-%m-%d"), "faturamento_total": faturamento_total})
  return json.dumps(dados, indent=2)

# Gerando os dados para novembro de 2023 (30 dias)
json_faturamento = gerar_faturamento_mensal(2023, 11)

# Salvando em um arquivo
with open('faturamento_30_dias.json', 'w') as f:
  f.write(json_faturamento)

print("JSON gerado com sucesso! Verifique o arquivo 'faturamento_30_dias.json'")