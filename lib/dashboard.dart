import 'package:flutter/material.dart';
import 'login_page.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: choices.length,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('TransportApp', textAlign: TextAlign.center ,style: TextStyle(color: Colors.black),),
            backgroundColor: Color(0xffFDCF09),
            bottom: TabBar(
              isScrollable: true,
              tabs: choices.map<Widget>((Choice choice) {
                return Tab(
                  text: (choice.title),
                  icon: Icon(choice.icon, color: Colors.black),
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: choices.map((Choice choice) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: ChoicePage(
                  choice: choice,
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
    
  }
}

class Choice {
  final String title;
  final IconData icon;
  const Choice({this.title, this.icon,});
}

const List<Choice> choices = <Choice>[
  Choice(title: 'profile', icon: Icons.admin_panel_settings_outlined),
  Choice(title: 'orders', icon: Icons.analytics_outlined),
  Choice(title: 'profit', icon: Icons.attach_money_outlined),
  Choice(title: 'new order', icon: Icons.add),
  Choice(title: 'log out', icon: Icons.exit_to_app),
];

class ChoicePage extends StatelessWidget {
  const ChoicePage({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('12'),
          ],
        ),
      ),
    );
  }
}

// class Dashboard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final avatar = Padding(
//       padding: EdgeInsets.all(20),
//         child: Hero(
//         tag: 'logo',
//         child: SizedBox(
//           height: 160,
//           child: Image.asset('assets/logohappy.png'),
//         )
//       ),
//     );
//     final description = Padding(
//       padding: EdgeInsets.all(10),
//       child: RichText(
//         textAlign: TextAlign.justify,
//         text: TextSpan(
//           text: 'Anim ad ex officia nulla anim ipsum ut elit minim id non ad enim aute. Amet enim adipisicing excepteur ea fugiat excepteur enim veniam veniam do quis magna. Cupidatat quis exercitation ut ipsum dolor ipsum. Qui commodo nostrud magna consectetur. Nostrud culpa laboris Lorem aliqua non ut veniam culpa deserunt laborum occaecat officia.',
//           style: TextStyle(color: Colors.black, fontSize: 20)
//         ),
//       ),
//     );
//     final buttonLogout = FlatButton(
//       child: Text('Logout', style: TextStyle(color: Colors.black87, fontSize: 16),),
//       onPressed: () {
//         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
//       }
//     );
//     return SafeArea(
//       child: Scaffold(
//         body: Center(
//           child: ListView(
//             shrinkWrap: true,
//             padding: EdgeInsets.symmetric(horizontal: 20),
//             children: <Widget>[
//               avatar,
//               description,
//               buttonLogout
//             ],
//           ),
//         ),
//       )
//     );
//   }
// }