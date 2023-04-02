import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:posto/models/models.dart';
import 'package:posto/ui/common/app_strings.dart';

class FirebaseService {
  List<Category>? _categories = [];
  List<Category>? get categories => _categories;
  bool get hasLoaded => _categories!.isNotEmpty;

  Future<List<Category>?> getCategories() async {
    try {
      final QuerySnapshot<Object?> result = await categoryNamesCollection.get();
      _categories = result.docs
          .map((doc) => Category.fromJson(doc.data() as Map<String, dynamic>))
          .toList();
      return _categories;
    } on FirebaseException {
      throw FirebaseException(
        plugin: '',
      );
    }
  }

  Future<List<Template>?> getTemplates(String category) async {
    try {
      final QuerySnapshot<Object?> result = await categoriesCollection
          .doc(category)
          .collection('templates')
          .get();
      return result.docs
          .map((doc) => Template.fromJson(doc.data() as Map<String, dynamic>))
          .toList();
    } on FirebaseException {
      return null;
    }
  }
}
