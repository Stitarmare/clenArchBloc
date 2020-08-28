import 'package:cleanArchBloc/feature/data/models/character_model.dart';
import 'package:cleanArchBloc/feature/domain/entity/character_entity.dart';

abstract class GetCharacterRepository {
  Future<CharacterEntity> getCharacterList();
}
