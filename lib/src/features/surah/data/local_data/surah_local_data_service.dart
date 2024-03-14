import 'package:alquran_app/src/core/service/isar_service.dart';
import 'package:alquran_app/src/features/surah/data/collections/surah_collection.dart';
import 'package:alquran_app/src/features/surah/domain/entities/surah.dart';
import 'package:isar/isar.dart';

class SurahLocalDataService {
  final IsarService isarService;
  SurahLocalDataService(this.isarService);

  saveDataSurah(List<SurahCollection> data) async {
    final isar = await isarService.db;
    await isar.writeTxn(() async {
      for (SurahCollection element in data) {
        await isar.surahCollections.put(element);
      }
    });
  }

  Future<List<Surah>> getListSurah() async {
    final isar = await isarService.db;
    IsarCollection<SurahCollection> listSurah = isar.collection<SurahCollection>();
    List<SurahCollection?> result = await listSurah.where().findAll();
    List<Surah>? dataResult = result.map((e) => e!.toEntity()).toList();
    return dataResult;
  }

  Future<void> cleanDB() async {
    final isar = await isarService.db;
    await isar.writeTxn(() => isar.clear());
  }
}
