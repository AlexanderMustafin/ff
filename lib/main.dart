import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          margin: EdgeInsets.only(left: 250),
          width: 1440,
          child: Row(
            children: const [
              Divider(
                height: 5,
                indent: 60,
                endIndent: 60,
              ),
              Text(
                'Recipes',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.orange, fontSize: 24, fontFamily: 'Montserrat'),
              ),
              Divider(
                height: 5,
                indent: 40,
                endIndent: 40,
              ),
              Text(
                'Главная',
                style: TextStyle(
                    color: Colors.black, fontSize: 18, fontFamily: 'Montserrat'),
              ),
              Divider(
                height: 5,
                indent: 20,
                endIndent: 20,
              ),
              Text(
                'Рецепты',
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 18,
                    fontFamily: 'Montserrat'),
              ),
              Divider(
                height: 5,
                indent: 20,
                endIndent: 20,
              ),
              Text(
                'Избранное',
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 18,
                    fontFamily: 'Montserrat'),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 120, top: 6,),
            child: TextButton(
              onPressed: () {},
              child: Row(
                children: const [
                  Icon(
                    Icons.account_circle,
                    color: Colors.orange,
                    size: 38,
                  ),
                  SizedBox(width: 14,),
                  Text('Войти',
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    )
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: 1440,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 200,
                    width: 120,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 200, 0, 0),
                      padding: EdgeInsets.all(0),
                      width: 550,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              const SizedBox(
                                width: 688,
                                child:  Text(
                            'Готовь и делись рецептами',
                            style: TextStyle(
                                fontSize: 72,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto Flex',
                                color: Color(0xff25292D)
                            ),
                            ),
                              ),
                            const SizedBox(height: 42,),
                            const SizedBox(
                              width: 567,
                              child:  Text(
                                'Никаких кулинарных книг и блокнотов! Храни все любимые рецепты в одном месте.',
                                style: TextStyle(
                                  fontFamily: "Roboto Flex",
                                  fontWeight: FontWeight.w300,
                                  fontSize: 18,
                                  color: Color(0xff4A525A)
                                ),),
                            ),
                              SizedBox(height: 42,),
                              Row(
                                children: [
                                  SizedBox(height: 58,),
                                  Container(
                                    width: 278, 
                                    height: 60, 
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(16)
                                        )
                                      ), 
                                      ),
                                      onPressed: (){}, 
                                      child: const Text(
                                        'Добавить рецепт',
                                        style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Color(0xffFFFFFF)
                                        ),
                                        ),
                                        ),
                                        ),
                                  const SizedBox(width: 28,),
                                  SizedBox(
                                    width: 216,
                                    height: 60,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(16)
                                        ),
                                        primary: Color(0xffF5F5F5),
                                        side: BorderSide(
                                          width: 1,
                                          color: Color(0xffFDB100)
                                        )
                                      ),
                                      onPressed: (){}, 
                                      child: const Text(
                                        'Войти',
                                        style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Color(0xffFDB100)
                                        ),
                                        ),
                                        ),
                                        ),
                                ],
                              ),
                            ],
                          )
                          
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40),
                      width: 700,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                        SizedBox(height: 352,),
                              Text(
                                'Умная сортировка по тегам',
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 42,
                                  color: Color(0xff25292D),
                                )
                                ),
                                SizedBox(height: 16,),
                              Text(
                                'Добавляй рецепты и указывай наиболее популярные теги. Это позволит быстро находить любые категории.',
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Color(0xff4A525A),
                                )
                                ),
                      ],)
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 42),
                      alignment: Alignment.center,
                      width: 1200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Container(
                          width: 278,
                          height: 271,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white, 
                            ),
                          child: const table_widget(
                            text1: "Простые блюда",
                            text2: "Время приготвления таких блюд не более 1 часа", 
                            iconString: 'image/ic-menu.png',),
                            
                        ),
                        Container(
                          width: 278,
                          height: 271,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white, 
                            ),
                          child: const table_widget(
                            text1: "Детское",
                            text2: "Самые полезные блюда которые можно детям любого возраста", 
                            iconString: 'image/children.png',),
                        ),
                        Container(
                          width: 278,
                          height: 271,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white, 
                            ),
                          child: const table_widget(
                            text1: "От шеф-поваров",
                            text2: "Требуют умения, времени и терпения, зато как в ресторане", 
                            iconString: 'image/schef.png',),
                        ),
                        Container(
                          width: 278,
                          height: 271,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white, 
                            ),
                          child: const table_widget(
                            text1: "На праздник",
                            text2: "Чем удивить гостей, чтобы все были сыты за праздничным столом", 
                            iconString: 'image/holidays.png',),
                        ),
                      ],)
                    ),
                    Center(
                      child: Container(
                        width: 1150,
                        height: 543,
                        margin: EdgeInsets.only(top: 157),
                        child: Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Image.asset('image/Rectangle8.png'),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  count_like_and_time(),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(73, 42.5, 0, 0),
                                    width: 513,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Image.asset('image/smile_alll.png', width: 100.51, height: 80,),
                                        SizedBox(height: 32,),
                                        const Text('Тыквенный супчик на кокосовом молоке',
                                        style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 42,
                                          color: Color(0xff25292D)
                                        )
                                        ),
                                        const SizedBox(height: 16,),
                                        const Text('Если у вас осталась тыква, и вы не знаете что с ней сделать, то это решение для вас! Ароматный, согревающий суп-пюре на кокосовом молоке. Можно даже в Пост! ',
                                        style: TextStyle(
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                          color: Color(0xff4A525A),
                                        )
                                        )
                                      ],
                                      )
                                  )
                                ],
                              )
                            ]
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(158, 150, 0, 0),
                      width: 884,
                      child: Column(
                        children: [
                          const Text('Поиск рецептов',
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w700,
                            fontSize: 42,
                            color: Color(0xff25292D),
                          ),
                          ),
                          SizedBox(height: 16,),
                          const Text('Введите примерное название блюда, а мы по тегам найдем его',
                          style: TextStyle(
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Color(0xff4A525A),
                          )
                          ),
                          SizedBox(height: 64,),
                          Row(
                            children: [
                              SizedBox(
                                width: 716,
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(vertical: 30),
                                    filled: true,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    hintText: 'Название блюда....',
                                    ),
                                  ),
                              ),
                                SizedBox(width: 16,),
                              SizedBox(
                                width: 152,
                                height: 73,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16)
                                      )
                                    )
                                  ),
                                  onPressed: (){}, 
                                  child: const Text('Поиск',
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: Color(0xffFFFFFF),
                                  )
                                  ),
                                  ),
                              )
                            ],
                          ),
                          SizedBox(height: 24,),
                          Row(
                            children: [
                              TextButton(onPressed: (){}, child: const Text('Мясо',
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xff808080),
                              ))),
                              TextButton(onPressed: (){}, child: const Text('Деликатесы',
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xff808080),
                              ))),
                              TextButton(onPressed: (){}, child: const Text('Пироги',
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xff808080),
                              ))),
                              TextButton(onPressed: (){}, child: const Text('Рыба',
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color(0xff808080),
                              ))),
                            ],
                          )
                        ],
                        ),
                    )
                  ],
                ),
                ],
              ),
            ),
            const BottomAppBar(),
          ],
        ),
      ),
    );
  }
}

class BottomAppBar extends StatelessWidget {
  const BottomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 106),
      color: const Color(0xffFBF9F4),
      height: 113,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 120),
            child: const Text('Recipes',
            style: TextStyle(
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w700,
              fontSize: 32,
              color: Color(0xffFDB100)
            )
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 120),
            child: const Text('© Recipes 2021',
            style: TextStyle(
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Color(0xff4A525A)
            )
            ),
          )
        ],
      ),
    );
  }
}

class count_like_and_time extends StatelessWidget {
  const count_like_and_time({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: const [
      Icon(Icons.favorite_border,
      color: Color(0xff000000),
      ),
      SizedBox(width: 9,),
      Text('356',
      style: TextStyle(
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: Color(0xff25292D),
      )
      ),
      SizedBox(width: 30,),
      Icon(Icons.lock_clock_outlined,
       color: Color(0xff000000),
       ),
      SizedBox(width: 10,),
      Text('35 минут',
      style: TextStyle(
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: Color(0xff25292D),
      )),
    ],);
  }
}

class table_widget extends StatelessWidget {
  final String text1;
  final String text2;
  final String iconString;
  const table_widget(
      {Key? key,
      required this.text1,
      required this.text2,
      required this.iconString})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed: (){},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)),
      ),
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(24, 24, 0, 0),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xffFFEFCC)),
          child: Image.asset(
            iconString,
            height: 24,
            width: 24,
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(24, 24, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: const TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Color(0xff25292D)
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                text2,
                style: const TextStyle(
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Color(0xff4A525A)
                ),
              )
            ],
          ),
        ),
      ],
    ),
    );
  }
}