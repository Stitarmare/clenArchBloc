import 'package:cleanArchBloc/core/errors/failuers.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class UseCase<Type, Param> {
  Future<Type> call(Param param);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => throw UnimplementedError();
}
