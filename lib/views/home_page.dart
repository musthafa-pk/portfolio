import 'package:flutter/material.dart';
import 'package:myfolio/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxHeight: maxWidth),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                  child: Drawer(
                    child: Column(
                      children: [
                        AspectRatio(
                          aspectRatio: 1.23,
                          child: Container(
                            color: Color(0xFF242430),
                          child: Column(
                            children: [
                              Spacer(flex: 2,),
                              CircleAvatar(
                                radius: 50,
                                  backgroundImage: AssetImage('/images/me.jpg'),
                              ),
                              Text('MOHAMED MUSTHAFA PK',style: Theme.of(context).textTheme.subtitle2,),
                              Text('Flutter Developer',textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w200,
                                height: 1.5,
                              ),)
                            ],
                          ),),)
                      ],
                    ),
                  )
              ),
              Expanded(
                flex: 7,
                  child: Container(
                    color: Colors.blue,
                  )
              ),
            ],
          ),
        ),
      )
    );
  }
}
