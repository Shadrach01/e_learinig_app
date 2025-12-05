// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class FontState extends Equatable {
  final String fontFamily;
  final double fontScale;

  const FontState({
    required this.fontFamily,
    required this.fontScale,
  });

  @override
  List<Object?> get props => [fontScale, fontFamily];

  FontState copyWith({
    double? fontScale,
    String? fontFamily,
  }) {
    return FontState(
      fontFamily: fontFamily ?? this.fontFamily,
      fontScale: fontScale ?? this.fontScale,
    );
  }
}
