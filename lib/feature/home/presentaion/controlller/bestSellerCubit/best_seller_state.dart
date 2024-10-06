import 'package:bookly/feature/home/data/model/Books.dart';

abstract class BestSellerState {}

final class BestSellerInitial extends BestSellerState {}

final class BestSellerLoading extends BestSellerState {}

final class BestSellerLoaded extends BestSellerState {
  final List<Books> books;

  BestSellerLoaded(this.books);
}

final class BestSellerError extends BestSellerState {
  final String error;

  BestSellerError(this.error);
}
