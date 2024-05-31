import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_provider/src/feature/home/data/repository/user_repository_impl.dart';
import 'package:riverpod_provider/src/feature/home/presentation/riverpod/counter.dart';

class HomePage extends ConsumerWidget {
  HomePage({super.key});
  static const routerName = 'home-page';

  final UserRepositoryImpl userRepositoryImpl = UserRepositoryImpl();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getUserAsync = ref.watch(getAllUserProvider(1));
    final int count = ref.watch(countProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade500,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Home Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: getUserAsync.whenOrNull(
        data: (data) => data.fold(
          (l) => const Center(child: Text('Failed Get Data')),
          (r) => r.isEmpty
              ? const Center(
                  child: Text('No Data'),
                )
              : ListView.builder(
                  itemCount: r.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        '${r[index].firstName} ${r[index].lastname}',
                      ),
                      subtitle: Text(r[index].email),
                      trailing: Text('${r[index].id}'),
                    );
                  },
                ),
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green.shade500,
        onPressed: () {
          ref.read(countProvider.notifier).increment();
        },
        // child: const Icon(Icons.refresh, color: Colors.white),
        child: Text(
          '$count',
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
