import 'package:cleanArchBloc/core/errors/failuers.dart';
import 'package:cleanArchBloc/core/usecases/usecase.dart';
import 'package:cleanArchBloc/feature/domain/entity/character_entity.dart';
import 'package:cleanArchBloc/feature/domain/repositories/get_character_repository.dart';

class GetCharacterUsecase
    extends UseCase<CharacterEntity, GetCharacterUsecaseParam> {
  GetCharacterRepository _getCharacterRepository;
  GetCharacterUsecase(this._getCharacterRepository);
  @override
  Future<CharacterEntity> call(GetCharacterUsecaseParam param) {
    return _getCharacterRepository.getCharacterList();
  }
}

class GetCharacterUsecaseParam {
  final String key;
  GetCharacterUsecaseParam(this.key);
}
