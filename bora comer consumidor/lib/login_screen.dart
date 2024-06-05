import 'package:flutter/material.dart';
import 'esqueceuSenha.dart';
import 'signup_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _showPassword = false;
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    // Insira o seu clientId aqui
    clientId: 'seu_clientId_aqui',
  );

  Future<void> _handleSignIn() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser != null) {
        // Aqui você pode autenticar o usuário com o Google
        print('Usuário autenticado com o Google: ${googleUser.email}');
      } else {
        // O usuário cancelou o login
        print('Login com o Google cancelado.');
      }
    } catch (error) {
      print('Erro ao fazer login com o Google: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(screenWidth * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: screenHeight * 0.1),
                Text(
                  'Log in',
                  style: TextStyle(
                    fontSize: screenWidth * 0.1,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: screenHeight * 0.05),
                Container(
                  padding: EdgeInsets.all(screenWidth * 0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: SizedBox(
                          width: screenWidth * 0.6,
                          child: ElevatedButton.icon(
                            onPressed: _handleSignIn,
                            icon: Icon(Icons.login, color: Colors.black),
                            label: Text(
                              'Entrar com o Google',
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFFFFFFCF), // Cor do botão
                              onPrimary: Colors.black, // Cor do texto
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      Text('Ou', textAlign: TextAlign.center),
                      SizedBox(height: screenHeight * 0.05),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Email ou CPF',
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      TextFormField(
                        obscureText: !_showPassword,
                        decoration: InputDecoration(
                          hintText: 'Senha',
                          suffixIcon: IconButton(
                            icon: Icon(
                              _showPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                _showPassword = !_showPassword;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      ElevatedButton(
                        onPressed: () {
                          // Implemente a lógica para fazer login aqui
                        },
                        child: Text('Entrar'),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 40),
                          primary: Color(0xFFFFCD24), // Cor do botão
                          onPrimary: Colors.black, // Cor do texto
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgotPasswordScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Esqueceu a senha?',
                          style: TextStyle(
                            color: Color(0xFF000AFF), // Cor do texto
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * 0.2),
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
                                color: Color(0xFF000AFF), // Cor do texto
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
        ),
      ),
    );
  }
}
