import 'package:flutter/material.dart';

// 定义 DocumentsPage 作为 StatefulWidget
class DocumentsPage extends StatefulWidget {
  @override
  _DocumentsPageState createState() => _DocumentsPageState();
}

// 定义与 DocumentsPage 相关联的 State 类
class _DocumentsPageState extends State<DocumentsPage> {
  GlobalKey globalKey = GlobalKey();

  final double buttonHeight = 40;
  bool outSize = false;
  String content = "这是可滑动文本区域";

  Future<double> getButtonPosition() async {
    return Future.delayed(Duration.zero, () {
      final RenderBox renderBox = globalKey.currentContext!.findRenderObject() as RenderBox;
      final double dy = renderBox.localToGlobal(Offset.zero).dy;
      final double height = renderBox.size.height;
      final double topPadding = kToolbarHeight + MediaQuery.of(context).padding.top;
      final double maxHeight = MediaQuery.of(context).size.height - buttonHeight - topPadding;
      double buttonPosition = dy + height - topPadding;

      if (buttonPosition >= maxHeight) {
        buttonPosition = maxHeight;
        outSize = true;
      }
      if (this.outSize != outSize) {
        setState(() {
          this.outSize = outSize;
        });
      }
      return buttonPosition;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScrollDemoPage"),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                content += "=｜-动态文本-｜=";
              });
            },
            icon: Icon(Icons.add_circle_outline),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                if (content.length > 8) {
                  content = content.replaceFirst("=｜-动态文本-｜=", "");
                }
              });
            },
            icon: Icon(Icons.remove_circle_outline),
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  color: Colors.redAccent,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 60,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "点击右上角加减查看效果",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Container(
                        height: 60,
                        alignment: Alignment.centerLeft,
                        child: Text("我是文本2"),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.only(bottom: outSize ? (buttonHeight) : 0),
                      physics: ClampingScrollPhysics(),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        key: globalKey,
                        color: Colors.red,
                        child: Text(
                          content,
                          style: TextStyle(fontSize: 44),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          FutureBuilder<double>(
            future: getButtonPosition(),
            builder: (context, snap) {
              if (snap.data == null || snap.data == 0) {
                return Container();
              }
              return Positioned(
                top: snap.data!,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: buttonHeight,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: buttonHeight,
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      color: Colors.blue,
                      child: Text("#########"),
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
