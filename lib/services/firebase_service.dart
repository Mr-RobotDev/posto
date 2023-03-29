import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:posto/models/models.dart';
import 'package:posto/ui/common/app_strings.dart';

class FirebaseService {
  List<String> _categories = [];

  List<String> get categories => _categories;
  bool get hasLoaded => _categories.isNotEmpty;

  Future<List<String>?> getCategories() async {
    try {
      final QuerySnapshot<Object?> result = await categoryNamesCollection.get();
      _categories =
          (result.docs.first.get('categories') as List<dynamic>).cast<String>();
      return _categories;
    } on FirebaseException {
      return null;
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
