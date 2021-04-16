import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueGrey[500],
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  Contact(
                    name:'name whatever',
                    mail:'doesnt-matter@haha.com',
                    phone:'01613543543',
                    tag:'not boss',
                    url:'https://i.pinimg.com/originals/2c/d3/81/2cd381861fe37b4e41c2bcd7f16e64bf.png',

                  ),
                  Contact(
                    name:'whatever name',
                    mail:'haha@doesnt-matter.com',
                    phone:'01613543543',
                    tag:'boss',
                    url:'https://ih1.redbubble.net/image.1783757058.6683/tst,small,507x507-pad,600x600,f8f8f8.jpg'
                  ),
                  Contact(
                    name:'what name ever',
                    mail:'doesnt-haha@-matter.com',
                    phone:'01613543543',
                    tag:'maybe',
                    url:'https://www.citypng.com/public/uploads/preview/-41602992647iyk6rmkfrc.png'
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  String name,mail,phone,tag,url;

  /*const Contact({
    Key key,
  }) : super(key: key);*/
  Contact({this.name,this.mail,this.phone,this.tag,this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.0,
      height: 150.0,
      //margin: EdgeInsets.only(top: 50.0),
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.all(Radius.circular(12.0))
      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 40.0,
                backgroundImage: NetworkImage(url),
              ) ,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                     name,
                     style: TextStyle(
                       fontSize: 17.0,
                       fontWeight: FontWeight.bold,
                     ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.mail, color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Text(
                            mail,
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.phone, color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Text(
                            phone,
                            style: TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                            ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:16.0),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.heart_fill, color: Colors.red,
                        ),
                        Icon(
                          CupertinoIcons.heart_fill, color: Colors.red,
                        ),
                        Icon(
                          CupertinoIcons.heart_fill, color: Colors.red,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:15.0),
                          child: Icon(
                            CupertinoIcons.tag, color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:5.0),
                          child: Column(
                            children: [
                              Text(
                                tag,
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              if(tag=='maybe')
                                Padding(
                                  padding: const EdgeInsets.only(right:10.0),
                                  child: Text(
                                    'boss',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        if(tag=='not boss')Padding(
                          padding: const EdgeInsets.only(
                              left:20.0,
                          ),
                          child: Icon(
                            CupertinoIcons.delete, color: Colors.white,
                          ),
                        ),
                        if(tag=='boss')Padding(
                        padding: const EdgeInsets.only(
                        left:40.0,
                        ),
                        child: Icon(
                        CupertinoIcons.delete, color: Colors.white,
                        ),
                        ),
                        if(tag=='maybe')Padding(
                          padding: const EdgeInsets.only(
                            left:32.0,
                          ),
                          child: Icon(
                            CupertinoIcons.delete, color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
  }
}
