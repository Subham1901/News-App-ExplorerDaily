import 'package:flutter/material.dart';
import '../catagories.dart';
import 'entertainview.dart';
import 'entertainservices.dart';
import 'entertainarticle.dart';

class entertain extends StatefulWidget {
  @override
  _entertainState createState() => _entertainState();
}

class _entertainState extends State<entertain> {
  List<Article> articles = new List<Article>();
  bool _loading = true;
  void initState() {
    super.initState();
    getNews();
  }

  getNews() async {
    News newsClass = News();
    await newsClass.getNews();
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: menubar(),
      appBar: AppBar(
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text(
            "Explorer",
            style: TextStyle(color: Colors.black, fontSize: 25.0),
          ),
          Text(
            "Daily",
            style: TextStyle(color: Colors.red, fontSize: 25.0),
          ),
        ]),
        actions: <Widget>[
          Opacity(
            opacity: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Icon(Icons.save),
            ),
          )
        ],
      ),
      body: _loading
          ? Center(
              child: Container(
                child: CircularProgressIndicator(),
              ),
            )
          : Container(
              padding: EdgeInsets.all(14.0),
              child: ListView.builder(
                itemCount: articles.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return BlogTile(
                      imageUrl: articles[index].urlToImage,
                      title: articles[index].title,
                      desc: articles[index].description,
                      url: articles[index].articleUrl);
                },
              ),
            ),
    );
  }
}

class BlogTile extends StatelessWidget {
  final String imageUrl, title, desc, url;
  BlogTile(
      {@required this.imageUrl,
      @required this.title,
      @required this.desc,
      @required this.url});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Articleview(
                ArticleUrl: url,
              ),
            ));
      },
      child: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(imageUrl),
            ),
            Text(
              title,
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            Text(desc,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ))
          ],
        ),
      ),
    );
  }
}
