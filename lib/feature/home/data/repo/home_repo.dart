import 'package:bookly/core/error/failure.dart';
import 'package:bookly/feature/home/data/model/Books.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<Failure,List<Books>>>fetchAllBooks();
  Future<Either<Failure,List<Books>>>fetchBestSeller();
}
