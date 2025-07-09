class ProfileModel{
  final String name;
  final String email;
  final String profression;
  final String avatar;

  ProfileModel({
    required this.name,
    required this.email,
    required this.profression,
    required this.avatar,
  });

  static List<ProfileModel> getProfiles(){
    return [
        ProfileModel(name: 'Manav', email: 'manav45@gmail.com', profression: 'SE', avatar: 'image/Amazon-Logo.png'),
        ProfileModel(name: 'Jasmine', email: 'jasu@gmail.com', profression: 'SE', avatar: 'image/Screenshot 2024-04-04 221356.png')
  ];
  }

  static ProfileModel getProfile(int index){
    return getProfiles()[0];
  }
}

