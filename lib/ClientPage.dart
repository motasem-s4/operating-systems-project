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
  List example = [];
  List sort = [];
  List transpose = [];
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
              example.clear();
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Texts(
              'Press generate button to generate a random 10 X 10 Matrix',
              textAlign: TextAlign.start,
              style: TextStyles.HEADLINE5,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          if (server.array.isNotEmpty)
            ...server.array.map((e) {
              e.forEach((element) {
               // print(element);
                setState(() {
                  example.add(element);
                });
              });
              return Container();
            }).toList(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 10; i++)
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                  child: Container(
                    width: 30,
                      height: 35,
                      color: Theme.of(context).primaryColorDark,
                      child: Center(child: Texts(example[i].toString(),color: Colors.white,))
                  ),
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 10; i < 20; i++)
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                  child: Container(
                      width: 30,
                      height: 35,
                      color: Theme.of(context).primaryColorDark,
                      child: Center(child: Texts(example[i].toString(),color: Colors.white,))
                  ),
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 20; i < 30; i++)
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                  child: Container(
                      width: 30,
                      height: 35,
                      color: Theme.of(context).primaryColorDark,
                      child: Center(child: Texts(example[i].toString(),color: Colors.white,))
                  ),
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 30; i < 40; i++)
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                  child: Container(
                      width: 30,
                      height: 35,
                      color: Theme.of(context).primaryColorDark,
                      child: Center(child: Texts(example[i].toString(),color: Colors.white,))
                  ),
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 40; i < 50; i++)
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                  child: Container(
                      width: 30,
                      height: 35,
                      color: Theme.of(context).primaryColorDark,
                      child: Center(child: Texts(example[i].toString(),color: Colors.white,))
                  ),
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 50; i < 60; i++)
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                  child: Container(
                      width: 30,
                      height: 35,
                      color: Theme.of(context).primaryColorDark,
                      child: Center(child: Texts(example[i].toString(),color: Colors.white,))
                  ),
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 60; i < 70; i++)
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                  child: Container(
                      width: 30,
                      height: 35,
                      color: Theme.of(context).primaryColorDark,
                      child: Center(child: Texts(example[i].toString(),color: Colors.white,))
                  ),
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 70; i < 80; i++)
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                  child: Container(
                      width: 30,
                      height: 35,
                      color: Theme.of(context).primaryColorDark,
                      child: Center(child: Texts(example[i].toString(),color: Colors.white,))
                  ),
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 80; i < 90; i++)
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                  child: Container(
                      width: 30,
                      height: 35,
                      color: Theme.of(context).primaryColorDark,
                      child: Center(child: Texts(example[i].toString(),color: Colors.white,))
                  ),
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 90; i < 100; i++)
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                  child: Container(
                      width: 30,
                      height: 35,
                      color: Theme.of(context).primaryColorDark,
                      child: Center(child: Texts(example[i].toString(),color: Colors.white,))
                  ),
                ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PrimaryButton(
                title: 'Sort',
                elevation: false,
                color: isSorted ? Theme.of(context).primaryColorDark.withOpacity(.7) : Theme.of(context).primaryColor,
                onTap: () {
                  setState(() {
                    isSorted = true;
                    isTransposed = false;
                    isRepeated = false;
                    isMax = false;
                    isSum = false;
                    sort.clear();
                    server.sortArray(server.array).forEach((element) {
                      element.forEach((e) {
                        sort.add(e);
                      });
                    });
                  });
                },
              ),
              SizedBox(
                width: 5,
              ),
              PrimaryButton(
                title: 'Transpose',
                elevation: false,
                color:
                    isTransposed ? Theme.of(context).primaryColorDark.withOpacity(.7) : Theme.of(context).primaryColor,
                onTap: () {
                  setState(() {
                    isSorted = false;
                    isTransposed = true;
                    isRepeated = false;
                    isMax = false;
                    isSum = false;
                    transpose.clear();
                    server.transposeArray(server.array).forEach((element) {
                      element.forEach((e) {
                        transpose.add(e);
                      });
                    });
                  });
                },
              ),
              SizedBox(
                width: 5,
              ),
              PrimaryButton(
                title: 'Max Number',
                elevation: false,
                color: isMax ? Theme.of(context).primaryColorDark.withOpacity(.7) : Theme.of(context).primaryColor,
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
                color:
                    isRepeated ? Theme.of(context).primaryColorDark.withOpacity(.7) : Theme.of(context).primaryColor,
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
                title: 'Matrix Summation',
                elevation: false,
                color: isSum ? Theme.of(context).primaryColorDark.withOpacity(.7) : Theme.of(context).primaryColor,
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
          // if (isSorted)
          //   if (server.sortArray(server.array).isNotEmpty)
          //     ...server.sortArray(server.array).map((e) {
          //       sort.clear();
          //       e.forEach((e){
          //         print(e);
          //         setState(() {
          //           sort.add(e);
          //         });
          //       });
          //       return Texts(
          //         e.toString(),
          //         textAlign: TextAlign.center,
          //         style: TextStyles.BUTTON,
          //       );
          //     }).toList(),
          if (isSorted)
            if(sort.isNotEmpty)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 10; i++)
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                    child: Container(
                        width: 30,
                        height: 35,
                        color: Theme.of(context).primaryColorDark,
                        child: Center(child: Texts(sort[i].toString(),color: Colors.white,))
                    ),
                  ),
              ],
            ),
          if (isSorted)
            if(sort.isNotEmpty)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 10; i < 20; i++)
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                  child: Container(
                      width: 30,
                      height: 35,
                      color: Theme.of(context).primaryColorDark,
                      child: Center(child: Texts(sort[i].toString(),color: Colors.white,))
                  ),
                ),
            ],
          ),
          if (isSorted)
            if(sort.isNotEmpty)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 20; i < 30; i++)
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                  child: Container(
                      width: 30,
                      height: 35,
                      color: Theme.of(context).primaryColorDark,
                      child: Center(child: Texts(sort[i].toString(),color: Colors.white,))
                  ),
                ),
            ],
          ),
          if (isSorted)
            if(sort.isNotEmpty)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 30; i < 40; i++)
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                  child: Container(
                      width: 30,
                      height: 35,
                      color: Theme.of(context).primaryColorDark,
                      child: Center(child: Texts(sort[i].toString(),color: Colors.white,))
                  ),
                ),
            ],
          ),
          if (isSorted)
            if(sort.isNotEmpty)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 40; i < 50; i++)
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                  child: Container(
                      width: 30,
                      height: 35,
                      color: Theme.of(context).primaryColorDark,
                      child: Center(child: Texts(sort[i].toString(),color: Colors.white,))
                  ),
                ),
            ],
          ),
          if (isSorted)
            if(sort.isNotEmpty)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 50; i < 60; i++)
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                  child: Container(
                      width: 30,
                      height: 35,
                      color: Theme.of(context).primaryColorDark,
                      child: Center(child: Texts(sort[i].toString(),color: Colors.white,))
                  ),
                ),
            ],
          ),
          if (isSorted)
            if(sort.isNotEmpty)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 60; i < 70; i++)
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                  child: Container(
                      width: 30,
                      height: 35,
                      color: Theme.of(context).primaryColorDark,
                      child: Center(child: Texts(sort[i].toString(),color: Colors.white,))
                  ),
                ),
            ],
          ),
          if (isSorted)
            if(sort.isNotEmpty)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 70; i < 80; i++)
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                  child: Container(
                      width: 30,
                      height: 35,
                      color: Theme.of(context).primaryColorDark,
                      child: Center(child: Texts(sort[i].toString(),color: Colors.white,))
                  ),
                ),
            ],
          ),
          if (isSorted)
            if(sort.isNotEmpty)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 80; i < 90; i++)
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                  child: Container(
                      width: 30,
                      height: 35,
                      color: Theme.of(context).primaryColorDark,
                      child: Center(child: Texts(sort[i].toString(),color: Colors.white,))
                  ),
                ),
            ],
          ),
          if (isSorted)
            if(sort.isNotEmpty)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 90; i < 100; i++)
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                  child: Container(
                      width: 30,
                      height: 35,
                      color: Theme.of(context).primaryColorDark,
                      child: Center(child: Texts(sort[i].toString(),color: Colors.white,))
                  ),
                ),
            ],
          ),
          // if (isTransposed)
          //   if (server.transposeArray(server.array).isNotEmpty)
          //     ...server.transposeArray(server.array).map((e) {
          //       return Texts(
          //         e.toString(),
          //         textAlign: TextAlign.center,
          //         style: TextStyles.BUTTON,
          //       );
          //     }).toList(),
          if (isTransposed)
            if(transpose.isNotEmpty)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 10; i++)
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                      child: Container(
                          width: 30,
                          height: 35,
                          color: Theme.of(context).primaryColorDark,
                          child: Center(child: Texts(transpose[i].toString(),color: Colors.white,))
                      ),
                    ),
                ],
              ),
          if (isTransposed)
            if(transpose.isNotEmpty)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 10; i < 20; i++)
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                      child: Container(
                          width: 30,
                          height: 35,
                          color: Theme.of(context).primaryColorDark,
                          child: Center(child: Texts(transpose[i].toString(),color: Colors.white,))
                      ),
                    ),
                ],
              ),
          if (isTransposed)
            if(transpose.isNotEmpty)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 20; i < 30; i++)
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                      child: Container(
                          width: 30,
                          height: 35,
                          color: Theme.of(context).primaryColorDark,
                          child: Center(child: Texts(transpose[i].toString(),color: Colors.white,))
                      ),
                    ),
                ],
              ),
          if (isTransposed)
            if(transpose.isNotEmpty)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 30; i < 40; i++)
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                      child: Container(
                          width: 30,
                          height: 35,
                          color: Theme.of(context).primaryColorDark,
                          child: Center(child: Texts(transpose[i].toString(),color: Colors.white,))
                      ),
                    ),
                ],
              ),
          if (isTransposed)
            if(transpose.isNotEmpty)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 40; i < 50; i++)
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                      child: Container(
                          width: 30,
                          height: 35,
                          color: Theme.of(context).primaryColorDark,
                          child: Center(child: Texts(transpose[i].toString(),color: Colors.white,))
                      ),
                    ),
                ],
              ),
          if (isTransposed)
            if(transpose.isNotEmpty)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 50; i < 60; i++)
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                      child: Container(
                          width: 30,
                          height: 35,
                          color: Theme.of(context).primaryColorDark,
                          child: Center(child: Texts(transpose[i].toString(),color: Colors.white,))
                      ),
                    ),
                ],
              ),
          if (isTransposed)
            if(transpose.isNotEmpty)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 60; i < 70; i++)
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                      child: Container(
                          width: 30,
                          height: 35,
                          color: Theme.of(context).primaryColorDark,
                          child: Center(child: Texts(transpose[i].toString(),color: Colors.white,))
                      ),
                    ),
                ],
              ),
          if (isTransposed)
            if(transpose.isNotEmpty)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 70; i < 80; i++)
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                      child: Container(
                          width: 30,
                          height: 35,
                          color: Theme.of(context).primaryColorDark,
                          child: Center(child: Texts(transpose[i].toString(),color: Colors.white,))
                      ),
                    ),
                ],
              ),
          if (isTransposed)
            if(transpose.isNotEmpty)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 80; i < 90; i++)
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                      child: Container(
                          width: 30,
                          height: 35,
                          color: Theme.of(context).primaryColorDark,
                          child: Center(child: Texts(transpose[i].toString(),color: Colors.white,))
                      ),
                    ),
                ],
              ),
          if (isTransposed)
            if(transpose.isNotEmpty)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 90; i < 100; i++)
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 3,vertical: 1),
                      child: Container(
                          width: 30,
                          height: 35,
                          color: Theme.of(context).primaryColorDark,
                          child: Center(child: Texts(transpose[i].toString(),color: Colors.white,))
                      ),
                    ),
                ],
              ),
          if (isRepeated)
            if (server.repeatedNumbers(server.array).isNotEmpty)
              ...server.repeatedNumbers(server.array).entries.map((e) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Texts(
                      'The number   (' + e.key.toString() + ')   is repeated ',
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
                return Padding(
                  padding:  EdgeInsets.symmetric(vertical: 3,horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Texts(
                        'The max number in row    '+e.key.toString()+'   is',
                        style: TextStyles.BUTTON,
                      ),
                      Texts(
                        e.value.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyles.BUTTON,
                      ),
                    ],
                  ),
                );
              }).toList(),
          if (isSum)
            Texts('The Matrix sum equal = ' +
                server.arraySummation(server.array).toString())
        ]),
      ),
    );
  }
}
