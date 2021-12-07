import 'package:flutter/material.dart';
// import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product App',
      debugShowCheckedModeBanner: false,
      home: Register(),
    );
  }
}

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool visible = true;
  bool visible1 = true;
  var c1 = const Color(0xFF06487f);
  var c2 = const Color(0xFF86a9db);
  var c3 = const Color(0xffdcdcf6);
  var c4 = const Color(0xff345b8e);
  var c5 = const Color(0xff5c97d5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration page'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: c1,
        actions: const [
          Icon(Icons.post_add, size: 30),
          SizedBox(
            width: 30,
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100),
              Card(
                margin: EdgeInsets.all(10),
                elevation: 5,
                color: c2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(35),
                      child: TextFormField(
                        autocorrect: false,
                        decoration: InputDecoration(
                          fillColor: c3,
                          filled: true,
                          hintText: "UserName",
                          prefixIcon: Icon(Icons.person_sharp, color: c4),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 0.4),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(35, 0, 35, 35),
                      child: TextFormField(
                        autocorrect: false,
                        decoration: InputDecoration(
                          fillColor: c3,
                          filled: true,
                          hintText: "Email",
                          prefixIcon: Icon(Icons.mail, color: c4),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 0.4),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(35, 0, 35, 35),
                      child: TextFormField(
                        obscureText: visible1,
                        autocorrect: false,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintText: "Password",
                          fillColor: c3,
                          filled: true,
                          prefixIcon: Icon(Icons.lock_rounded, color: c4),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                visible1 = !visible1;
                              });
                            },
                            icon: Icon(
                                visible1
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: c2),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 0.4),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(35, 0, 35, 35),
                      child: TextFormField(
                        autocorrect: false,
                        obscureText: visible,
                        decoration: InputDecoration(
                          fillColor: c3,
                          filled: true,
                          hintText: "Confirm Password",
                          prefixIcon: Icon(Icons.lock, color: c4),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                visible = !visible;
                              });
                            },
                            icon: Icon(
                                visible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: c2),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 0.4),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: c1,
                        padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(height: 35)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//Navigator.push(context, MaterialPageRoute(builder: (_)=>Login()));
