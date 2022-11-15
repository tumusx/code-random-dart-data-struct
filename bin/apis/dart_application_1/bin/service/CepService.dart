import '../dados/CepRepository.dart';
import '../dados/model/Cep.dart';

class CepServiceImpl implements ICepService {
  ICepRepository iCepRepository;

  CepServiceImpl(this.iCepRepository);

  @override
  Future<Cep> seachedDetailsCep(String cepUser) async {
    late Cep cep;
    await iCepRepository.getDetailCep(cepUser).then((detailCepValue) => cep = detailCepValue);
    if (cep != null) {
      return Future.value(cep);
    }
    return Future.value(null);
  }
}

abstract class ICepService {
  Future<Cep> seachedDetailsCep(String cepUser);
}
