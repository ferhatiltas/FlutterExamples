import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormveTextFormFeild extends StatefulWidget {
  @override
  _FormveTextFormFeildState createState() => _FormveTextFormFeildState();
}

class _FormveTextFormFeildState extends State<FormveTextFormFeild> {
  String _isimSoyisim, _email, _sifre;
  FocusNode _focusNode;
  Color _colors;
  final formKey=GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _focusNode = FocusNode();
    _colors = Color(1);
    setState(() {
      if (_focusNode.hasFocus) {
        _colors = Colors.red;
      } else
        _colors = Colors.deepPurple;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        accentColor: Colors.cyanAccent,
        hintColor: Colors.deepPurpleAccent,
        primaryColor: Colors.deepPurple,
      ),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.save),
        ),
        appBar: AppBar(
          title: Text("Text ve TextFormFeild"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            key: formKey,
            autovalidate: true,
            child: ListView(
              children: [
                TextFormField(
                  focusNode: _focusNode,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "İsim",
                    hintText: "İsim Giriniz",
                    suffixIcon: Icon(Icons.add_circle),
                  ),
                  validator: (String girilenVeri) {
                    if(girilenVeri.length<3){
                      return "Lütfen isminizi giriniz";
                    } else return null;
                  },
                  onSaved: (deger)=>_isimSoyisim=deger,
                ),
                SizedBox(
                  height: 13,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: _colors),
                    border: OutlineInputBorder(),
                    labelText: "Email",
                    hintText: "Email Adresiniz",
                    suffixIcon: Icon(Icons.add_circle),
                  ),
                  validator: (String girilenVeri) {
                    if(!girilenVeri.contains("@" )|| !girilenVeri.contains(".com")){
                      return "Geçersiz Email";
                    }else return null;
                  },
                  onSaved: (deger)=>_email=deger,

                ),
                SizedBox(
                  height: 13,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Şifre",
                    hintText: "Şifre Giriniz",
                    suffixIcon: Icon(Icons.lock),
                  ),
                  validator: (String girilenVeri) {
                    if(girilenVeri.length<6){
                      return "Geçersiz şifre";
                    }else return null;
                  },
                  onSaved: (deger)=>_sifre=deger,

                ),
                SizedBox(
                  height: 13,
                ),
                RaisedButton.icon(
                  onPressed: () {
                   setState(() {
                     _girisBilgileriniOnayla();
                   });
                  },
                  icon: Icon(Icons.save_alt_outlined),
                  label: Text("KAYDET"),
                  color: Colors.blue.shade400,
                  disabledColor: Colors.teal,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _girisBilgileriniOnayla() {

    if(formKey.currentState.validate()) {
      formKey.currentState.save();
      print("Girilen Bilgiler: \n İsim : $_isimSoyisim - Email : $_email - Şifre : $_sifre");
    }}
}
