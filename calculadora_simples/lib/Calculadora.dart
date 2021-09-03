//Classe Calculadora //
import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  State createState() => new CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculadora - Simples"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Texto que mostra o resultado do calculo
            new Text(
              "Resultado : ${resultado.toStringAsFixed(3)}",
              style: new TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
              ),
            ),
            //Campo de texto (input do valor 1)
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 1"),
              controller: t1,
            ),
            //Campo de texto (input do valor 2)
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 2"),
              controller: t2,
            ),
            // Espaçamento depois dos inputs
            new Padding(padding: const EdgeInsets.only(top: 20)),
            //Nova linha(row)
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text(
                    "+",
                    style: new TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.blueAccent,
                  onPressed: somar,
                ),
                //Botão subtrair
                new MaterialButton(
                  child: new Text(
                    "-",
                    style: new TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.blueAccent,
                  onPressed: subtrair,
                ),
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 10)),
            new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text(
                      "*",
                      style: new TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    color: Colors.blueAccent,
                    onPressed: multiplicar,
                  ),
                  new MaterialButton(
                    child: new Text(
                      "/",
                      style: new TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    color: Colors.blueAccent,
                    onPressed: dividir,
                  ),
                ]),

            // Espaçamento depois dos botôes
            new Padding(padding: const EdgeInsets.only(top: 20)),

            //botão limpar
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("Limpar"),
                  color: Colors.grey,
                  onPressed: limpar,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  } //fecha o método build

  //Atributos
  var num1;
  var num2;
  num resultado = 0;

  TextEditingController t1 = new TextEditingController(text: "");
  TextEditingController t2 = new TextEditingController(text: "");

  //Métodos
  void somar() {
    setState(() {
      num1 = num.parse(t1.text);
      num2 = num.parse(t2.text);
      resultado = num1 + num2;
    });
  }

  void limpar() {
    setState(() {
      t1.text = "";
      t2.text = "";
      resultado = 0;
    });
  }

  void subtrair() {
    setState(() {
      num1 = num.parse(t1.text);
      num2 = num.parse(t2.text);
      resultado = num1 - num2;
    });
  }

  void multiplicar() {
    setState(() {
      num1 = num.parse(t1.text);
      num2 = num.parse(t2.text);
      resultado = num1 * num2;
    });
  }

  void dividir() {
    setState(() {
      num1 = num.parse(t1.text);
      num2 = num.parse(t2.text);
      resultado = num1 / num2;
    });
  }
} // fecha a classe CalculadoraState

// Nada deve ser adicionado depois do RETURN, porque não será lido //
