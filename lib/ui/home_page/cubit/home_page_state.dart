part of 'home_page_cubit.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    @Default([]) List<Product> products,
    @Default(Status.init) Status productFetchStatus,
    String? errorMessage,
  }) = _HomePageState;
}
