void main() {
  int tabla, por;
  for (tabla = 1; tabla <= 10; tabla++) {
    // print("\nTabla del " + tabla.toString());
    print("\nTabla del $tabla");
    for (por = 1; por <= 10; por++) {
      //print(tabla.toString() +
      //    '*' +
      //    por.toString() +
      //    '=' +
      //    (tabla * por).toString());
      print('$tabla * $por= ${tabla * por}');
    }
  }
}
