/*1) Conversor de Temperatura
Objetivo: Implementar um programa em Dart que converta temperaturas entre Fahrenheit e Celsius utilizando valores mockados.
Requisitos:
  - O programa deve definir uma temperatura em Fahrenheit (ex: 68°F) e convertê-la para Celsius.
  - O programa deve definir uma temperatura em Celsius (ex: 20°C) e convertê-la para Fahrenheit.
  - Exibir os resultados das conversões.
*/


import 'dart:math';

double celsiusToFahrenheit(double x) => (x * 9/5) + 32; 

double fahrenheitToCelsius(double y) => (y - 32) * 5/9;

void main() {
 var random = Random();
  double tempCel = -273.15 + random.nextInt(1274);
  double tempFah = -459.4 + random.nextInt(2292);
  print('${tempCel.toStringAsFixed(2)} °C Convertendo fica °F ${celsiusToFahrenheit(tempCel)}');
  print('${tempFah.toStringAsFixed(2)} °F Convertendo fica °C ${fahrenheitToCelsius(tempFah)}');
}