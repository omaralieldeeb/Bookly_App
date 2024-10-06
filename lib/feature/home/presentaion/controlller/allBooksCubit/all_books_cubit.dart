import 'package:bookly/feature/home/data/repo/home_repo.dart';
import 'package:bookly/feature/home/presentaion/controlller/allBooksCubit/all_books_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllBooksCubitCubit extends Cubit<AllBooksCubitState> {
  AllBooksCubitCubit(this.homeRepo) : super(AllBooksInitial());
  final HomeRepo homeRepo;
  getAllBook() async {
    emit(AllBooksLoading());
    var value = await homeRepo.fetchAllBooks();
    value.fold((failure){
      emit(AllBooksError(failure.errorMessage));

    }, (books){
      emit(AllBooksLoaded(books));
    });
  }
}
