import 'package:flutter/material.dart';


class SearchButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Row(
          children: [
            Stack(
              children: <Widget>[
                Container(
                  width: 330,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,width: 1.0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      color: Colors.white
                  ),
                ),
                Positioned(
                  top: 0,bottom: 0,
                    child: IconButton(icon: Icon(Icons.search),color: Colors.black, onPressed: (){})
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(40, 10, 0, 0),
                    child: Text('Bạn muốn tìm sản phẩm gì?',
                    style: TextStyle(fontSize:15.0,color: Colors.grey),
                    )
                )

              ],
            ),
          ],
        ),
      ]
    );
  }
}
