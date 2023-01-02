import 'package:bridge/core/entities/base/base_entity.dart';

abstract class IStorage {
  String getTitle();
  List<T> fetchAll<T extends EntityBase>();
  void store<T extends EntityBase>(T entityBase);
}
