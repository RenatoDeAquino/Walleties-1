import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:walleties/core/view_models/home_view_model.dart';
import 'package:walleties/ui/screens/home.dart';
// import 'package:walleties/ui/values/routes.dart' as Routes;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          ChangeNotifierProvider<HomeViewModel>(
            builder: (context) => HomeViewModel(),
          ),
        ],
        child: MaterialApp(
          title: 'Walleties App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primaryColor: Color(0xff8EE269)),
          home: HomeScreen(),
        ),
      );
}
