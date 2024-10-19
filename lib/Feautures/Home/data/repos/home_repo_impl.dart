import 'dart:developer';

import 'package:bookly_app/Feautures/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Feautures/Home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService _apiService;

  HomeRepoImpl({required ApiService apiService}) : _apiService = apiService;

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      Map<String, dynamic> data = await _apiService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&q=subject:Horror&Sorting=newest',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(
          BookModel.fromJson(item),
        );
      }
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioError(e));
    } on Exception catch (e) {
      log(e.toString());
      return left(ServerFailure(
          errMessage: "Oops there was an error, try again later"));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      Map<String, dynamic> data = await _apiService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&q=subject:Horror',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(
          BookModel.fromJson(item),
        );
      }
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioError(e));
    } on Exception catch (e) {
      log(e.toString());
      return left(ServerFailure(
          errMessage: "Oops there was an error, try again later"));
    }
  }
}
