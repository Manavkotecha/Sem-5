
import 'package:sem_5/sem5lab/utils/import_export.dart';

class SecondScreenWithSpecificTransitions extends StatefulWidget {
  const SecondScreenWithSpecificTransitions({super.key});

  @override
  State<SecondScreenWithSpecificTransitions> createState() => _SecondScreenWithSpecificTransitionsState();
}

class _SecondScreenWithSpecificTransitionsState extends State<SecondScreenWithSpecificTransitions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Second Screen With the Transitions Effects '),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              Get.back();
            }, child:const Text('Click To Go Back !'))
          ],
        ),
      ),
    );
  }
}
