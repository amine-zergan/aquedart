
import 'package:service/config/database.dart';
import 'package:service/controllers/auth_controller/register_controller.dart';
import 'package:service/service.dart';


class ServiceChannel extends ApplicationChannel {
  /// Initialize services in this method.
  ///
  /// Implement this method to initialize services, read values from [options]
  /// and any other initialization required before constructing [entryPoint].
  ///
  /// This method is invoked prior to [entryPoint] being 
   ManagedContext? context;
   AuthServer? authServer;

  @override
  Future prepare() async {
    final config=AppConfiguration.fromFile(File(options!.configurationFilePath!));
    final db=config.database;
    final persistanceStore= PostgreSQLPersistentStore.fromConnectionInfo(
      db.username,
       db.password, 
       db.host, 
       db.port,
        db.databaseName);
        context=ManagedContext(
          ManagedDataModel.fromCurrentMirrorSystem(),
          persistanceStore
        );
    logger.onRecord.listen(
        (rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
  }

  @override
  Controller get entryPoint {
    final router = Router();

   
    // See: https://aldrinsartfactory.github.io/aquedart/http/request_controller/
    router.route("/tutoriel").linkFunction((request) async {
      return Response.ok({"new End point": "Aquedart server bfor backend"});
    });
    router.route("/auth/register").link(() => RegisterController(context!,authServer!));
    router.route("/auth/register").link(() => AuthController(authServer));
    router.route("/files/*").link(() => FileController("public/"));
    router.route("/products").link(() => ProductController(context));
    router.route("/categories").link(() => CategoryController(context));

    return router;
  }
}
