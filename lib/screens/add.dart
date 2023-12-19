import 'package:flutter/material.dart';

class Add_Screen extends StatefulWidget {
  const Add_Screen({super.key});

  @override
  State<Add_Screen> createState() => _Add_ScreenState();
}

class _Add_ScreenState extends State<Add_Screen> {
  String? selectedItem;
  final List<String> _item = [
    'Food',
    'Transfer',
    'Transportation',
    'Education'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
          child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          background_container(context),
          Positioned(
            top: 120,
            child: main_container(),
          )
        ],
      )),
    );
  }

  Container main_container() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      height: 550,
      width: 340,
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: Color(0xffC5C5C5))),
              child: DropdownButton<String>(
                items: _item
                    .map((e) => DropdownMenuItem(
                          child: Container(
                            child: Row(
                              children: [
                                Container(
                                  width: 40,
                                  child: Image.asset('images/${e}.png'),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  e,
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                          ),
                          value: e,
                        ))
                    .toList(),
                selectedItemBuilder: (BuildContext context) =>
                  _item.map((e) => Row(
                        children: [
                          Container(
                            width: 42,
                            child: Image.asset('images/${e}.png'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            e,
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ))
                .toList(),
              hint: Text(
                  'Name',
                  style: TextStyle(color: Colors.grey),
                ),
                dropdownColor: Colors.white,
                isExpanded: true,
                underline: Container(),
                onChanged: ((value) {
                  setState(() {
                    selectedItem = value!;
                  });
                }),
              ),
            ),
          )
        ],
      ),
    );
  }

  Column background_container(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 240,
          decoration: BoxDecoration(
              color: Color(0xff368983),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),
                    Text(
                      'Adding',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Icon(
                      Icons.attach_file_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
