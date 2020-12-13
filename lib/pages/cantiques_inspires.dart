 
import "package:flutter/material.dart";
import 'package:only_believe/pages/hymn_screen1.dart';
import 'package:only_believe/pages/hymns/models.dart';

// List of Hymn to be accessed into  nextScreen
class HymnList {
  final String title;
  final String hymn;

  HymnList(this.title, this.hymn);
}


class CantiqueInspires extends StatefulWidget {
  const CantiqueInspires({Key key,}) : super(key: key);

  @override
  _CantiqueInspires createState() => _CantiqueInspires();

}

class _CantiqueInspires extends State<CantiqueInspires> {
  final DbAllHymns dbAllHymns = DbAllHymns();
  List<AllHymns>  hymnlist;

  @override
  Widget build(BuildContext context){
    return Scaffold (
      appBar: AppBar(
        title: Text("Cantiques Inspirés"),
        backgroundColor: Colors.teal,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: (){
                showSearch(context: context, 
                delegate: DataSearch());
              },
            )
          )
        ],
      ),

      body: Column(
        children: <Widget>[
          Expanded(
                child: Container(
                   child: FutureBuilder(
                     future: dbAllHymns.getCantiqueInpiresList(),
                     builder: (context, snapshot){
                       if(snapshot.hasData){
                         // This will return all database
                         hymnlist = snapshot.data;
                         return ListView.builder(
                           shrinkWrap: true,
                           itemCount: hymnlist.length, //If we want we can check
                           itemBuilder: (BuildContext context, int index){
                             AllHymns hymn = hymnlist[index];
                              return Container(
                                 child: Center(
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children: <Widget>[
                                          Card(
                                            child: new ListTile(
                                              title: new Text(hymn.title),
                                              onTap: (){
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) => Hymn(),
                                                    settings: RouteSettings(
                                                      arguments: HymnList(hymn.title, hymn.hymn)
                                                    ) 
                                                  )
                                                );
                                              },
                                            ),
                                          color: Colors.white,
                                          elevation: 2.0,
                                        )
                                      ]
                                    )
                                 )
                              );
                           },
                         );
                       }
                       return Center(
                         child: new CircularProgressIndicator(),
                       );
                     },
                   )
                )
              )
           ]
         )
      );
   }
}

class DataSearch extends SearchDelegate<AllHymns> {
  // We access our List or Database by Calling this AllHymns
  final DbAllHymns dbAllHymns = DbAllHymns();
  List<AllHymns>  hymnlist;

  @override
  String get searchFieldLabel => 'Search Hymn...';

  @override
  ThemeData appBarTheme(BuildContext context){
    assert(context != null);
    final ThemeData theme = Theme.of(context);
    assert(theme != null);
    return theme.copyWith(
      primaryColor: Colors.teal,
      primaryTextTheme: theme.textTheme,

     inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          // ignore: deprecated_member_use
          color: theme.primaryTextTheme.headline.color,
          fontWeight: FontWeight.normal ),
      ),

      textTheme: theme.textTheme.copyWith(
        // ignore: deprecated_member_use
        headline: theme.textTheme.headline.copyWith(color: Colors.white),
        title: TextStyle(
          color: Colors.white,
          fontSize: 18,
       ) 
      )
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    //actions from app bar
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        }
      ,)
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Leading icon on the left of the app bar
    return Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: IconButton(
        icon: AnimatedIcon(
          icon:  AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: (){
          close(context, null);
        },
      )
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // return Center(child: Text(query, style: TextStyle(fontSize: 20)),);
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Show when someone searches for something
     return FutureBuilder(
      future: dbAllHymns.getCantiqueInpiresList(),
      builder: (context, AsyncSnapshot  snapshot){
          if(!snapshot.hasData){
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        
          final  hymnlists = query.isEmpty? snapshot.data : snapshot.data.where((string) => 
                  string.title.toString().toLowerCase().contains(query)).toList();

          return hymnlists.isEmpty? Center(
                  child: Column(children: <Widget>[
                    Text("No Hymns Found!", style: TextStyle(fontSize: 20),),
                  ],)
           ) : ListView.builder(
            shrinkWrap: true,
            itemCount: hymnlists.length,
            itemBuilder: (BuildContext context, int index){
               AllHymns hymn = hymnlists[index];
                return Card(
                  child:  new ListTile(
                    title: new RichText(
                      text: TextSpan(
                        text: hymn.title.substring(0, query.length),
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                        children: [
                          TextSpan(
                            text: hymn.title.substring(query.length),
                            style: TextStyle(color: Colors.grey),
                          )
                        ]
                      ),
                    ),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Hymn(),
                          settings: RouteSettings(
                            arguments: HymnList(hymn.title, hymn.hymn)
                          ) 
                        )
                      );
                    },
                  )
                );
             }
          );
      },
    );
  }
}
