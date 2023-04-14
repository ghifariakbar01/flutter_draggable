import 'package:alice/alice.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final aliceProvider = StateProvider((ref) => Alice(showNotification: true));
