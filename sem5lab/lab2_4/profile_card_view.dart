import 'package:home1/sem5lab/utils/import_export.dart';

class ProfileCardView extends StatefulWidget {
  const ProfileCardView({super.key});

  @override
  State<ProfileCardView> createState() => _ProfileCardViewState();
}

class _ProfileCardViewState extends State<ProfileCardView> {
  @override
  Widget build(BuildContext context) {
    final ProfileCardController controller = ProfileCardController();
    final List<ProfileModel> profiles = controller.getProfiles();

    return Scaffold(
        appBar: AppBar(
          title: const Text("Profile Card"),
        ),
        body: PageView.builder(
          itemCount: profiles.length,
          itemBuilder: (context, index) {
            final profile = profiles[index];
            return Card(
                margin: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(profile.avatar),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      profile.name,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      profile.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(profile.email,
                        style: const TextStyle(
                          fontSize: 14,
                        )),
                    const SizedBox(height: 8),
                    Text(profile.profression,
                        style: const TextStyle(
                          fontSize: 14,
                        )),
                    const SizedBox(height: 16),
                    Text(
                      'Card ${index + 1} of ${profiles.length}',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ));
          },
        )
      );
  }
}


