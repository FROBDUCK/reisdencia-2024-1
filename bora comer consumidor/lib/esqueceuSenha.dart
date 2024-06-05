import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'toke.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Esqueceu senha'),
        titleTextStyle: TextStyle(
          fontSize: screenWidth * 0.06, // Ajusta o tamanho da fonte
          fontWeight: FontWeight.bold, // Define o peso da fonte para bold
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
              size: screenWidth * 0.08,
              weight: 900), // Ícone maior e mais grosso
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.05, vertical: screenHeight * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: screenHeight * 0.15), // Espaço no topo
              Text(
                'Esqueceu a Senha',
                style: TextStyle(
                  fontSize: screenWidth * 0.1,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: screenHeight * 0.03),
              Text(
                'Insira seu email ou número de telefone cadastrado.',
                style: TextStyle(fontSize: screenWidth * 0.04),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: screenHeight * 0.05),
              Container(
                padding: EdgeInsets.all(screenWidth * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'Email ou Telefone',
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TokenConfirmationScreen(),
                          ),
                        );
                      },
                      child: Text('Enviar'),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 40),
                        primary: Color(0xFFFFCD24),
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Voltar para o Login',
                            style: TextStyle(color: Color(0xFF000AFF)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.25),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Não tem uma conta? "),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUpScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Cadastra-se',
                                  style: TextStyle(
                                    color: Color(0xFF000AFF),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
