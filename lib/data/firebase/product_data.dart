import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_store_coorgle/model/product.dart';
import 'package:injectable/injectable.dart';

import '../../utils/result.dart';
import '../repositories/product_repository.dart';

@Injectable(as: ProductRepository)
class ProductData implements ProductRepository {
  ProductData(
    this.firestore,
  );
  final FirebaseFirestore firestore;
  @override
  Future<Result<List<Product>>> getProducts() async {
    try {
      final result = await firestore.collection('products').get();
      final products = result.docs.map((doc) {
        return Product.fromJson(doc.data());
      }).toList();
      return Result.success(products);
    } on Exception catch (e) {
      return Result.error(e.toString());
    }
  }
}
