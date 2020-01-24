import 'package:flutter/material.dart';
import 'package:property_app/home.dart';
import 'package:property_app/home_widget.dart';
import 'package:property_app/screens/sign_up.dart';
import 'package:property_app/screens/welcome_page.dart';
import 'package:property_app/services/auth_service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      auth: AuthService(),
      child: MaterialApp(
        title: 'Property Application',
        theme: ThemeData.light().copyWith(
          primaryColor: Color(0xFF0A0E51),
          scaffoldBackgroundColor: Color(0xFF0A0E51),
        ),
        home: HomeWidget(),
//        routes: <String, WidgetBuilder>{
//          '/signUp': (BuildContext context) =>
//              SignUpView(authFormType: AuthFormType.signUp),
//          '/signIn': (BuildContext context) =>
//              SignUpView(authFormType: AuthFormType.signIn),
//          '/home': (BuildContext context) => HomeWidget(),
//        },
      ),
    );
  }
}

class HomeController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AuthService auth = Provider.of(context).auth;
    return StreamBuilder(
      stream: auth.onAuthStateChanged,
      builder: (context, AsyncSnapshot<String> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final bool signedIn = snapshot.hasData;
          return signedIn ? Home() : WelcomePage();
        }
        return CircularProgressIndicator();
      },
    );
  }
}

class Provider extends InheritedWidget {
  final AuthService auth;

  Provider({Key key, Widget child, this.auth}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static Provider of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(Provider) as Provider);
}
