import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:untitled2/src/application.dart';
import 'package:http/http.dart' as http;

class HomeProvider extends ChangeNotifier {
  final categories = <Category>[];
  final products = <Product>[];
  int selectedCategoryId = -1;
  final dioService = DioService.getInstance();

  Future<void> loadCategory() async {
    final result = await dioService.get(categoriesApi);
    if (result.response == null) return;
    for (final categoryObject in result.response!.data['data']) {
      categories.add(Category.fromMap(categoryObject));
    }
    selectedCategoryId = categories.first.id;
    loadProduct();
    notifyListeners();
  }

  Future<void> loadProduct() async {
    final result = await dioService.post(productsApi,
        data: {"category_id": selectedCategoryId}, showLoading: true);

    if (result.response == null) return;
    for (final productObject in result.response!.data['data']['data']) {
      products.add(Product.fromMap(productObject));
    }
    notifyListeners();
  }
  void changeProduct(int index){
    if(selectedCategoryId ==categories[index].id)return;
    products.clear();
    selectedCategoryId= categories[index].id;
    loadProduct();
  }
  Future<void> addProductToCart(int productId,int weightUnitId,int quantity) async {
    final result = await http.post(
      Uri.parse("${baseApi}add-to-cart"),
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': token
      },
      body: jsonEncode(<String, int>{
        'product_id': productId,
        'product_weight_unit_id': weightUnitId,
        'quantity': quantity,
      }),
    );
    if (result.statusCode == 201) {
      print(result.body);
    } else {
      print(result.body);
    }
    notifyListeners();

  }

}
