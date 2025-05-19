/*
5) Cálculo de Desconto de Produto
Objetivo: Criar um programa em Dart que calcule o preço final de um produto após a aplicação de um desconto, usando valores mockados.
Requisitos:
  - Definir um preço inicial para um produto (ex: R$ 120,00).
  - Definir um percentual de desconto (ex: 15%).
  - Calcular e exibir o preço final após a aplicação do desconto.
*/
double valorfinal(double valorInicial,int desconto){
  double descontoDecimal = (desconto / 100);
  double totalPagar = valorInicial * (1 - descontoDecimal);
  return totalPagar;
}

void main() {
  double valorInicial = 969.99;
  int desconto = 46;
  double resultado = valorfinal(valorInicial, desconto);
  print('O valor inicia é de ${valorInicial} mas com o desconto ${desconto} a valor a se pagar no final é de:${resultado.toStringAsFixed(2)}');
}