

import 'package:aquedart/aquedart.dart';

class CategoryController extends ResourceController{
  CategoryController(this.context);
  ManagedContext? context;

//end point for list of all categories
@Operation.get()
Future<Response> getalCategorie()async{
  return Response.ok("end point for all categories");
}

@Operation.get('id')
Future<Response> getCategory(@Bind.path('id') int id)async{
  return Response.ok("get category with $id");
}
}