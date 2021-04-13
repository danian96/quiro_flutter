class Cita {
  final String id_cita;
  final String fecha_cita;
  final String hora;
  final String id_quiro;
  final String id_paciente;
  final String created_at;
  final String updated_at;
  final String nombre;
  final String ap_paterno;
  final String ap_materno;
  final String edad;
  final String email;
  final String sexo;
  final String telefono;
  final String nombre_quiro;
  final String ap_paterno_quiro;
  final String ap_materno_quiro;
  final String cedula_quiro;

  Cita(
      this.id_cita,
      this.fecha_cita,
      this.hora,
      this.id_quiro,
      this.id_paciente,
      this.created_at,
      this.updated_at,
      this.nombre,
      this.ap_paterno,
      this.ap_materno,
      this.edad,
      this.email,
      this.sexo,
      this.telefono,
      this.nombre_quiro,
      this.ap_paterno_quiro,
      this.ap_materno_quiro,
      this.cedula_quiro);

  Cita.fromJson(Map<String, dynamic> json)
      : id_cita = json['id_cita'].toString(),
        fecha_cita = json['fecha_cita'].toString(),
        hora = json['hora'].toString(),
        id_quiro = json['id_quiro'].toString(),
        id_paciente = json['id_paciente'].toString(),
        created_at = json['created_at'].toString(),
        updated_at = json['updated_at'].toString(),
        nombre = json['nombre'].toString(),
        ap_paterno = json['Ap_paterno'].toString(),
        ap_materno = json['Ap_materno'].toString(),
        edad = json['edad'].toString(),
        email = json['email'].toString(),
        sexo = json['sexo'].toString(),
        telefono = json['telefono'].toString(),
        nombre_quiro = json['nombre_quiro'].toString(),
        ap_paterno_quiro = json['Ap_paterno_quiro'].toString(),
        ap_materno_quiro = json['Ap_materno_quiro'].toString(),
        cedula_quiro = json['cedula_quiro'].toString();

  Map<String, dynamic> toJson() => {
        'id_cita': id_cita,
        'fecha_cita': fecha_cita,
        'hora': hora,
        'id_quiro': id_quiro,
        'id_paciente': id_paciente,
        'created_at': created_at,
        'updated_at': updated_at,
        'nombre': nombre,
        'Ap_paterno': ap_paterno,
        'Ap_materno': ap_materno,
        'edad': edad,
        'email': email,
        'sexo': sexo,
        'telefono': telefono,
        'nombre_quiro': nombre_quiro,
        'Ap_paterno_quiro': ap_paterno_quiro,
        'Ap_materno_quiro': ap_materno_quiro,
        'cedula_quiro': cedula_quiro,
      };
}
