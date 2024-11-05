import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum ConnectivityStatus { connected, disconnected }

class ConnectivityCubit extends Cubit<ConnectivityStatus> {
  final Connectivity _connectivity;
  late final Stream<List<ConnectivityResult>> _connectivityStream;

  ConnectivityCubit({Connectivity? connectivity})
      : _connectivity = connectivity ?? Connectivity(),
        super(ConnectivityStatus.disconnected) {
    _initializeConnectivity();
    _connectivityStream = _connectivity.onConnectivityChanged;
    _connectivityStream.listen((connectivityResult) {
      if (connectivityResult.contains(ConnectivityResult.mobile) || connectivityResult.contains(ConnectivityResult.wifi)) {
        emit(ConnectivityStatus.connected);
      } else {
        emit(ConnectivityStatus.disconnected);
      }
    });
  }

  Future<void> _initializeConnectivity() async {
    final initialStatus = await _connectivity.checkConnectivity();
    if (initialStatus.contains(ConnectivityResult.mobile) || initialStatus.contains(ConnectivityResult.wifi)) {
      emit(ConnectivityStatus.connected);
    } else {
      emit(ConnectivityStatus.disconnected);
    }
  }

  @override
  Future<void> close() {
    _connectivityStream.drain();
    return super.close();
  }
}
