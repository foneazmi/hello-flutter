part of pages;

class InitPage extends StatelessWidget {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Init Page'),
      ),
      body: ListViewHome(),
    );
  }
}

class Menu {
  final String title;
  final String subtitle;
  final String routeName;
  Menu(this.title, this.subtitle, this.routeName);
}

class ListViewHome extends StatelessWidget {
  final listMenu = [
    Menu("Template", "cp -r template <page_name>", "/template"),
    Menu("Text", "playing with text", '/text'),
    Menu("Container", "playing with container", '/container'),
    Menu("State", "playing with State", "/state"),
    Menu("Bottom Nav Bar", "Material You 3 Bottom Nav Bar", "/bottom-nav-bar"),
    Menu("HTTP", "use getConnect", "/http"),
  ];

  ListViewHome({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listMenu.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            onTap: () => Get.toNamed(listMenu[index].routeName),
            title: Text(listMenu[index].title),
            subtitle: Text(listMenu[index].subtitle),
            trailing: const Icon(Icons.arrow_right_rounded),
          ),
        );
      },
    );
  }
}
