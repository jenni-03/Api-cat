import 'package:widgets_app/domain/entities/cat.dart';

class CatModel {
  final String id;
  final String nombreRaza;
  final String paisOrigen;
  final String inteligencia;
  final String adaptabilidad;
  final String descripcion;
  final String temperamento;
  final String imagen;

  CatModel({
    required this.id,
      required this.nombreRaza,
      required this.paisOrigen,
      required this.inteligencia,
      required this.adaptabilidad,
      required this.descripcion,
      required this.temperamento,
      required this.imagen
  });

  factory CatModel.fromJsonMap(Map<String, dynamic> json) => CatModel(
        id: json["id"],
        nombreRaza: json["name"],
        paisOrigen: json["origin"],
        inteligencia: json["origin"],
        adaptabilidad: json["origin"],
        descripcion: json["description"],
        temperamento: json["temperament"],
        imagen:
            'https://cdn2.thecatapi.com/images/${json['reference_image_id']}.jpg',
  );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nombreRaza": nombreRaza,
        "paisOrigen": paisOrigen,
        "inteligencia": inteligencia,
        "adaptabilidad": adaptabilidad,
        "descripcion": descripcion,
        "temperamento": temperamento,
        "imagen": imagen,
  };

  Cat toCatEntity() => Cat(
      id: id,
      nombreRaza: nombreRaza,
      paisOrigen: paisOrigen,
      inteligencia: inteligencia,
      adaptabilidad: adaptabilidad,
      descripcion: descripcion,
      temperamento: temperamento,
      imagen: imagen
  );
}
