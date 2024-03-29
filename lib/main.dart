import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:pbf_app/view_Model/auth_viewModel.dart';
import 'package:pbf_app/services/constant.dart';
import 'package:pbf_app/utils/routes.dart';
import 'package:pbf_app/utils/routes_name.dart';
import 'package:pbf_app/view_Model/token_viewModel.dart';
import 'package:pbf_app/view_Model/user_viewModel.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  helper.prefs = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => AuthViewModel()),
          ChangeNotifierProvider(create: (_) => TokenViewModel()),
          ChangeNotifierProvider(create: (_) => UserViewModel()),
        ],
        child: ScreenUtilInit(
          designSize: Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
                builder: BotToastInit(),
                navigatorObservers: [BotToastNavigatorObserver()],
                title: 'Flutter Demo',
                theme: ThemeData(
                  brightness: Brightness.light,
                ),
                darkTheme: ThemeData(
                  brightness: Brightness.dark,
                ),
                themeMode: ThemeMode.dark,
                initialRoute: RoutesName.Home,
                onGenerateRoute: Routes.generateRoute);
          },
        ));
  }
}
