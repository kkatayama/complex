import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class ComPlexAuthUser {
  ComPlexAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  AuthDataStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<ComPlexAuthUser> comPlexAuthUserSubject =
    BehaviorSubject.seeded(ComPlexAuthUser(loggedIn: false));
Stream<ComPlexAuthUser> comPlexAuthUserStream() => comPlexAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
