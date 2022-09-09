




import 'package:aquedart/managed_auth.dart';
import 'package:service/service.dart';
class User extends ManagedObject<_User> implements _User, ManagedAuthResourceOwner<_User>  {
  
  @Serialize(input: true, output: false)
  String? password;
}

class _User extends ResourceOwnerTableDefinition{

 
  @Column()
  String? urlimage;

   @Column(unique: true)
  String? email;

 

}