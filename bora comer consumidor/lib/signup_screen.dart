import 'package:flutter/material.dart';
import 'login_screen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Make the content scrollable
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 60.0),
              // Additional space between the title and the form
              Text(
                'Cadastro',
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              Center(
                child: SizedBox(
                  width: 250, // Set a smaller width for the button
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Implement login with Google logic
                    },
                    icon: Icon(Icons.login, color: Colors.black),
                    label: Text(
                      'Entrar com o Google',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFFFFCF), // Button color
                      onPrimary: Colors.black, // Text color
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Text('Ou', textAlign: TextAlign.center),

              // Use a Container instead of SizedBox to contain the form
              Container(
                padding: EdgeInsets.all(20.0), // Padding around the form
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(hintText: 'CPF'),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 40.0),
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Email'),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 40.0),
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Telefone'),
                      keyboardType: TextInputType.phone,
                    ),
                    SizedBox(height: 40.0),
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Endereço'),
                    ),
                    SizedBox(height: 40.0),
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Senha'),
                      obscureText: true,
                    ),
                    SizedBox(height: 40.0),
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Confirmar Senha'),
                      obscureText: true,
                    ),
                    SizedBox(height: 60.0),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                        // Implement login logic here
                      },
                      child: Text('Entrar'),
                      style: ElevatedButton.styleFrom(
                        minimumSize:
                            Size(double.infinity, 40), // Minimum button width
                        primary: Color(0xFFFFCD24), // Button color
                        onPrimary: Colors.black, // Text color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10.0), // Border radius
                        ),
                      ),
                    ),
                    SizedBox(
                        height: 20.0), // Space between form and sign-up link
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            // Navigate to the sign-up screen
                          },
                          child: Text(
                            'precisa de ajuda?',
                            style: TextStyle(color: Color(0xFF000AFF)),
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
    );
  }
}
