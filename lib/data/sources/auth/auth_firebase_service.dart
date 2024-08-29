// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myapp/data/models/auth/create_user_req.dart';
import 'package:myapp/data/models/auth/sign_user_req.dart';

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
  Future<Either> signin(SigninUserReq signUserReq);
}

class AuthFirebaseServiceImpl extends AuthFireBaseService {
  @override
  Future<Either<String, String>> signin(SigninUserReq signUserReq) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: signUserReq.email, password: signUserReq.password);

      return const Right('Signin was Successful');
    } on FirebaseAuthException catch (e) {
      String message = "";

      if (signUserReq.email.isEmpty) {
        message = 'Email cannot be empty';
      } else if (signUserReq.password.isEmpty) {
        message = 'Password cannot be empty';
      } else if (e.code == 'invalid-email') {
        message = 'Not user found for that email';
      } else if (e.code == 'invalid-credential') {
        message = 'Wrong password provider for that user';
      }

      return Left(message);
    }
  }

  /// Method untuk melakukan registrasi user baru dengan menggunakan data [CreateUserReq].
  /// Method ini akan mengembalikan nilai [Future<Either>].
  /// Nilai [Future] ini akan selesai jika proses registrasi berhasil,
  /// dan akan gagal jika proses registrasi gagal.
  /// Jika proses registrasi berhasil maka akan mengembalikan [Right]
  /// dengan nilai string yang berisi pesan berhasil.
  /// Jika proses registrasi gagal maka akan mengembalikan [Left]
  /// dengan nilai string yang berisi pesan error.
  ///
  /// Jika kode error adalah 'weak-password' maka akan mengembalikan pesan
  /// 'The password provided is too weak.'
  ///
  /// Jika kode error adalah 'email-already-in-use' maka akan mengembalikan pesan
  /// 'The account already exists for that email.'
  @override
  Future<Either<String, String>> signup(CreateUserReq createUserReq) async {
    try {
      // Cek apakah field email, password, atau fullname kosong
      if (createUserReq.fullname.isEmpty) {
        return Left('Your name cannot be empty');
      } else if (createUserReq.email.isEmpty) {
        return Left('Email cannot be empty');
      } else if (createUserReq.password.isEmpty) {
        return Left('Password cannot be empty');
      }

      var data = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: createUserReq.email, password: createUserReq.password);

      FirebaseFirestore.instance
          .collection('Users')
          .add({'name': createUserReq.fullname, 'email': data.user?.email});

      return const Right('Signup was Successful');
    } on FirebaseAuthException catch (e) {
      String message = "";

      // Penanganan error FirebaseAuthExceptionr
      if (e.code == 'weak-password') {
        message = 'The password you entered is too weak';
      } else if (e.code == 'email-already-in-use') {
        message = 'An account with that email already exists';
      } else if (e.code == 'invalid-email') {
        message = 'The email format you entered is invalid';
      } else if (e.code == 'operation-not-allowed') {
        message = 'Registration with email and password is not permitted';
      }

      return Left(message);
    } catch (e) {
      // Penanganan error umum
      return Left('Terjadi kesalahan. Silakan coba lagi.');
    }
  }
}
