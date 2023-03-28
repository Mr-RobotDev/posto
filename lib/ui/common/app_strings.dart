// Firebase Collections
import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';

CollectionReference categoriesCollection =
    FirebaseFirestore.instance.collection('categories');

CollectionReference categoryNamesCollection =
    FirebaseFirestore.instance.collection('categoryNames');

CollectionReference templateDetailsCollection =
    FirebaseFirestore.instance.collection('templateDetails');

///Base color of the Shimmer effect
const defaultShimmerBaseColor = Color.fromRGBO(64, 64, 64, 0.5);

///Base color of the Highlight effect
const defaultShimmerHighlightColor = Color.fromRGBO(166, 166, 166, 1.0);

///Base color of the back collor
const defaultShimmerBackColor = Color.fromRGBO(217, 217, 217, 0.5);
