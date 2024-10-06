import 'package:bookly/feature/home/data/repo/home_repo.dart';
import 'package:bookly/feature/home/presentaion/controlller/bestSellerCubit/best_seller_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  BestSellerCubit(this.homeRepo) : super(BestSellerInitial());
  final HomeRepo homeRepo;
  getBestSeller() async {
    emit(BestSellerLoading());
    var value = await homeRepo.fetchBestSeller();
    value.fold((failure){
      emit(BestSellerError(failure.errorMessage));

    }, (books){
      emit(BestSellerLoaded(books));
    });
  }
}
