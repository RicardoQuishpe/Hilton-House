// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, unnecessary_new, sort_child_properties_last, prefer_is_empty, unused_local_variable, avoid_print, library_private_types_in_public_api, unnecessary_this

import 'package:flutter/material.dart';
import 'pantalla_login.dart';
//import 'pantalla_menu.dart';

class Pantalla_Registro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<Pantalla_Registro> {
  GlobalKey<FormState> keyForm = new GlobalKey();
  TextEditingController nameCtrl = new TextEditingController();
  TextEditingController apellidoCtrl = new TextEditingController();
  TextEditingController emailCtrl = new TextEditingController();
  TextEditingController mobileCtrl = new TextEditingController();
  TextEditingController passwordCtrl = new TextEditingController();
  TextEditingController repeatPassCtrl = new TextEditingController();
  TextEditingController idCtrl = new TextEditingController();
  TextEditingController ecCtrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      
        primarySwatch: Colors.green,
      ),
      home: new Scaffold(
        appBar: new AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Image.asset(
                 '../images/app_logo.png',
                  fit: BoxFit.contain,
                  height: 32,
              ),
              Container(
                  padding: const EdgeInsets.all(8.0), child: Text('Registrarse'))
            ],
          ),
                  ),
        body: new SingleChildScrollView(
          child: new Container(
            margin: new EdgeInsets.all(60.0),
            child: new Form(
              key: keyForm,
              child: formUI(),
            ),
          ),
        ),
      ),
      
    );
    
  }

  
  formItemsDesign(icon, item) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7),
      child: Card(child: ListTile(leading: Icon(icon), title: item)),
    );
  }

  String gender = 'hombre';
  Widget formUI() {
    return Column(
      children: <Widget>[
        formItemsDesign(
            Icons.person,
            TextFormField(
              controller: nameCtrl,
              decoration: new InputDecoration(
                labelText: 'Nombre',
              ),
              validator: validateName,
            )),
            formItemsDesign(
            Icons.person,
            TextFormField(
              controller: apellidoCtrl,
              decoration: new InputDecoration(
                labelText: 'Apellido',
              ),
              validator: validateApellido,
            )),
             formItemsDesign(
            Icons.account_box,
            TextFormField(
              controller: idCtrl,
              decoration: new InputDecoration(
                labelText: 'CI',
              ),
              keyboardType: TextInputType.phone,
              maxLength: 10,
              validator: validateId,
            )),
              formItemsDesign(
            Icons.account_box,
            TextFormField(
              controller: ecCtrl,
              decoration: new InputDecoration(
                labelText: 'Estado civil',
              ),
              validator: validateEc,
            )),
        formItemsDesign(
            Icons.phone,
            TextFormField(
              controller: mobileCtrl,
              decoration: new InputDecoration(
                labelText: 'Numero de telefono',
              ),
              keyboardType: TextInputType.phone,
              maxLength: 10,
              validator: validateMobile,
            )),


        formItemsDesign(
            null,
            Column(children: <Widget>[
              Text("Genero"),
              RadioListTile<String>(
                title: const Text('Hombre'),
                value: 'hombre',
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value!;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Mujer'),
                value: 'mujer',
                groupValue: gender,
                onChanged: (value) {
                  setState(() {
                    gender = value!;
                  });
                },
              )
            ])),  
        formItemsDesign(
            Icons.email,
            TextFormField(
              controller: emailCtrl,
              decoration: new InputDecoration(
                labelText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
              maxLength: 32,
              validator: validateEmail,
            )),
            
        formItemsDesign(
            Icons.remove_red_eye,
            TextFormField(
              controller: passwordCtrl,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
              ),
            )),
        formItemsDesign(
            Icons.remove_red_eye,
            TextFormField(
              controller: repeatPassCtrl,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Repetir la Contraseña',
              ),
              validator: validatePassword,
            )),
        GestureDetector(
            onTap: () {
              save();
            },
            child: Container(
              margin: new EdgeInsets.all(30.0),
              alignment: Alignment.center,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                // ignore: prefer_const_literals_to_create_immutables
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 14, 222, 66),
                  Color.fromARGB(255, 3, 254, 170),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
              child: Text("Registrarse",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              padding: EdgeInsets.only(top: 16, bottom: 16),
            ))
      ],
    );    
  }
  String? validatePassword(String? value) {
    print("valorrr $value passsword ${passwordCtrl.text}");
    if (value != passwordCtrl.text) {
      return "Las contraseñas no coinciden";
    }
    return null;
  }
  String? validateName(String? value) {
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(pattern);
    if (value!.length == 0) {
      return "El nombre es necesario";
    } else if (!regExp.hasMatch(value)) {
      return "El nombre debe de ser a-z y A-Z";
    }
    return null;
  }
  String? validateApellido(String? value) {
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(pattern);
    if (value!.length == 0) {
      return "El apellido es necesario";
    } else if (!regExp.hasMatch(value)) {
      return "El apellido debe de ser a-z y A-Z";
    }
    return null;
  }
  String? validateEc(String? value) {
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(pattern);
    if (value!.length == 0) {
      return "El Estado civil es necesario";
    } else if (!regExp.hasMatch(value)) {
      return "El Estado civil debe de ser a-z y A-Z";
    }
    return null;
  }
  String? validateId(String? value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value!.length == 0) {
      return "Este campo es obligatorio";
    } else if (value.length != 10) {
      return "La ID debe tener 10 digitos";
    }
    return null;
  }
  String? validateMobile(String? value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value!.length == 0) {
      return "El telefono es necesario";
    } else if (value.length != 10) {
      return "El numero debe tener 10 digitos";
    }
    return null;
  }
  String? validateEmail(String? value) {
    const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
    final regex = RegExp(pattern);
    return value!.isNotEmpty && !regex.hasMatch(value)
        ? 'Enter a valid email address'
        : null;
  }
  save() {
    if (keyForm.currentState!.validate()) {
      print("Nombre ${nameCtrl.text}");
      print("Telefono ${mobileCtrl.text}");
      print("Correo ${emailCtrl.text}");
      keyForm.currentState!.reset();
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PantallaLogin(),
          ));
    }
  } 
}



/*OPCION1

const List<String> list = <String>['Cedula', 'RUC', 'licencia', 'Pasaporte'];

void main() => runApp(const DropdownButtonApp());

class DropdownButtonApp extends StatelessWidget {
  const DropdownButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('DropdownButton Sample')),
        body: const Center(
          child: DropdownButtonExample(),
        ),
      ),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}


OPCION2
class Menu_Desplegable extends StatefulWidget {
  @override
  _Menu_Desplegable createState()=> _Menu_Desplegable();
}
class _Menu_Desplegable extends State<Menu_Desplegable>{
  //Variable para indicar el valor actual del DropDwonButton
  String dropwoncurrentvalue ='Cedula';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
      child: DropdownButton(
        // Lista de opciones a mostrar
        items: <String>['Cedula', 'RUC', 'Licencia','Pasaporte']
        .map<DropdownMenuItem<String>>((String value){
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        //Personalizar vista
        icon: Icon(Icons.access_alarms),
        iconSize: 15,
        elevation: 16,
        underline: Container(
          height: 3,
          color: Colors.blue,
        ),
        style: TextStyle(color: Colors.amber),
        //Actualizar el valor escogido
        value: dropwoncurrentvalue,
        onChanged: (String? valueIn) {
          setState((){
            dropwoncurrentvalue = valueIn!;
          });
        })));
  }
}
*/
