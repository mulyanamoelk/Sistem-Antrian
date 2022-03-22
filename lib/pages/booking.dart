import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class booking extends StatefulWidget {
  const booking({Key? key}) : super(key: key);

  @override
  State<booking> createState() => _bookingState();
}

class _bookingState extends State<booking> {
  List<bool> _selections = List.generate(2, (index) => false);
  int counter = 0;
  int? _value = 0;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //book
    Widget section() {
      return Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            ' Book An \n Appointment',
            style: TextStyle(
                color: Color(0xff1A936F),
                fontSize: 24,
                fontWeight: FontWeight.w600),
          ),
        ],
      ));
    }

    //pilih pasien
    Widget section2() {
      return Text('Pilih pasien',
          style: TextStyle(color: Color(0xff9FA5C0), fontSize: 15));
    }

    //togle button
    Widget section3() {
      return ToggleButtons(
        children: [
          Icon(Icons.local_cafe),
          Icon(Icons.local_cafe),
        ],
        isSelected: _selections,
        onPressed: (int index) {
          _selections[index] = !_selections[index];
        },
      );
    }

    //pribadi atau kerabat
    Widget section4() {
      return Container();
    }

    //section info personal
    Widget section5() {
      return Container(
          margin: EdgeInsets.only(top: 10),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Informasi Personal',
                    style: TextStyle(
                        color: Color(0xff3E5481),
                        fontSize: 17,
                        fontWeight: FontWeight.bold)),
              ]));
    }

    //section NIK
    Widget section6() {
      return TextFormField(
        keyboardType: TextInputType.number,
        decoration: new InputDecoration(
          prefixIcon: Icon(Icons.no_accounts),
          hintText: "3205051017990055",
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: BorderSide(color: Color(0xff9FA5C0))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: BorderSide(color: Color(0xff1FCC79))),
          border: OutlineInputBorder(
            borderRadius: new BorderRadius.circular(32),
          ),
        ),
      );
    }

    //section Nama
    Widget section7() {
      return TextFormField(
        decoration: new InputDecoration(
          prefixIcon: Icon(Icons.person),
          hintText: "Santi ku",
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: BorderSide(color: Color(0xff9FA5C0))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: BorderSide(color: Color(0xff1FCC79))),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Nama tidak boleh kosong';
          }
        },
      );
    }

    //section no telpon
    Widget section8() {
      return TextFormField(
        keyboardType: TextInputType.phone,
        decoration: new InputDecoration(
          prefixIcon: Icon(Icons.phone),
          hintText: "09662548161",
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: BorderSide(color: Color(0xff9FA5C0))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: BorderSide(color: Color(0xff1FCC79))),
          border: OutlineInputBorder(
            borderRadius: new BorderRadius.circular(32),
          ),
        ),
      );
    }

    //section Email
    Widget section9() {
      return TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: new InputDecoration(
          prefixIcon: Icon(Icons.mail),
          hintText: "santy@gmail.com",
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: BorderSide(color: Color(0xff9FA5C0))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: BorderSide(color: Color(0xff1FCC79))),
          border: OutlineInputBorder(
            borderRadius: new BorderRadius.circular(32),
          ),
        ),
      );
    }

    //section Gender
    Widget section10() {
      return TextFormField(
        keyboardType: TextInputType.numberWithOptions(),
        decoration: new InputDecoration(
          hintText: "Wanita",
          prefixIcon: Icon(Icons.woman),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: BorderSide(color: Color(0xff9FA5C0))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: BorderSide(color: Color(0xff1FCC79))),
          border: OutlineInputBorder(
            borderRadius: new BorderRadius.circular(32),
          ),
        ),
      );
    }

    //section TTL
    Widget section11() {
      return TextFormField(
        keyboardType: TextInputType.numberWithOptions(),
        decoration: new InputDecoration(
          hintText: "10/11/1983",
          prefixIcon: Icon(Icons.calendar_month),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: BorderSide(color: Color(0xff9FA5C0))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: BorderSide(color: Color(0xff1FCC79))),
          border: OutlineInputBorder(
            borderRadius: new BorderRadius.circular(32),
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return 'TTL tidak boleh kosong';
          }
          return null;
        },
      );
    }

    //section berat badan
    Widget section12() {
      return TextFormField(
        keyboardType: TextInputType.numberWithOptions(),
        decoration: new InputDecoration(
          hintText: "60 KG",
          prefixIcon: Icon(Icons.person_pin_sharp),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: BorderSide(color: Color(0xff9FA5C0))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: BorderSide(color: Color(0xff1FCC79))),
          border: OutlineInputBorder(
            borderRadius: new BorderRadius.circular(32),
          ),
        ),
      );
    }

    //section tinggi badan
    Widget section13() {
      return TextFormField(
        keyboardType: TextInputType.numberWithOptions(),
        decoration: new InputDecoration(
          hintText: "165 CM",
          prefixIcon: Icon(Icons.height),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: BorderSide(color: Color(0xff9FA5C0))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: BorderSide(color: Color(0xff1FCC79))),
          border: OutlineInputBorder(
            borderRadius: new BorderRadius.circular(32),
          ),
        ),
      );
    }

    //section riwaya penyakit
    Widget section14() {
      return TextFormField(
        keyboardType: TextInputType.numberWithOptions(),
        decoration: new InputDecoration(
          hintText: "Riwayat Penyakit",
          prefixIcon: Icon(Icons.coronavirus),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: BorderSide(color: Color(0xff9FA5C0))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
              borderSide: BorderSide(color: Color(0xff1FCC79))),
          border: OutlineInputBorder(
            borderRadius: new BorderRadius.circular(32),
          ),
        ),
      );
    }

    //section 9 button
    Widget section15(BuildContext context) {
      return Container(
        margin: EdgeInsets.only(bottom: 50),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 156,
                height: 56,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text('Back',
                              style: TextStyle(
                                  color: Color(0xff2E3E5C),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800))),
                    ]),
              ),
              Container(
                width: 156,
                height: 56,
                decoration: BoxDecoration(
                    color: Color(0xff1FCC79),
                    borderRadius: BorderRadius.circular(32)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'uploadstep2');
                        },
                        child: Text(
                          'Next',
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              )
            ]),
      );
    }

    return Scaffold(
      body: Container(
          margin: EdgeInsets.all(24),
          child: ListView(
            children: [
              Center(
                  child: Column(
                children: [
                  section(),
                  SizedBox(
                    height: 10,
                  ),
                  section2(),
                  SizedBox(
                    height: 10,
                  ),
                  section3(),
                  SizedBox(
                    height: 10,
                  ),
                  section4(),
                  SizedBox(
                    height: 10,
                  ),
                  section5(),
                  SizedBox(
                    height: 10,
                  ),
                  section6(),
                  SizedBox(
                    height: 10,
                  ),
                  section7(),
                  SizedBox(
                    height: 10,
                  ),
                  section8(),
                  SizedBox(
                    height: 10,
                  ),
                  section9(),
                  SizedBox(
                    height: 10,
                  ),
                  section10(),
                  SizedBox(
                    height: 10,
                  ),
                  section11(),
                  SizedBox(
                    height: 10,
                  ),
                  section12(),
                  SizedBox(
                    height: 10,
                  ),
                  section13(),
                  SizedBox(
                    height: 10,
                  ),
                  section14(),
                  SizedBox(
                    height: 10,
                  ),
                  section15(context),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ))
            ],
          )),
    );
  }
}
