import 'dart:io';

import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Place {
  Place({
    required this.title,
    required this.image,
  }) : id = uuid.v1();

  final String id;
  final String title;
  final File image;
}
