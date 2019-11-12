import 'package:flutter/material.dart';

class LoginCopyrightWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Positioned(
      left: 0,
      bottom: 0,
      width: MediaQuery.of(context).size.width,
      child: Container(
        decoration: BoxDecoration(color: Color(0x50000000)),
        height: 20,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '抵制不良游戏，拒绝盗版游戏，注意自我保护，谨防受骗上当。适度游戏益脑，沉迷游戏伤身。合理安排时间，享受健康生活。',
              style: TextStyle(fontSize: 6, color: Color(0xFFCCCCCC)),
            ),
            Text(
              '文网游备字 [2015] M-RPG 1055号 批准文号：新广出审[2017] 830号 出版物号： ISBN 978-7-7979-2478-2 著作权人：网易（杭州）网络有限公司 出版服务单位：广州网易计算机系统有限公司',
              style: TextStyle(fontSize: 6, color: Color(0xFFCCCCCC)),
            ),
          ],
        ),
      ),
    );
  }
}
