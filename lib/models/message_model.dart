import 'package:sneaker_app/models/product_model.dart';

class MessageModel {
  String message;
  int userId;
  String userImg;
  String username;
  bool isFromUser;
  ProductModel product;
  DateTime createdAt;
  DateTime updatedAt;

  MessageModel(
      {this.createdAt,
      this.isFromUser,
      this.message,
      this.product,
      this.updatedAt,
      this.userId,
      this.userImg,
      this.username});

  MessageModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    userId = json['userId'];
    username = json['username'];
    userImg = json['userImg'];
    isFromUser = json['isFromUser'];
    product = json[product] == {}
        ? UninitialzedProductModel()
        : ProductModel.fromJson(json['product']);
    createdAt = DateTime.parse(json['createdAt']);
    updatedAt = DateTime.parse(json['upadatedAt']);
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'userId': userId,
      'username': username,
      'userImg': userImg,
      'isFromUser': isFromUser,
      'product': product is UninitialzedProductModel ? {} : product.toJson(),
      'createdAt': createdAt.toString(),
      'updatedAt': updatedAt.toString()
    };
  }
}
