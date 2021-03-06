import 'package:memolidays/features/login/data/sources/local_source.dart';
import 'package:memolidays/features/souvenirs/data/sources/list_souvenirs_remote_source.dart';
import 'package:memolidays/features/souvenirs/domain/models/category.dart';
import 'package:memolidays/features/souvenirs/domain/models/souvenir.dart';

class ListSouvenirsRepository {
  
  final ListSouvenirsRemoteSource listSouvenirsRemoteSource = ListSouvenirsRemoteSource();
  final LocalSource localSource = LocalSource();
  
  ListSouvenirsRepository._();
  static ListSouvenirsRepository _cache;
  factory ListSouvenirsRepository() => _cache ??= ListSouvenirsRepository._();

  int getUserId() {
    final int memolidaysId = localSource.getMemolidaysUserId();
    return memolidaysId;
  }

  Future<List<Category>> getCategoriesList() async {
    final int userId = getUserId();
    final List<Category> categoriesList = await listSouvenirsRemoteSource.getCategoriesList(userId);
    return categoriesList;
  }

  Future<List<Souvenir>> getSouvenirsByCategory(int categoryId) async {
    final int userId = getUserId();
    final List<Souvenir> categorySouvenirsList = await listSouvenirsRemoteSource.getSouvenirsByCategory(categoryId, userId);
    return categorySouvenirsList;
  }

}
