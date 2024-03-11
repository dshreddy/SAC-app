import '../exports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildUserLogin(context);
  }

  Widget _buildUserLogin(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SACLogoText(width: 250),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: () {
              _signIn(context);
            },
            icon: Image.asset(
              googleImagePath,
              height: 20,
            ),
            label: const Text(googleSignIn),
          ),
        ],
      ),
    );
  }

  Future<void> _signIn(BuildContext context) async {
    final user = await GoogleSignInApi.login();
    if (user == null) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Not able to login')));
    } else {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isLoggedIn', true);
      await prefs.setString('user_name', user.displayName ?? '');
      await prefs.setString('user_email', user.email);
      Navigator.popAndPushNamed(context, Home.id);
    }
  }
}
