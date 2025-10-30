abstract class DbDataSource {
  Future<void> insert(String table, Map<String, dynamic> data);
  Future<void> update(String table, Map<String, dynamic> data);
  Future<void> delete(String table, int id);
  Future<List<Map<String, dynamic>>> query(String table);
}
