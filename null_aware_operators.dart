void main() {
  int edad = 10;
  // edad = null == edad ? 23 : edad;
  edad ??= 23;
  print(edad);
}
