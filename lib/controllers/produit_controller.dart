

import 'package:aquedart/aquedart.dart';

class ProductController extends ResourceController{
 
   ProductController(this.context);
    ManagedContext? context;

@Operation.get()
Future<Response> getallProducts()async{
  return Response.ok("End Point for all Products model");
}
}