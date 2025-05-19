/*
3) Verificador de Números Primos
Objetivo: Escrever um programa em Dart que verifique se um número mockado é primo.
Requisitos:
  - Definir um número (ex: 29).
  - Verificar e exibir se o número é primo.
  - Se não for primo, listar e exibir seus divisores.
*/

import 'dart:math';

List <int> todosDivisores(int n){
  List<int> divisores = [];
  for (int i = 2; i <= n; i++) {
    if (n % i == 0) {
      divisores.add(i);
    }
  }
  return divisores;
}


bool detectorNumeroPrimo(int n) {
  if (n <= 1) return false; 
  for (int i = 2; i <= sqrt(n).toInt(); i++) {
    if (n % i == 0) return false; 
  }
  return true;  
}


void main(){
  int numeroIcognita = 1019;
  List <int> tt = todosDivisores(numeroIcognita);
  if(detectorNumeroPrimo(numeroIcognita) == true){
    print("primo");
  }else{
    print(tt);
  }
  
}