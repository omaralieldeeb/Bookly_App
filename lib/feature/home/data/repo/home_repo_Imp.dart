import 'package:bookly/core/apiService/apiService.dart';
import 'package:bookly/core/error/failure.dart';
import 'package:bookly/feature/home/data/model/Books.dart';
import 'package:bookly/feature/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo {
  final ApiService apiService;
  HomeRepoImp(this.apiService);
  @override
  Future<Either<Failure, List<Books>>> fetchAllBooks() async {
    try {
      List<Books> books = [];
      var data = await apiService.get(
          endPoints: 'v1/volumes?Filtering=free-ebooks&q=subject:flutter&maxResults=40');
      for (var i in data["items"]) {
        books.add(Books.fromJson(i));
      }
      return right(books);
    } catch (e) {
      if(e is DioException){
        return Left(ServerFailure.fromDioException(e));
      }

      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Books>>> fetchBestSeller() async {
    try {
      List<Books> books = [];
      var data = await apiService.get(
          endPoints:
          'v1/volumes?Filtering=free-ebooks&q=flutter&Sorting&maxResults=40');
      for (var i in data["items"]) {
        books.add(Books.fromJson(i));
      }
      return right(books);
    } catch (e) {
      if(e is DioException){
        return Left(ServerFailure.fromDioException(e));
      }

      return Left(ServerFailure(e.toString()));
    }
  }
}