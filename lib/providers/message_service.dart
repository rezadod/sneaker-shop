import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sneaker_app/models/product_model.dart';
import 'package:sneaker_app/models/user_model.dart';

class MessageService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> addMessage(
      {UserModel user,
      bool isFormUser,
      String message,
      ProductModel product}) async {
    try {
      firestore.collection('messages').add({
        'userId': user.id,
        'username': user.name,
        'userImg': user.profilePhotoUrl,
        'isFromUser': true,
        'message': message,
        'product': product is UninitialzedProductModel ? {} : product.toJson(),
        'createdAt': DateTime.now().toString(),
        'updatedAt': DateTime.now().toString()
      }).then((value) => print('Pesan Berhasil Dikirim'));
    } catch (e) {
      throw Exception('Pesan gagal dikirim');
    }
  }
}
