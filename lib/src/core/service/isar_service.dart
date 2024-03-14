import 'package:alquran_app/src/features/surah/data/collections/surah_collection.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarService {
  late Future<Isar> db;
  IsarService() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      return await Isar.open(
        [
          SurahCollectionSchema,
        ],
        directory: dir.path,
        inspector: true,
      );
    }
    return Future.value(Isar.getInstance());
  }
}
