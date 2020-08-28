import 'dart:convert';

import 'package:cleanArchBloc/core/networks/reponse_parser.dart';
import 'package:cleanArchBloc/feature/data/models/character_model.dart';
import 'package:cleanArchBloc/feature/domain/entity/character_entity.dart';

abstract class GetCharacterDataSource {
  Future<CharacterModel> getCharacterList();
}

class GetCharacterDataSourceImpl extends GetCharacterDataSource {
  ResponseParser _response;
  GetCharacterDataSourceImpl(this._response);
  @override
  Future<CharacterModel> getCharacterList() async {
    final result = await _response.parseResponse(HttpMethodType.GET, "", null);
    if (result != null) {
      var decodeJson = json.decode(result);
      CharacterModel characterModel = CharacterModel.fromMap(decodeJson);
      return characterModel;
    }
    return null;
  }
}
