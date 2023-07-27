part of pages;

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Container(
        color: Colors.red,
        margin: const EdgeInsets.all(10.0),
        child: Container(
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: [
                Colors.purpleAccent,
                Colors.purple,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
