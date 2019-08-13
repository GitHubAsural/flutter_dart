import 'package:flutter/material.dart';
import 'model/post.dart';

void main()=>runApp(App());

// 主文件
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
	return MaterialApp(
		debugShowCheckedModeBanner: false,
		home:Home(),
		theme: ThemeData(
			primarySwatch: Colors.yellow
		),
	);
  }
}

// 创建Hello 小部件
class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
	return Container(
	  child: Center(
			child: Text(
				'Hello',
				textDirection:TextDirection.rtl,
				style: TextStyle(
					fontSize: 46.0,
					fontWeight: FontWeight.bold,
					color: Colors.black87
					// color: Color.fromRGBO(255, 112, 43, 1.0)
				),
			),
		),
	);
  }
}

// 列表小部件
class Home extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context,int index){
		return Container(
			color:Colors.grey[300],
			// 外边距
			margin: EdgeInsets.all(8.0),
			child: Column(
				children: <Widget>[
					Image.network(posts[index].imageUrl),
					SizedBox(height: 16.0),
					Text(
						posts[index].title,
						// style: TextStyle(
						// 	color:Colors.white,
						// ),
						style: Theme.of(context).textTheme.title,
					),
					Text(
						posts[index].author,
						style: Theme.of(context).textTheme.subhead,
					),
					SizedBox(height:16.0)
				],
			),
		);
	}

  @override
  Widget build(BuildContext context) {
	return Scaffold(
		backgroundColor: Colors.grey[100],
		appBar: AppBar(
			title: Text('AppBar Status'),
			elevation: 54.0,
		),
		body: ListView.builder(
			itemCount: posts.length,
			itemBuilder: _listItemBuilder,
		),
	);
  }
}