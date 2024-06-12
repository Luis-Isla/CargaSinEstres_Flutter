class Company {
  int? id;
  String nombreEmpresa;
  String correoEmpresa;
  String direccion;
  String telefono;
  String password;
  String imagenUrl;

  Company({
    this.id,
    required this.nombreEmpresa,
    required this.correoEmpresa,
    required this.direccion,
    required this.telefono,
    required this.password,
    this.imagenUrl = 'assets/img/avatar2.jpg',
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nombreEmpresa': nombreEmpresa,
      'correoEmpresa': correoEmpresa,
      'direccion': direccion,
      'telefono': telefono,
      'password': password,
      'imagenUrl': imagenUrl,
    };
  }

  Company.fromMap(Map<String, dynamic> res)
      : id = res['id'],
        nombreEmpresa = res['nombreEmpresa'],
        correoEmpresa = res['correoEmpresa'],
        direccion = res['direccion'],
        telefono = res['telefono'],
        password = res['password'],
        imagenUrl = res['imagenUrl'];

  void cambiarImagen(String nuevaImg) {
    this.imagenUrl = nuevaImg;
  }
}
