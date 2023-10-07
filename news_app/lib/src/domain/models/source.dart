import 'package:equatable/equatable.dart';

class Source extends Equatable {
  final String? id;
  final String? name;

  const Source(
    this.id,
    this.name,
  );

  factory Source.fromMap(Map<String, dynamic> map) {
    return Source(
      map['id'] != null ? map['id'] as String : null,
      map['name'] != null ? map['name'] as String : null,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, name];
}
