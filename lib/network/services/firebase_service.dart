// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';

// class FirebaseService {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   // Initialize Firebase
//   Future<void> initializeFirebase() async {
//     await Firebase.initializeApp();
//   }

//   // Authentication

//   // Sign up with email and password
//   Future<UserCredential> signUp(String email, String password) async {
//     try {
//       return await _auth.createUserWithEmailAndPassword(
//           email: email, password: password);
//     } catch (error) {
//       throw _handleAuthError(error);
//     }
//   }

//   // Sign in with email and password
//   Future<UserCredential> signIn(String email, String password) async {
//     try {
//       return await _auth.signInWithEmailAndPassword(
//           email: email, password: password);
//     } catch (error) {
//       throw _handleAuthError(error);
//     }
//   }

//   // Sign out
//   Future<void> signOut() async {
//     await _auth.signOut();
//   }

//   // Firestore

//   // Get document by ID from a specific collection
//   Future<DocumentSnapshot> getDocumentById(
//       String collection, String documentId) async {
//     try {
//       return await _firestore.collection(collection).doc(documentId).get();
//     } catch (error) {
//       throw _handleFirestoreError(error);
//     }
//   }

//   // Add a document to a collection
//   Future<DocumentReference> addDocument(
//       String collection, Map<String, dynamic> data) async {
//     try {
//       return await _firestore.collection(collection).add(data);
//     } catch (error) {
//       throw _handleFirestoreError(error);
//     }
//   }

//   // Update a document in a collection
//   Future<void> updateDocument(
//       String collection, String documentId, Map<String, dynamic> data) async {
//     try {
//       await _firestore.collection(collection).doc(documentId).update(data);
//     } catch (error) {
//       throw _handleFirestoreError(error);
//     }
//   }

//   // Delete a document from a collection
//   Future<void> deleteDocument(String collection, String documentId) async {
//     try {
//       await _firestore.collection(collection).doc(documentId).delete();
//     } catch (error) {
//       throw _handleFirestoreError(error);
//     }
//   }

//   // Handle authentication errors
//   dynamic _handleAuthError(dynamic error) {
//     print('Firebase Auth Error: $error');
//     // You can customize error handling based on your app's requirements
//     return error;
//   }

//   // Handle Firestore errors
//   dynamic _handleFirestoreError(dynamic error) {
//     print('Firestore Error: $error');
//     // You can customize error handling based on your app's requirements
//     return error;
//   }
// }
