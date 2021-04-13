class Auth {
  final String id_quiro;
  final String nombre;
  final String cedula;
  final String ap_paterno;
  final String ap_materno;
  final String email;
  final String contrasena;
  final String nom_usu;
  final String created_at;
  final String updated_at;

  Auth(
      this.id_quiro,
      this.nombre,
      this.cedula,
      this.ap_paterno,
      this.ap_materno,
      this.email,
      this.contrasena,
      this.nom_usu,
      this.created_at,
      this.updated_at);

  Auth.fromJson(Map<String, dynamic> json)
      : id_quiro = json['id_quiro'].toString(),
        nombre = json['nombre'].toString(),
        cedula = json['cedula'].toString(),
        ap_paterno = json['Ap_paterno'].toString(),
        ap_materno = json['Ap_materno'].toString(),
        email = json['email'].toString(),
        contrasena = json['contraseña'].toString(),
        nom_usu = json['Nom_usu'].toString(),
        created_at = json['created_at'].toString(),
        updated_at = json['updated_at'].toString();

  Map<String, dynamic> toJson() => {
        'id_quiro': id_quiro,
        'nombre': nombre,
        'cedula': cedula,
        'Ap_paterno': ap_paterno,
        'Ap_materno': ap_materno,
        'email': email,
        'contraseña': contrasena,
        'Nom_usu': nom_usu,
        'created_at': created_at,
        'updated_at': updated_at,
      };
}
