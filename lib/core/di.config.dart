// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../app/bloc/user_bloc.dart' as _i16;
import '../data/firebase/auth_data.dart' as _i4;
import '../data/firebase/cart_data.dart' as _i12;
import '../data/firebase/product_data.dart' as _i9;
import '../data/repositories/auth_repository.dart' as _i3;
import '../data/repositories/cart_repository.dart' as _i11;
import '../data/repositories/product_repository.dart' as _i8;
import '../model/product.dart' as _i15;
import '../ui/home_page/cubit/home_page_cubit.dart' as _i13;
import '../ui/login_page/cubit/login_page_cubit.dart' as _i7;
import '../ui/product_page/cubit/product_page_cubit.dart' as _i14;
import '../ui/register_page/cubit/register_page_cubit.dart' as _i10;
import 'di_module.dart' as _i18;
import 'router.dart' as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AuthRepository>(() =>
      _i4.AuthData(get<_i5.FirebaseFirestore>(), get<_i6.FirebaseAuth>()));
  gh.factory<_i6.FirebaseAuth>(() => registerModule.auth);
  gh.factory<_i5.FirebaseFirestore>(() => registerModule.firestore);
  gh.factory<_i7.LoginPageCubit>(
      () => _i7.LoginPageCubit(get<_i3.AuthRepository>()));
  gh.factory<_i8.ProductRepository>(
      () => _i9.ProductData(get<_i5.FirebaseFirestore>()));
  gh.factory<_i10.RegisterPageCubit>(
      () => _i10.RegisterPageCubit(get<_i3.AuthRepository>()));
  gh.factory<_i11.CartRepository>(() =>
      _i12.CartData(get<_i5.FirebaseFirestore>(), get<_i6.FirebaseAuth>()));
  gh.factory<_i13.HomePageCubit>(
      () => _i13.HomePageCubit(get<_i8.ProductRepository>()));
  gh.factoryParam<_i14.ProductPageCubit, _i15.Product, dynamic>((product, _) =>
      _i14.ProductPageCubit(product, get<_i11.CartRepository>()));
  gh.singleton<_i16.UserBloc>(
      _i16.UserBloc(get<_i3.AuthRepository>(), get<_i11.CartRepository>()));
  gh.singleton<_i17.AppRouter>(_i17.AppRouter(get<_i16.UserBloc>()));
  return get;
}

class _$RegisterModule extends _i18.RegisterModule {}
