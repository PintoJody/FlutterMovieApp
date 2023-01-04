import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidget();
}

class _FavoriteWidget extends State<FavoriteWidget> {

  int _favoriteCount = 0;
  bool _isfavorited = false;


  @override
  Widget build(BuildContext context) {

    void _addFavorited() {
      setState(() {
        if(_isfavorited) {
          _favoriteCount--;
        }
        if(!_isfavorited) {
          _favoriteCount++;
        }
        _isfavorited = !_isfavorited;
      });
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
            padding: EdgeInsets.all(1),
            child: IconButton(
              alignment: Alignment.centerRight,
              icon: (_isfavorited
                  ? const Icon(Icons.star)
                  : const Icon(Icons.star_border)
              ),
              color: Colors.pink,
              onPressed: _addFavorited,
            )
        ),
        SizedBox(
            width: 10,
            child: Text('$_favoriteCount')
        )
      ],
    );

  }
}