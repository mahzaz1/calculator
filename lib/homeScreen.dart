import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import 'common.dart';
import 'components.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Calculator'),
      ),
      backgroundColor: CustomColor.background,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [

            Align(
              alignment: Alignment.bottomRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(userInput.toString(),style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
                  Text(answer.toString(),style: TextStyle(fontSize: 35,color: CustomColor.primary,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: GridView.count(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 4,
                  children: [
                    Button(text: 'AC', color: CustomColor.secondary,
                      onPress: () {
                         userInput = '';
                         answer = '';
                        setState(() {

                        });

                      },
                    ),
                    Button(text: '+/-', color: CustomColor.secondary,
                      onPress: () {
                        userInput += ' +/- ';

                        setState(() {

                      });

                      },),
                    Button(text: '%', color: CustomColor.secondary,
                      onPress: () {
                        userInput += ' % ';

                        setState(() {

                      });
                      },),
                    Button(text: '/',color: CustomColor.primary,
                      onPress: () {
                        userInput += ' / ';

                        setState(() {

                      });
                      },),
                    Button(text: '7',
                      onPress: () {
                      userInput += '7';
                      setState(() {

                      });
                      },),
                    Button(text: '8',
                      onPress: () {
                        userInput += '8';
                        setState(() {

                        });
                      },),
                    Button(text: '0',
                      onPress: () {
                        userInput += '0';

                        setState(() {

                      });

                      },),
                    Button(text: 'x',color: CustomColor.primary,
                      onPress: () {
                        userInput += ' x ';

                        setState(() {

                      });

                      },),
                    Button(text: '4',
                      onPress: () {
                        userInput += '4';

                        setState(() {

                      });

                      },),
                    Button(text: '5',
                      onPress: () {
                        userInput += '5';

                        setState(() {

                      });

                      },),
                    Button(text: '6',
                      onPress: () {
                        userInput += '6';

                        setState(() {

                      });

                      },),
                    Button(text: '-',color: CustomColor.primary,
                      onPress: () {
                        userInput += ' - ';

                        setState(() {

                      });

                      },),
                    Button(text: '1',
                      onPress: () {
                        userInput += '1';

                        setState(() {

                      });

                      },),
                    Button(text: '2',
                      onPress: () {
                      userInput += '2';
                      setState(() {

                      });

                      },),
                    Button(text: '3',
                      onPress: () {
                        userInput += '3';

                        setState(() {

                      });

                      },),
                    Button(text: '+',color: CustomColor.primary,
                      onPress: () {
                        userInput += ' + ';

                        setState(() {

                      });

                    },),
                    Button(text: '0',
                      onPress: () {
                        userInput += '0';

                        setState(() {

                      });

                      },),
                    Button(text: '.',
                      onPress: () {
                        userInput += '.';

                        setState(() {

                      });

                      },),
                    Button(text: 'DEL',
                      onPress: () {
                        userInput = userInput.substring(0 , userInput.length-1);
                        setState(() {

                      });

                      },),
                    Button(text: '=', color:CustomColor.secondary,
                      onPress: () {
                        equalPress();
                        setState(() {

                      });

                      },),
                  ],

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
void equalPress(){
  Parser p = Parser();
  Expression exp = p.parse(userInput);

  ContextModel contextModel = ContextModel();

  double evaluate = exp.evaluate(EvaluationType.REAL, contextModel);

  answer = evaluate.toString();
}
}

