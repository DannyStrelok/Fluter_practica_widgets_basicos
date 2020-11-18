import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  static final String pageName = 'avatar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            margin: EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://static.wikia.nocookie.net/simpsons/images/4/4e/MrSparkleTSTO.png/revision/latest?cb=20170613192529"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text('DH'),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage("https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/ada8f17b-3bfa-4110-bb5f-6d5cb4a44ca5/d5hzqg-33580e7d-c074-47f7-890b-e8a58209edb3.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOiIsImlzcyI6InVybjphcHA6Iiwib2JqIjpbW3sicGF0aCI6IlwvZlwvYWRhOGYxN2ItM2JmYS00MTEwLWJiNWYtNmQ1Y2I0YTQ0Y2E1XC9kNWh6cWctMzM1ODBlN2QtYzA3NC00N2Y3LTg5MGItZThhNTgyMDllZGIzLmpwZyJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTpmaWxlLmRvd25sb2FkIl19.TPxhB1NaKqLGsbhPK3WN8dS6W_lEZRwVt6ITOVeKxjc"),
          placeholder: AssetImage("assets/jar-loading.gif"),
        ),
      ),
    );
  }
}
