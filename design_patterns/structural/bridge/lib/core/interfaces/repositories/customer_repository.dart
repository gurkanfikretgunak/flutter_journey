import 'package:bridge/core/entities/base/base_entity.dart';
import 'package:bridge/core/entities/customer_entity.dart';
import 'package:bridge/core/interfaces/base/i_repository.dart';
import 'package:bridge/core/interfaces/base/i_storage.dart';

class CustomersRepository implements IRepository {
  final IStorage storage;

  const CustomersRepository(this.storage);

  @override
  List<EntityBase> getAll() {
    return storage.fetchAll<Customer>();
  }

  @override
  void save(EntityBase entityBase) {
    storage.store<Customer>(entityBase as Customer);
  }
}
