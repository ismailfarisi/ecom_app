import '../../model/product.dart';
import '../../utils/result.dart';

abstract class ProductRepository {
  Future<Result<List<Product>>> getProducts();
}
