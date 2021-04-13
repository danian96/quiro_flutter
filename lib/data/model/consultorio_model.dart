class Consultorio {
  final String nombre;
  final String id_consultorio;
  final String telefono;
  final String ubicacion;
  final String email;
  final String id_quiro;
  final String nombre_quiro;
  final String apellido_paterno_quiro;
  final String apellido_materno_quiro;

  //Ejemplo de como hacer un constructor
  Consultorio(
      this.nombre,
      this.id_consultorio,
      this.telefono,
      this.ubicacion,
      this.email,
      this.id_quiro,
      this.nombre_quiro,
      this.apellido_paterno_quiro,
      this.apellido_materno_quiro);

  Consultorio.fromJson(Map<String, dynamic> json)
      : nombre = json['nombre'],
        id_consultorio = json['id_consultorio'],
        telefono = json['telefono'],
        ubicacion = json['ubicacion'],
        email = json['email'],
        id_quiro = json['id_quiro'],
        nombre_quiro = json['nom'],
        apellido_paterno_quiro = json['Ap_paterno'],
        apellido_materno_quiro = json['Ap_materno'];

  Map<String, dynamic> toJson() => {
        'nombre': nombre,
        'id_consultorio': id_consultorio,
        'telefono': telefono,
        'ubicacion': ubicacion,
        'email': email,
        'id_quiro': id_quiro,
        'nombre_quiro': nombre_quiro,
        'apellido_paterno_quiro': apellido_paterno_quiro,
        'apellido_materno_quiro': apellido_materno_quiro
      };
}
