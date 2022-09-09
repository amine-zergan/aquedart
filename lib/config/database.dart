

import 'package:service/service.dart';

class AppConfiguration extends Configuration{
  AppConfiguration.fromFile(File file):super.fromFile(file);

  DatabaseConfiguration database=DatabaseConfiguration();
}