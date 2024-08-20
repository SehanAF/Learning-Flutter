import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myapp/data/models/auth/create_user_req.dart';

/// Class abstrak yang merepresentasikan service untuk autentikasi Firebase.
/// Service ini memiliki 2 method, yaitu:
/// - signup: method untuk melakukan registrasi user baru dengan menggunakan data [CreateUserReq].
/// - signin: method untuk melakukan login user dengan menggunakan data email dan password.
abstract class AuthFireBaseService {
  /// Method untuk melakukan registrasi user baru dengan menggunakan data [CreateUserReq].
  /// Method ini akan mengembalikan nilai [Future<void>].
  /// Nilai [Future] ini akan selesai jika proses registrasi berhasil,
  /// dan akan gagal jika proses registrasi gagal.
  Future<Either> signup(CreateUserReq createUserReq);

  /// Method untuk melakukan login user dengan menggunakan data email dan password.
  /// Method ini akan mengembalikan nilai [Future<void>].
  /// Nilai [Future] ini akan selesai jika proses login berhasil,
  /// dan akan gagal jika proses login gagal.
  Future<void> signin();
}

class AuthFirebaseServiceImpl extends AuthFireBaseService {
  @override
  Future<void> signin() {
    // TODO: implement signin
    throw UnimplementedError();
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async{
   try{

     await FirebaseAuth.instance.createUserWithEmailAndPassword(email: createUserReq.email, password: createUserReq.password);

     return const Right('Signup was Successful');

   }on FirebaseAuthException catch(e) {
    String message = "";

    if (e.code == 'weak-password') {
      message = 'The password provided is too weak.';
    } else if (e.code == 'email-already-in-use') {
      message = 'The account already exists for that email.';
    }

    return Left(message);
   }
  }
  
}