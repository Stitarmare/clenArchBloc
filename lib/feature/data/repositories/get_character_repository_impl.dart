import 'package:cleanArchBloc/feature/data/models/character_model.dart';
import 'package:cleanArchBloc/feature/data/remotedatasource/get_character_datasource.dart';
import 'package:cleanArchBloc/feature/domain/entity/character_entity.dart';
import 'package:cleanArchBloc/feature/domain/repositories/get_character_repository.dart';

class GetCharacterRepositoryImpl extends GetCharacterRepository {
  GetCharacterDataSource _characterDataSource;
  GetCharacterRepositoryImpl(this._characterDataSource);
  @override
  Future<CharacterEntity> getCharacterList() async {
    return _characterDataSource.getCharacterList();
  }
}
