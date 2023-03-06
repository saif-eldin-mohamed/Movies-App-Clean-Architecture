import 'package:equatable/equatable.dart';

class Recommendations extends Equatable {
  final int id;
  final String? image;

  const Recommendations({
    required this.id,
    this.image,
  });

  @override
  List<Object?> get props => [
        id,
        image,
      ];
}
