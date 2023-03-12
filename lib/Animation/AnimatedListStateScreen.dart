import 'package:flutter/material.dart';

class AnimatedListStateScreen extends StatefulWidget {
  const AnimatedListStateScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedListStateScreen> createState() => _AnimatedListStateScreenState();
}

class _AnimatedListStateScreenState extends State<AnimatedListStateScreen> {
   List<String> _items = ["Item 1", "Item 2", "Item 3"];
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  void _addItem() {
    int index = _items.length;
    _items.add("Item ${index + 1}");
    _listKey.currentState?.insertItem(index);
  }

  void _removeItem() {
    int index = _items.length - 1;
    String removedItem = _items.removeAt(index);
    _listKey.currentState?.removeItem(
      index,
      (context, animation) => ListTile(
        title: Text(
          removedItem,
        ),
        trailing: Icon(Icons.delete),
        onTap: () {
          _listKey.currentState?.removeItem(
            index,
            (context, animation) => SizedBox(
              width: 0,
              height: 0,
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedList Example'),
      ),
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _items.length,
        itemBuilder: (context, index, animation) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: Offset(1, 0),
              end: Offset(0, 0),
            ).animate(animation),
            child: ListTile(
              title: Text(_items[index]),
              trailing: Icon(Icons.delete),
              onTap: () {
                _removeItem();
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _addItem();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}