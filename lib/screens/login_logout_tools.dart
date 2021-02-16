import 'package:buyphoneapp/screens/progressDialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget appTextField(String name, IconData iconName, bool isPassword, TextEditingController controller){
      return Container(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
        child: TextFormField(
          controller: controller,
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: name,
            prefixIcon: new Icon(iconName),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            )
          ),

        ),
      );
}

Widget appButton(String name,VoidCallback onBtnClicked){
  return Padding(
    padding: EdgeInsets.only(top:10.0),
    child: GestureDetector(
      onTap: (){
        onBtnClicked();
      },
      child: Container(
        width: 300,
        height: 50,
        child: Center(child: Text(name,style: TextStyle(fontSize: 20.0,color: Colors.white),)),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.red,
              Colors.deepOrange,
            ]
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0)
          )
        ),
      ),
    ),
  );
}

showSnackBar(String message, final scaffoldKey){
  scaffoldKey.currentState.showSnackBar(new SnackBar(
    backgroundColor: Colors.red[600],
    content: Text(
      message,
      style: TextStyle(color: Colors.white),
    ),
  ));
}

displayProgressDialog(BuildContext context) {
  Navigator.of(context).push(new PageRouteBuilder(
      opaque: false,
      pageBuilder: (BuildContext context, _, __) {
        return new ProgressDialog();
      }));
}