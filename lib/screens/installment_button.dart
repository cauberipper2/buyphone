import 'package:flutter/material.dart';

class InstallmentButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(
            width: 190,
            height: 70,
            child: RaisedButton(
              child: Padding(
                padding: const EdgeInsets.only(top:10),
                child: Column(
                  children: [
                    Text('MUA TRẢ GÓP 0%',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14.0)),
                    Text('Duyệt hồ sơ tại siêu thị',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14.0)),
                  ],
                ),
              ),
                onPressed: (){},
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(8)
                  )
              ),
            ),
          ),
          SizedBox(
            width: 200,
            height: 70,
            child: RaisedButton(
                child: Padding(
                  padding: const EdgeInsets.only(top:10.0),
                  child: Column(
                    children: [
                      Text('TRẢ GÓP 0% QUA THẺ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.0),),
                      Text('Visa, Master, JCB',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.0))
                    ],
                  ),
                ),
                onPressed: (){},
                 color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8)
                )
              ),
            ),
          ),
          SizedBox(height: 50,)
        ],
      ),

    );
  }
}
