/*
4) Gerador de Fibonacci
Objetivo: Implementar um programa em Dart que gere e exiba a sequência de Fibonacci até um certo número n definido de forma mockada.
Requisitos:
  - Definir um número n (ex: 10).
  - Gerar e exibir a sequência de Fibonacci até o n-ésimo termo.
*/


void main(){
  
  List <int> fibonacci = [0,1];
  int limitadorFibonacci = 20;
  
  for(int i = 2; i < limitadorFibonacci; i++){
    int y = fibonacci[i-1] + fibonacci[i-2];
    fibonacci.add(y);
  }
  
  print(fibonacci);
}