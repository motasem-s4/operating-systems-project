import 'package:flutter/material.dart';
import 'package:os_project/Server.dart';
import 'package:os_project/Texts.dart';
import 'package:os_project/primaryButton.dart';

class ClientPage extends StatefulWidget {
  const ClientPage({Key key}) : super(key: key);

  @override
  _ClientPageState createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {
  Server server = Server();
  bool isSorted = false;
  bool isTransposed = false;
  bool isRepeated = false;
  bool isMax = false;
  bool isSum = false;
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
          title: 'Generate',
          elevation: false,
          onTap: () {
            setState(() {
              server.generateArray();
              print(server.array);
              isSorted = false;
              isTransposed = false;
              isRepeated = false;
              isMax = false;
              isSum = false;
            });
          },
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Container(
            width: 220,
            child: Center(
              child: Texts(
                'Press generate button to generate'
                ' a random 10 X 10 Matrix',
                //textAlign: TextAlign.center,
                style: TextStyles.BUTTON,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          if (server.array.isNotEmpty)
            ...server.array.map((e) {
              return Texts(
                e.toString(),
                textAlign: TextAlign.center,
                style: TextStyles.BUTTON,
              );
            }).toList(),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PrimaryButton(
                title: 'Sort',
                elevation: false,
                color: isSorted ? Colors.brown.withOpacity(0.5) : Colors.brown,
                onTap: () {
                  setState(() {
                    isSorted = true;
                    isTransposed = false;
                    isRepeated = false;
                    isMax = false;
                    isSum = false;
                    server.sortArray(server.array);
                  });
                },
              ),
              SizedBox(
                width: 5,
              ),
              PrimaryButton(
                title: 'Transpose',
                elevation: false,
                color: isTransposed ? Colors.brown.withOpacity(0.5) : Colors.brown,
                onTap: () {
                  setState(() {
                    isSorted = false;
                    isTransposed = true;
                    isRepeated = false;
                    isMax = false;
                    isSum = false;
                  });
                },
              ),
              SizedBox(
                width: 5,
              ),
              PrimaryButton(
                title: 'Max Number',
                elevation: false,
                color: isMax ? Colors.brown.withOpacity(0.5) : Colors.brown,
                onTap: () {
                  setState(() {
                    isSorted = false;
                    isTransposed = false;
                    isRepeated = false;
                    isMax = true;
                    isSum = false;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PrimaryButton(
                title: 'Repeated Numbers',
                elevation: false,
                color: isRepeated ? Colors.brown.withOpacity(0.5) : Colors.brown,
                onTap: () {
                  setState(() {
                    isSorted = false;
                    isTransposed = false;
                    isRepeated = true;
                    isMax = false;
                    isSum = false;
                    server.repeatedNumbers(server.array);
                  });
                },
              ),
              SizedBox(
                width: 5,
              ),
              PrimaryButton(
                title: 'Array Summation',
                elevation: false,
                color: isSum ? Colors.brown.withOpacity(0.5) : Colors.brown,
                onTap: () {
                  setState(() {
                    isSorted = false;
                    isTransposed = false;
                    isRepeated = false;
                    isMax = false;
                    isSum = true;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          if (isSorted)
            if (server.sortArray(server.array).isNotEmpty)
              ...server.sortArray(server.array).map((e) {
                return Texts(
                  e.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyles.BUTTON,
                );
              }).toList(),
          if (isTransposed)
            if (server.transposeArray(server.array).isNotEmpty)
              ...server.transposeArray(server.array).map((e) {
                return Texts(
                  e.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyles.BUTTON,
                );
              }).toList(),
          if (isRepeated)
            if (server.repeatedNumbers(server.array).isNotEmpty)
              ...server.repeatedNumbers(server.array).entries.map((e) {
                return Row(
                  children: [
                    Texts(
                      'The number   ' + e.key.toString() + '   is repeated ',
                      textAlign: TextAlign.center,
                      style: TextStyles.BUTTON,
                    ),
                    Texts(
                      e.value.toString() + "     ",
                      textAlign: TextAlign.center,
                      style: TextStyles.BUTTON,
                    ),
                  ],
                );
              }).toList(),
          if (isMax)
            if (server.maxNumber(server.array).isNotEmpty)
              ...server.maxNumber(server.array).entries.map((e) {
                return Row(
                  children: [
                    Texts(
                      'The max number in row   ' + e.key.toString() + '   is  ',
                      textAlign: TextAlign.center,
                      style: TextStyles.BUTTON,
                    ),
                    Texts(
                      e.value.toString() + "     ",
                      textAlign: TextAlign.center,
                      style: TextStyles.BUTTON,
                    ),
                  ],
                );
              }).toList(),
          if (isSum) Texts('The Array sum equal = ' + server.arraySummation(server.array).toString())
        ]),
      ),
    );
  }
}
