part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static const routeName = "/";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool pressed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anime Details'),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.white30, Colors.pinkAccent])),
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          Flexible(
            flex: 4,
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image.asset(
                        'assets/images/classroomelitebackground.jpg',
                        fit: BoxFit.cover),
                  ),
                  Align(
                    alignment: const Alignment(0.92, -0.9),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16)),
                      child: IconButton(
                        icon: Icon(Icons.favorite,
                            color: pressed ? Colors.grey : Colors.redAccent),
                        iconSize: 28,
                        onPressed: () {
                          setState(() {
                            if (!pressed) {
                              ScaffoldMessenger.of(this.context)
                                  .showSnackBar(const SnackBar(
                                content: Text(
                                    "This anime has been removed from your favorite!"),
                                duration: Duration(milliseconds: 1500),
                              ));
                              pressed = !pressed;
                            } else {
                              ScaffoldMessenger.of(this.context)
                                  .showSnackBar(const SnackBar(
                                content: Text(
                                    "This anime has been added to your favorite!"),
                                duration: Duration(milliseconds: 1500),
                              ));
                              pressed = !pressed;
                            }
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Flexible(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(4, 12, 4, 0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(44),
                          child: Image.asset(
                              'assets/images/classroomelitesquare1.jpg',
                              fit: BoxFit.cover),
                        )),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(4, 12, 4, 0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(44),
                          child: Image.asset(
                              'assets/images/classroomelitesquare2.jpg',
                              fit: BoxFit.cover),
                        )),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(4, 12, 4, 0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(44),
                          child: Image.asset(
                              'assets/images/classroomelitesquare3.jpg',
                              fit: BoxFit.cover),
                        )),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(4, 12, 4, 0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(44),
                          child: Image.asset(
                              'assets/images/classroomelitesquare4.jpg',
                              fit: BoxFit.cover),
                        )),
                  ),
                ],
              )),
          Flexible(
            flex: 6,
            child: ListView(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
              children: const <Widget>[
                Center(
                    child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 4, 0, 12),
                  child: Text(
                    'Classroom of the Elite',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                        wordSpacing: 2),
                  ),
                )),
                Center(
                    child: Text(
                  'In the distant future, the Japanese government has established the Tokyo Metropolitan Advanced Nurturing School, dedicated to instruct and foster the generation of people that will support the country in the future. The students are given a high degree of freedom in order to closely mimic real life. The story follows the perspective of Kiyotaka Ayanokōji, a quiet and unassuming boy, who is not good at making friends and would rather keep his distance, but possesses unrivaled intelligence. He is a student of Class-D, which is where the school dumps its inferior students. After meeting Suzune Horikita and Kikyō Kushida, two other students in his class, the situation begins to change and he starts to get involved in many affairs, and his thought of an ideal normal high school life begins to get scattered.\n\n Kiyotaka Ayanokouji is a student of Class D, where the school dumps its worst. There he meets the unsociable Suzune Horikita, who believes she was placed in Class D by mistake and desires to climb all the way to Class A, and the seemingly amicable class idol Kikyou Kushida, whose aim is to make as many friends as possible. While class membership is permanent, class rankings are not; students in lower ranked classes can rise in rankings if they score better than those in the top ones. Additionally, in Class D, there are no bars on what methods can be used to get ahead. In this cutthroat school, can they prevail against the odds and reach the top?\n',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.4,
                      wordSpacing: 1),
                )),
              ],
            ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (() {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => const Form())));
        }),
        backgroundColor: Colors.pinkAccent,
        label: const Text("Order Now"),
        icon: const Icon(Icons.shopping_cart),
      ),
    );
  }
}
