import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff212121),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Center(
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Center(
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Center(
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.circle
                  ),
                ),
              ),
            ),
            const SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xff81D4FA),
                  hintText: 'Your username',
                  //labelStyle: ,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                  )
                ),
              ),
            ),
            const SizedBox(height: 50,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blueGrey,
                    hintText: 'Your password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    )
                ),
              ),
            ),
            const SizedBox(height: 50,),
            ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                shape: StadiumBorder(),
                fixedSize: const Size(140, 40)),
                child: const Text('Login'))
          ],
        ),
      ),
    );
  }
}




class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xff212121),
          bottomNavigationBar: const TabBar(tabs: [
            Tab(
              text: 'Home',
              icon: Icon(Icons.home),
            ),
            Tab(
              text: 'Scan',
              icon: Icon(Icons.qr_code),
            ),
            Tab(
              text: 'Profile',
              icon: Icon(Icons.person),
            ),
          ],),
          body: TabBarView(children: [
            Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Container(
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Colors.blueGrey,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 20,),
                        const Text('Welcome Ocean'),
                        const SizedBox(width: 20,),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                              color: Colors.orange,
                              shape: BoxShape.circle
                          ),
                          child: const Icon(Icons.all_inclusive),
                        ),
                        const SizedBox(width: 20,),
                        const Text('\$400,000.00'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                        ),
                      ),
                      const SizedBox(
                        width: 22,
                      ),
                      const Text('Send money', style: TextStyle(fontSize: 20, color: Colors.orange),)
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                        ),
                      ),
                      const SizedBox(
                        width: 22,
                      ),
                      const Text('Send money', style: TextStyle(fontSize: 20, color: Colors.orange),)
                    ],
                  ),
                )



              ],
            ),
            Column(
              children: [

              ],
            ),
            Column(
              children: [

              ],
            ),
          ]),
        ),
      ),
    );
  }
}

