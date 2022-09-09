



import 'package:service/service.dart';

class Product extends ManagedObject<_Product> implements _Product{}

@Table(name:"categories")
class _Product{

  @primaryKey
  late int id;

  late String name;
  
}