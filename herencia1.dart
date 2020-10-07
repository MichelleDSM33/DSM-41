class Input {
  // atributos: adjetivos
  int posicion_x;
  int posicion_y;
  int ancho;
  int alto;
  int color_letra;
  int color_fondo;
  int grosor_borde;
  int color_borde;
  String nombre;

  //constructor
  Input({
    this.posicion_x = 0,
    this.posicion_y = 0,
    this.ancho = 100,
    this.alto = 25,
    this.color_letra = 255,
    this.color_fondo = 0,
    this.grosor_borde = 1,
    this.color_borde = 0,
    this.nombre = 'input',
  });

  // Métodos: verbos
  String toString() {
    return 'Nombre: $nombre, posicion: $posicion_x,$posicion_y y tamaño $ancho,$alto';
  }

  void click() {
    print('clic en $nombre');
  }
}

class Text extends Input {}

void main() {
  // final Input i = new Input(nombre: 'edad', posicion_x: 10, posicion_y: 30);
  // print(i);
  // i.click();
  final Text t = new Text();
  print(t);
  t.click();
}
