class Persona {
  String nombre = 'Miguel Rivera';
  int edad;
  String saludar() {
    return 'Hola: ${this.nombre}';
  }
}

void main() {
  Persona miguel = new Persona();
  Persona juan;
  print(miguel?.saludar());
  print(juan?.saludar());
}
