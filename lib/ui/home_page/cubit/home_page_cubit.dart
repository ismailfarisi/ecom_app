import 'package:bloc/bloc.dart';
import 'package:e_store_coorgle/data/repositories/product_repository.dart';
import 'package:e_store_coorgle/utils/status.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../model/product.dart';

part 'home_page_state.dart';
part 'home_page_cubit.freezed.dart';

@injectable
class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit(this._productRepository) : super(const HomePageState());
  final ProductRepository _productRepository;
  Future<void> getProducts() async {
    emit(state.copyWith(productFetchStatus: Status.loading));
    final result = await _productRepository.getProducts();
    result.when(success: ((data) {
      if (kDebugMode) {
        print('HomePageCubit: getProducts: success: $data');
      }
      emit(state.copyWith(productFetchStatus: Status.success, products: data));
    }), error: (e) {
      emit(state.copyWith(
          productFetchStatus: Status.error, errorMessage: e.toString()));
    });
  }
}
