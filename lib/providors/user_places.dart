import 'dart:io';

import 'package:favorite_places/models/place.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserPlaceNotifier extends StateNotifier<List<Place>> {
  UserPlaceNotifier() : super(const []);

  void addPlace(String title, File image) {
    final place = Place(title: title, image: image);
    state = [place, ...state];
  }
}

final placesProvider =
    StateNotifierProvider<UserPlaceNotifier, List<Place>>((ref) {
  return UserPlaceNotifier(); //return an instance of above class giving the generic type
});
