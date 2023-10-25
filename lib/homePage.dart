import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  Widget _categories({required String name}) {
    return Container(
      height: 60,
      width: 120,
      decoration: BoxDecoration(
        color: Color(0xfffafbfd),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 50,
            width: 50,
            child: Image.asset(
              'images/pngegg.png',
              // color: Color(0xff47648c),
            ),
          ),
          Text(name),
        ],
      ),
      margin: EdgeInsets.only(
        left: 20,
      ),
    );
  }

  Widget _bottomContainer(
      {required Color color,
      required double price,
      required String name,
      required String title,
      required String subtitle,
      required String images}) {
    return Container(
      height: 190,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(
            width: 170,
            height: 200,
            padding: EdgeInsets.only(left: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('\$ $price HR'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(
                        0xff0c3469,
                      ),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(color: Color(0xff0c3469)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(color: Color(0xff0c3469)),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 150,
            width: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(images))),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              color: Color(0xfff3f3f3),
              height: 330,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        hintText: 'Search..',
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xff0c34),
                        ),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide.none,
                        )),
                  ),
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Color(0xfffafbfd),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 20),
                                child: Column(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Your are in good',
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Color(0xff0c3469),
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Hand with us',
                                          style: TextStyle(
                                              fontSize: 22,
                                              color: Color(0xff0c3469),
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'We are delighted to provide',
                                          style: TextStyle(
                                              color: Color(0xff0c3469)),
                                        ),
                                        Text(
                                          'The Best Services',
                                          style: TextStyle(
                                              color: Color(0xff0c3469)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('images/pngegg (3).png')),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.white,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _categories(
                            name: 'Repairing',
                          ),
                          _categories(
                            name: 'Cleaning',
                          ),
                          _categories(
                            name: 'Any Title',
                          ),
                          _categories(
                            name: 'Repairing',
                          ),
                          _categories(
                            name: 'Repairing',
                          ),
                          _categories(
                            name: 'Repairing',
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey[300],
                  ),
                  Padding(
                      child: Column(
                        children: [
                          _bottomContainer(
                              color: Color(0xffffeedf),
                              price: 100,
                              name: 'Construction',
                              title: 'We offer service to improve',
                              subtitle: 'Your quality of life',
                              images: 'images/pngegg (1).png'),
                          SizedBox(
                            height: 20,
                          ),
                          _bottomContainer(
                              color: Color.fromARGB(255, 158, 203, 231),
                              price: 200,
                              name: 'Cleaning',
                              title: 'We offer service to improve',
                              subtitle: 'Your quality of life',
                              images: 'images/pngegg (2).png'),
                          SizedBox(
                            height: 20,
                          ),
                          _bottomContainer(
                              color: Color.fromARGB(255, 202, 178, 158),
                              price: 300,
                              name: 'Repairing',
                              title: 'We offer service to improve',
                              subtitle: 'Your quality of life',
                              images: 'images/pngegg (5).png'),
                          SizedBox(
                            height: 20,
                          ),
                          _bottomContainer(
                              color: Color(0xffffeedf),
                              price: 100,
                              name: 'Construction',
                              title: 'We offer service to improve',
                              subtitle: 'Your quality of life',
                              images: 'images/pngegg (1).png'),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
