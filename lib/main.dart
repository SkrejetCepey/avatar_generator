import 'package:avatar_generator/cubits/avatar/avatar_cubit.dart';
import 'package:avatar_generator/cubits/bottom_navigation_bar/bottom_navigation_bar_cubit.dart';
import 'package:avatar_generator/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'avatar.dart';

void main() {
  Bloc.observer = MyObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => BottomNavigationBarCubit()),
        BlocProvider(create: (_) => AvatarCubit())
      ],
      child: BlocBuilder<BottomNavigationBarCubit, BottomNavigationBarState>(
        builder: (BuildContext context, BottomNavigationBarState state) {

          final BottomNavigationBarCubit navBarCubit = BlocProvider.of<BottomNavigationBarCubit>(context);
          final AvatarCubit avatarCubit = BlocProvider.of<AvatarCubit>(context);

          if (state is BottomNavigationBarInitial)
            return Scaffold();
          else {
            return Scaffold(
              body: Column(
                children: [
                  Expanded(
                      flex: 1,
                      child: BlocBuilder<AvatarCubit, AvatarState>(
                        builder: (context, state) {
                          return Center(
                              child: Avatar.viewAvatar
                          );
                        },
                      )
                  ),
                  Expanded(
                    flex: 2,
                    child: GridView.count(
                      padding: EdgeInsets.all(4.0),
                      crossAxisCount: 4,
                      childAspectRatio: 1.0,
                      mainAxisSpacing: 4.0,
                      crossAxisSpacing: 4.0,
                      children: [
                        for (int i = 0; i < navBarCubit.imagesPath.length; i++) GridTile(
                            child: InkResponse(
                                onTap: () {
                                  avatarCubit.change(navBarCubit.imagesPath[i]);
                                },
                                child: Image.asset(navBarCubit.imagesPath[i])
                            )
                        )
                      ],
                    ),
                  )
                ],
              ),
              bottomNavigationBar: BottomNavigationBar(
                onTap: navBarCubit.changePage,
                currentIndex: navBarCubit.currentPage,
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.access_time),
                      label: 'Faces'
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.access_time),
                      label: 'Eyes'
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.access_time),
                      label: 'Hairstyles'
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.access_time),
                      label: 'Moustaches'
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.access_time),
                      label: 'Mouths'
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}