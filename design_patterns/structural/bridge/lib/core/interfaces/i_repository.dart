import 'package:bridge/core/entities/base/base_entity.dart';

abstract class IRepository {
  List<EntityBase> getAll();
  void save(EntityBase entityBase);
}
