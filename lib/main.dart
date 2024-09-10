import 'package:amina_flutter/CarUI/Carpg2.dart';
import 'package:amina_flutter/CofeeShopWidget/CS_3.dart';
import 'package:amina_flutter/CofeeShopWidget/Coffee_4.dart';
import 'package:amina_flutter/CofeeShopWidget/FifthPgCoffee.dart';
import 'package:amina_flutter/CofeeShopWidget/FirstPgCofee.dart';
import 'package:amina_flutter/CofeeShopWidget/SecondPgCofee.dart';
import 'package:amina_flutter/CofeeShopWidget/ThirdPgCofee.dart';
import 'package:amina_flutter/navigation/BlogWidget.dart';
import 'package:amina_flutter/navigation/BlogWidget2.dart';
import 'package:amina_flutter/navigation/BottomNavigationBar.dart';
import 'package:amina_flutter/navigation/ExpandW.dart';
import 'package:amina_flutter/navigation/Google.dart';
import 'package:amina_flutter/navigation/LoginPage21.dart';
import 'package:amina_flutter/navigation/Loginpage.dart';
import 'package:amina_flutter/navigation/SignUp.dart';
import 'package:amina_flutter/navigation/ToggleWidget.dart';
import 'package:amina_flutter/watsapp/Chat.dart';
import 'package:amina_flutter/widgets/AlertdialogBox.dart';
import 'package:amina_flutter/widgets/ChessBoard.dart';
import 'package:amina_flutter/widgets/Drawer_Widget.dart';
import 'package:amina_flutter/widgets/ElavateButton.dart';
import 'package:amina_flutter/widgets/IconWidget.dart';
import 'package:amina_flutter/widgets/Image_ui.dart';
import 'package:amina_flutter/widgets/InstaLogin.dart';
import 'package:amina_flutter/widgets/Row_column.dart';
import 'package:amina_flutter/widgets/SnackBarWidget.dart';
import 'package:amina_flutter/widgets/Task2.dart';
import 'package:amina_flutter/widgets/Text2Widget.dart';
import 'package:amina_flutter/widgets/TextButton.dart';
import 'package:amina_flutter/widgets/TextWidget.dart';
import 'package:amina_flutter/widgets/Trip2.dart';
import 'package:amina_flutter/widgets/Trips.dart';
import 'package:amina_flutter/widgets/UrlLaugher.dart';
import 'package:amina_flutter/widgets/a_container.dart';
import 'package:amina_flutter/widgets/login_ui.dart';
import 'package:amina_flutter/widgets/mycontainer.dart';
import 'package:amina_flutter/Sharedprefrence/nwpage1.dart';
import 'package:amina_flutter/widgets/task.dart';
import 'package:amina_flutter/widgets/trip3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'AdminPage/Addpgadmin.dart';
import 'AdminPage/Adminpg2&3.dart';
import 'AdminPage/Adminpg8.dart';
import 'AdminPage/AdmnPaymentpg.dart';
import 'AdminPage/NavigtnAdmin.dart';
import 'AdminPage/adminLogin.dart';
import 'AdminPage/adminpg5Notifctn.dart';
import 'AdminPage/adminpg6.dart';
import 'AdminPage/adminpg7.dart';
import 'Animation/lotti.dart';
import 'CarUI/CarPg1.dart';
import 'CarUI/Carpg3.dart';
import 'CarUI/Carpg5.dart';
import 'Finearts_Miniprjct/Admin_Home.dart';
import 'Finearts_Miniprjct/Admin_Login.dart';
import 'Finearts_Miniprjct/Admin_Studentdetail.dart';
import 'Finearts_Miniprjct/Admin_splash.dart';
import 'Finearts_Miniprjct/FineNavigation.dart';
import 'MinoFood/MinoFdPg1.dart';
import 'MinoFood/MinoFdpg2.dart';
import 'MinoFood/Navigation.dart';
import 'Pickers/DatePicker.dart';
import 'Pickers/ImagePicker.dart';
import 'Pickers/TimePicker.dart';
import 'PopupMenuExample.dart';
import 'Sharedprefrence/BioData_details.dart';
import 'Sharedprefrence/BioData_sp.dart';
import 'Sharedprefrence/BioData_vlidField.dart';
import 'navigation/Checckboxeg.dart';
import 'navigation/DropDownButtoneg.dart';
import 'navigation/First_page.dart';
import 'navigation/FloatingWidget.dart';
import 'navigation/ListViewWidgtbuilder.dart';
import 'navigation/ListView_Widget.dart';
import 'navigation/ListviweSeprator.dart';
import 'navigation/Myfirstpage.dart';
import 'navigation/Radiobutton.dart';
import 'navigation/Second_page.dart';
import 'navigation/TabBarWidget.dart';
import 'navigation/cardviewbuilderwidget.dart';
import 'navigation/stack.dart';
import 'navigation/watsapp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) =>
       MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: PopupMenuExample()),
      designSize:Size(390,844),
    );
  }
}
