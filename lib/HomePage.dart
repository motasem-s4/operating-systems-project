import 'package:flutter/material.dart';
import 'package:os_project/ClientPage.dart';
import 'package:os_project/Server.dart';
import 'package:os_project/StudentCard.dart';
import 'package:os_project/primaryButton.dart';
import 'package:socket_io/socket_io.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ServerFun serverFun = ServerFun();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text('OS Project'),
        centerTitle: true,
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(20),
        child: PrimaryButton(
          title: 'Connect',
          loading: serverFun.isLoading,
          elevation: false,
          onTap: () {
            serverFun.connectServer();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ClientPage(),
              ),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            StudentCard(
              year: 2017,
              name: "Qusai Eilouti",
              field: 'Software Eng',
              image:
                  'https://scontent.famm3-3.fna.fbcdn.net/v/t1.6435-9/180278726_3884756504957057_8767626817308430116_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeHKhqVbtdPKA_rCvhh5bEyv_Ie9caECMYn8h71xoQIxiZBRVH4chsBLZxCZeT0phrlgeWgi5eHsvP-_Fc2PAwEo&_nc_ohc=JlnGNnbuNpsAX-1QYA1&_nc_ht=scontent.famm3-3.fna&oh=1f4185803fdc5a8be7f5320159f45331&oe=60D978D4',
            ),
            StudentCard(
              year: 2017,
              name: "Motasem Asfoor",
              field: 'Computer Science',
              image:
                  'https://scontent.famm3-3.fna.fbcdn.net/v/t1.6435-9/161172421_3897630740301342_3331501600237982485_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeHHRrIYmkCuAZumQw8Xs1u3tfMbmIrv_aa18xuYiu_9pmv1oKDK1MbP9heI0hRimyLb4eSx6djXdywemXNAE2m8&_nc_ohc=ElMB51D7RH4AX8H0erB&_nc_ht=scontent.famm3-3.fna&oh=1fb315e507f6c5ea808975677c138acd&oe=60D6D7E1',
            ),
            StudentCard(
              year: 2017,
              name: "Farah Hmedan",
              field: 'Computer Science',
              image: 'https://delmarbehavioralhealth.com/wp-content/uploads/2017/09/Female-Avatar.png',
            ),
            StudentCard(
              name: "Ahmad Gazi Alzubi",
              field: ' Ph.D. in Computer Science',
              image: 'https://services.just.edu.jo/JUSTHandlers/GetPortfolioImage.ashx?profile_id=11481&email=agalzubi',
            ),
          ],
        ),
      ),
    );
  }
}
