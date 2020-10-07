void main() {
  Map<String, int> numeros = {'uno': 1, 'dos': 2, 'tres': 3, 'cuatro': 4};
  Map<int, String> meses = {1: 'enero', 2: 'febrero'};
  Map<dynamic, dynamic> datos = {1: 'uno', 'dos': 2, 'tres': '3'};
  print(numeros['uno']);
  print(numeros['dos']);
  print(numeros['tres']);
  print(meses[2]);
  print(datos);
}
