import 'package:collection/collection.dart';

enum Genres {
  Alternative,
  Country,
  Dance,
  Electronic,
  HipHop,
  Jazz,
  Pop,
  RnB,
  Rock,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Genres):
      return Genres.values.deserialize(value) as T?;
    default:
      return null;
  }
}
