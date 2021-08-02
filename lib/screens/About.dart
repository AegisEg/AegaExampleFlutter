import 'package:example/components/DrawerCusom.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Обо мне",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      drawer: DrawerCusom(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  "Меня зовут Васильев Егор. Я Web-разработчик.\nЗанимаюсь веб-разработкой с постпуления в коледж, а это уже 9 лет. Работаю с такими языками и платформами:",
                  style:
                      TextStyle(fontWeight: FontWeight.normal, fontSize: 18)),
              Text(
                "Node JS,",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "React JS,",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "React Native,",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "PHP,",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "Vue js,",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "Laravel,",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "и конечно же FLutter.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "Flutter я начал изучать сам с помощью открытых ресурсов и уроков пол года назад. На данный момент на моем счету только одно приложения под Android и IOS, разработанное с помощью Flutter. ",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}
