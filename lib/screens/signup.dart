import 'package:buyphoneapp/screens/homepage_screen.dart';
import 'package:buyphoneapp/screens/login.dart';
import 'package:buyphoneapp/screens/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login_logout_tools.dart';
import 'package:flutter/services.dart';


class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState>_formKey = GlobalKey<FormState>();
  String _email,_password;
  Future<void> _signUp() async{
    final formState = _formKey.currentState;
    if(formState.validate()){
      formState.save();
      try{
        FirebaseUser user =  (await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password)) as FirebaseUser;
        Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context) => HomePageScreen()));
      }catch(e){
        print(e.message);
      }
    }
  }

  BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
        appBar: AppBar(
          title: Text('Đăng ký',style: TextStyle(fontSize: 20.0),),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
          iconTheme: IconThemeData(
              color: Colors.white
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Column(
              children: <Widget>[
                Container(
                    width: 500,
                    height: 230,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('sale1.png'),
                            fit: BoxFit.contain
                        )
                    )
                ),
                SingleChildScrollView(
                  child: Form(
                      key: _formKey,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Email',
                              ),
                              keyboardType: TextInputType.emailAddress,
                              validator: (value){
                                if(value.isEmpty || !value.contains('@')) {
                                  return 'email không hợp lệ';
                                }
                                return null;
                              },
                              onSaved: (value) => _email = value,
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Password',
                              ),
                              validator: (value){
                                if(value.isEmpty || value.length < 6) {
                                  return 'password không hợp lệ';
                                }
                                return null;
                              },
                              onSaved: (value) => _password = value,
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Re-password',
                              ),
                              validator: (value){
                                if(value.isEmpty || value.length < 6 ) {
                                  return 'password không hợp lệ';
                                }
                                return null;
                              },
                              onSaved: (value){

                              },
                            ),
                            RaisedButton(
                              child: Text('Đăng ký'),
                              onPressed: (){
                                _signUp();
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(10.0)
                                  )
                              ),
                              color: Colors.blue,
                              textColor: Colors.white,
                            )
                          ],
                        ),
                      )

                  ),
                ),

                Container(
                  padding: EdgeInsets.only(top:10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 10.0),
                        child: CircleAvatar(
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('facebook_icon.png')
                                )
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 10.0),
                        child: CircleAvatar(
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('google_icon.png')
                                )
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 10.0),
                        child: CircleAvatar(
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('github_icon.png')
                                )
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ]
          ),
        )
    );
  }
  vertifyLoggin(){
    if (_email == ""){
      showSnackBar('Email không được để trống', _formKey);
      return;
    }

    if(_password == ""){
      showSnackBar('Mật khẩu không được để trống', _formKey);
      return;
    }else if(_password.length < 6){
      showSnackBar('Mật khẩu không được bé hơn 6 ký tự', _formKey);
    }

    displayProgressDialog(context);
  }

}

