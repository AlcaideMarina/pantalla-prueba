import 'package:finocio_prueba_pantalla/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LivingWalletPage extends StatefulWidget {
  LivingWalletPage({Key key}) : super(key: key);

  @override
  _LivingWalletPageState createState() => _LivingWalletPageState();
}

class _LivingWalletPageState extends State<LivingWalletPage> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colores.colorFondo,
        body: Stack(
          children: [
            Container(
              //padding: EdgeInsets.only(top: _height * 0.01),
              child: Column(
                children: [
                  Image.asset(
                    'assets/Logo-living-wallet.png',
                    width: _width * 0.7,
                  ),
                  SizedBox(width: double.infinity)
                ],
              ),
            ),
            Transform.scale(
               scale: 1.2,
               child: 
            Container(
                padding: EdgeInsets.only(top: _height * 0.6),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/Recurso1.png',
                    ),
                    SizedBox(width: double.infinity)
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
                padding: EdgeInsets.only(top: _height * 0.22),
                child: SafeArea(
                  child: Center(
                      child: Column(
                    children: [
                      Container(
                          width: _width * 0.8,
                          margin: EdgeInsets.only(
                              top: _height * 0.07, bottom: 15.0),
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                          decoration: BoxDecoration(
                            color: Colores.fondoCaja,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Form(
                              //key: _formKey,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 25.0,
                                    //vertical: 5.0
                                  ),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Bienvenido',
                                          style: TextStyle(
                                              fontFamily: 'MontserratBold',
                                              fontSize: 24.0,
                                              color: Colors.white),
                                        ),
                                        SizedBox(height: 15.0),
                                        Text(
                                          'Teléfono',
                                          style: TextStyle(
                                              fontFamily: 'Nunito',
                                              fontSize: 14.0,
                                              color: Colors.white),
                                        ),
                                        Container(
                                          height: 30,
                                          child: TextFormField(
                                            style: TextStyle(fontSize: 14),
                                            textInputAction:
                                                TextInputAction.next,
                                            keyboardType: TextInputType.phone,
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                    borderRadius: BorderRadius
                                                        .circular(10.0)),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderSide:
                                                            BorderSide(
                                                                color: Colors
                                                                    .white),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    10.0))),
                                            onChanged: (valor) {
                                              // setState(() {
                                              //   _email = valor;
                                              // });
                                            },
                                          ),
                                        ),
                                        SizedBox(height: 15.0),
                                        Text(
                                          'Contraseña',
                                          style: TextStyle(
                                              fontFamily: 'Nunito',
                                              fontSize: 14.0,
                                              color: Colors.white),
                                        ),
                                        Container(
                                          height: 30,
                                          child: TextFormField(
                                            textInputAction:
                                                TextInputAction.next,
                                            obscureText: true,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0)),
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0)),
                                              prefixIcon: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Icon(
                                                      Icons.remove_red_eye,
                                                      size: 18,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                            onChanged: (valor) {
                                              // setState(() {
                                              //   _email = valor;
                                              // });
                                            },
                                          ),
                                        ),
                                        SizedBox(height: 10.0),
                                        Container(
                                          width: double.infinity,
                                          child: Text(
                                            '¿Has olvidado la contraseña?',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                                fontFamily: 'Nunito',
                                                fontSize: 14.0,
                                                color: Colors.white),
                                          ),
                                        ),
                                        SizedBox(height: 20.0),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(child: Row(children: [Container(
                                              //color: Colors.white,
                                              width: _width * 0.1,
                                              height: _width * 0.1,
                                              padding: EdgeInsets.zero,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                color: Colors.white,
                                              ),
                                              child: IconButton(
                                                  color: Colors.white,
                                                  //style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.white), ),
                                                  onPressed: () {},
                                                  icon: Image.asset(
                                                    'assets/Logo-google.png',
                                                    width: _width * 0.05,
                                                  )),
                                            ),
                                            SizedBox(width: 10.0),
                                            Container(
                                              //color: Colors.white,
                                              width: _width * 0.1,
                                              height: _width * 0.1,
                                              padding: EdgeInsets.zero,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                color: Colors.white,
                                              ),
                                              child: IconButton(
                                                  color: Colors.white,
                                                  //style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.white), ),
                                                  onPressed: () {},
                                                  icon: Image.asset(
                                                    'assets/Logo-facebook.png',
                                                    width: _width * 0.05,
                                                  )),
                                            ),],),),
                                            
                                            Container(
                                              //color: Colors.white,
                                              height: _width * 0.1,
                                               decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(13.0),
                                                color: Colors.white,
                                              ),
                                              child: TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  'Iniciar sesión',
                                                  style: TextStyle(
                                                      color: Colores.fondoCaja,
                                                      fontFamily:
                                                          'MontserratBold',
                                                      fontSize: 18),
                                                ),
                                                ))
                                          ],
                                        ),
                                        SizedBox(height: 30,),
                                        Row(
                                          children: [
                                            Text('¿Necesitas crear una cuenta? ', style: TextStyle(color: Colors.white, fontFamily: 'Nunito', fontSize: 14),),
                                            Text('Regístrate', style: TextStyle(color: Colors.white, fontFamily: 'Nunito', fontSize: 14, decoration: TextDecoration.underline),)
                                          ],
                                        )
                                      ]))))
                    ],
                  )),
                ))
          ],
        ));
  }
}
