import 'package:flutter/material.dart';

class NotifacationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'الاشعارات',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) => BuildNotCard(
              idNOot: 999999,
              message: ('لقد تم الحجز بنجاح'),
              title: ('حجز جديد'),
              date: ('July 20.2020 (08:00 pm)')),
          separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
          itemCount: 6),
    );
  }

  Widget BuildNotCard({
    @required int idNOot,
    @required String title,
    @required String message,
    @required String date,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 5),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      color: Color(0xffA3E6F1),
                      height: 50,
                      width: 5,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontSize: 18, height: 1),
                      ),
                      Text(
                        message,
                        textAlign: TextAlign.end,
                        style: TextStyle(fontSize: 16, height: 1),
                      ),
                      Text(
                        ' $idNOot#',
                        style: TextStyle(color: Color(0xff30C6E0), height: 1),
                      ),
                      Text(
                        'July 20.2020 (08:00 pm)',
                        style: TextStyle(color: Color(0xffB9B9B9)),
                      ),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color(0xffF8F8F8),
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(
                    Icons.add_alarm_outlined,
                    color: Color(0xff30C6E0),
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
