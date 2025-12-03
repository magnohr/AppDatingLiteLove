import 'package:flutter/material.dart';
import 'package:tre/features/mensagens/pages/widgets/app_bar.dart';
import 'features/mensagens/pages/mensagens_page.dart';

import 'features/mensagens/pages/widgets/barra_pesquisa.dart';
import 'features/mensagens/pages/widgets/chat_item.dart';
import 'features/mensagens/pages/widgets/lista_histories.dart';
import 'features/mensagens/tela_chat/pages_chat/widgtes/cabecalho_chat.dart';
import 'features/mensagens/tela_chat/pages_chat/widgtes/conversas_chat.dart';
import 'features/navigationBar/navigationBarTela/navigationBarTela.dart';
import 'features/navigationBar/perfil/view_perfil/tela_perfil.dart';
import 'features/navigationBar/perfil/view_perfil/widgts/cabecalho_perfil.dart';
import 'features/navigationBar/perfilOutrosUsuarios/outrosUsuarios.dart';
import 'features/telaConfiguracao/editarPerfil/EditPerfil.dart';
import 'features/telaConfiguracao/viewsPage/TelaConfiguracao/TelaCabecalho.dart';
import 'features/telaConfiguracao/viewsPage/TelaConfiguracao/TelaInteiraConfig.dart';
import 'features/views/auth/login_screen.dart';
import 'features/views/auth/register_screen.dart';
import 'features/views/auth/reset_password/newPassword.dart';
import 'features/views/auth/reset_password/reset.dart';
import 'features/views/auth/reset_password/verification.dart';

import 'features/views/splash/splash_screen.dart';


void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tre App',

      // Rota inicial
      initialRoute: '/',

      // Rotas do app
      routes: {
        '/': (context) => const SplashScreen(),
        '/register': (context) => const RegisterScreen(),
        '/login': (context) => const LoginScreen(),
        '/reset': (context) => const ResetPassword(),
        '/verification': (context) => const Verification(),
        '/novaSenha': (context) => const Newpassword(),
        '/cabecalho_perfil': (context) => const CabecalhoPerfil(),
        '/telaPerfil': (context) => const TelaPerfil(),
        '/telaConfiguracao': (context) => const TelaCabecalho(),
        '/NavigationBar': (context) => const Navigationbartela(),
        '/telainteiraconfig': (context) => const Telainteiraconfig(),
        '/editePerfil': (context) => const Editperfil(),
        '/outrosusuarios': (context) => const Outrosusuarios(),
        '/appBarMensagens': (context) => const App_Bar(),
        '/BarraPesquisa': (context) => const BarraPesquisa(),
        '/listaHistories': (context) => StoriesWidget(),
        '/listaChat': (context) => ChatListWidget(),
        '/mensagensApp': (context) => mensagensApp(),
        '/chatCabeca': (context) => ChatHeader(),
        '/chatAprencia': (context) => ConversasChat(),
      },
    );
  }
}
