import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  List listOf;

  Home(this.listOf);


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<MaterialColor>_color = [Colors.indigo, Colors.green, Colors.brown, Colors.purple, Colors.deepOrange];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Complex JSON Parsing"),
        backgroundColor: Colors.indigo,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => debugPrint("Search clicked!"),
          ),
          IconButton(
            icon: Icon(Icons.title),
            onPressed: () => debugPrint("Title clicked!"),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
                itemCount: widget.listOf.length,
                itemBuilder: (BuildContext c, int index) {
                  MaterialColor mColor = _color[index % _color.length];
                  return Card(
                    elevation: 10.0,
                    margin: EdgeInsets.all(10.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            child:
                                Text(widget.listOf[index]["id"].toString()[0]),
                            backgroundColor: mColor,
                            foregroundColor: Colors.white,
                          ),
                        ),
                        Container(
                          width: 200.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                widget.listOf[index]["name"],
                                style: TextStyle(
                                  fontSize: 17.0,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),

                              Text(
                                widget.listOf[index]["username"],
                                style: TextStyle(
                                  fontSize: 17.0,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),

                              Text(
                                widget.listOf[index]["email"],
                                style: TextStyle(
                                  fontSize: 17.0,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),

                              Text(
                                widget.listOf[index]["address"]["street"],
                                style: TextStyle(
                                  fontSize: 17.0,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),

                              Text(
                                widget.listOf[index]["address"]["suite"],
                                style: TextStyle(
                                  fontSize: 17.0,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),

                              Text(
                                widget.listOf[index]["address"]["city"],
                                style: TextStyle(
                                  fontSize: 17.0,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),

                              Text(
                                widget.listOf[index]["address"]["zipcode"],
                                style: TextStyle(
                                  fontSize: 17.0,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),

                              Text(
                                widget.listOf[index]["address"]["geo"]["lat"],
                                style: TextStyle(
                                  fontSize: 17.0,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),

                              Text(
                                widget.listOf[index]["address"]["geo"]["lng"],
                                style: TextStyle(
                                  fontSize: 17.0,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),

                              Text(
                                widget.listOf[index]["phone"],
                                style: TextStyle(
                                  fontSize: 17.0,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),

                              Text(
                                widget.listOf[index]["website"],
                                style: TextStyle(
                                  fontSize: 17.0,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),

                              Text(
                                widget.listOf[index]["company"]["name"],
                                style: TextStyle(
                                  fontSize: 17.0,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),


                              Text(
                                widget.listOf[index]["company"]["catchPhrase"],
                                style: TextStyle(
                                  fontSize: 17.0,
                                ),
                                maxLines: 1,
                              ),
                              SizedBox(
                                height: 4.0,
                              ),

                              Text(
                                widget.listOf[index]["company"]["bs"],
                                style: TextStyle(
                                  fontSize: 17.0,
                                ),
                                maxLines: 1,
                              ),
                              SizedBox(
                                height: 4.0,
                              ),














                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
