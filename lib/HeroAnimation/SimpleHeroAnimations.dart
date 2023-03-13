import 'package:flutter/material.dart';


class HeroHomePage extends StatelessWidget {
  const HeroHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple Hero Animation")),
      body: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            child: ClipOval(
              child: Hero(
                tag: "avatar-$index",
                child: Image.network(
                    "https://static.vecteezy.com/system/resources/previews/006/180/166/non_2x/panther-chameleon-on-branch-free-photo.jpg"),
              ),
            ),
          ),
          title: Text("Item #$index"),
          onTap: () => _openDetail(context, index),
        );
      }),
    );
  }

  _openDetail(context, index) {
    final route = MaterialPageRoute(
      builder: (context) => DetailPage(index: index),
    );
    Navigator.push(context, route);
  }
}
class DetailPage extends StatelessWidget {
  final int index;

  const DetailPage({required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Item #$index"),
              background: Hero(
                tag: "avatar-$index",
                child: Image.network(
                  "https://static.vecteezy.com/system/resources/previews/006/180/166/non_2x/panther-chameleon-on-branch-free-photo.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
