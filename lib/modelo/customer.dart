class Customer {
  int? id;
  String nombreCompleto;
  String apellidoPaterno;
  String apellidoMaterno;
  String telefono;
  String direccion;
  String correo;
  String password;
  String imagenUrl;

  Customer({
    this.id,
    required this.nombreCompleto,
    required this.apellidoPaterno,
    required this.apellidoMaterno,
    required this.telefono,
    required this.direccion,
    required this.correo,
    required this.password,
    this.imagenUrl = 'assets/img/avatar.jpg',
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nombreCompleto': nombreCompleto,
      'apellidoPaterno': apellidoPaterno,
      'apellidoMaterno': apellidoMaterno,
      'telefono': telefono,
      'direccion': direccion,
      'correo': correo,
      'password': password,
      'imagenUrl': imagenUrl,
    };
  }

  Customer.fromMap(Map<String, dynamic> res)
      : id = res['id'],
        nombreCompleto = res['nombreCompleto'],
        apellidoPaterno = res['apellidoPaterno'],
        apellidoMaterno = res['apellidoMaterno'],
        telefono = res['telefono'],
        direccion = res['direccion'],
        correo = res['correo'],
        password = res['password'],
        imagenUrl = res['imagenUrl'];

  void cambiarImagen(String nuevaImg) {
    this.imagenUrl = nuevaImg;
  }
}