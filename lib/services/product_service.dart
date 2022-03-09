part of 'service.dart';

class ProductService {
  Future<List<ProductModel>> getProduct() async {
    var url = 'https://shamo-backend.buildwithangga.id/api/products';
    var headers = {'Content-Type': 'application/json'};
    var response = await http.get(Uri.parse(url), headers: headers);
    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<ProductModel> products = [];

      for (var item in data) {
        products.add(ProductModel.fromJson(item));
      }
      return products;
    } else {
      throw Exception('Gagal Get Product');
    }
  }
}
