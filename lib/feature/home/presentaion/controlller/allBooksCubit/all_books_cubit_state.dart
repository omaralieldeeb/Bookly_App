import 'package:bookly/feature/home/data/model/Books.dart';

abstract class AllBooksCubitState {}

final class AllBooksInitial extends AllBooksCubitState {}

final class AllBooksLoading extends AllBooksCubitState {}

final class AllBooksLoaded extends AllBooksCubitState {
  final List<Books> books;

  AllBooksLoaded(this.books);
}

final class AllBooksError extends AllBooksCubitState {
  final String error;

  AllBooksError(this.error);
}
