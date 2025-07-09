import 'package:sem_5/sem5lab/utils/import_export.dart';

class ProfileCardController{
  List<ProfileModel> getProfiles() {
    return ProfileModel.getProfiles();

  }

  ProfileModel getProfile(int index) {
    return ProfileModel.getProfile(index);
  }
}


