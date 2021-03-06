import 'package:flutter/material.dart';
import 'package:test_app/components/my_tab_controller.dart';
import 'package:test_app/screens/bloc_pattern_state_screen.dart';
import 'package:test_app/screens/button_screen.dart';
import 'package:test_app/screens/canvas_screen.dart';
import 'package:test_app/screens/card_screen.dart';
import 'package:test_app/screens/data_table_screen.dart';
import 'package:test_app/screens/drag_and_drop_screen.dart';
import 'package:test_app/screens/file_management_screen.dart';
import 'package:test_app/screens/grid_screen.dart';
import 'package:test_app/screens/home.dart';
import 'package:test_app/screens/list_screen.dart';
import 'package:test_app/screens/load_json_screen.dart';
import 'package:test_app/screens/multi_widget_state_screen.dart';
import 'package:test_app/screens/provider_state_screen.dart';
import 'package:test_app/screens/row_column_screen.dart';
import 'package:test_app/screens/shared_preferences_screen.dart';
import 'package:test_app/screens/signalr_screen.dart';
import 'package:test_app/screens/simple_state_screen.dart';
import 'package:test_app/screens/social_share_screen.dart';
import 'package:test_app/screens/timeline_screen.dart';

import 'screens/game_screen.dart';

Map<String, Widget Function(BuildContext)> kRoutes = {
  Home.id: (context) => Home(),
  LoadJsonScreen.id: (context) => LoadJsonScreen(),
  MyTabController.id: (context) => MyTabController(),
  CardScreen.id: (context) => CardScreen(),
  ButtonScreen.id: (context) => ButtonScreen(),
  ListScreen.id: (context) => ListScreen(),
  GridScreen.id: (context) => GridScreen(),
  RowColumnScreen.id: (context) => RowColumnScreen(),
  SimpleStateScreen.id: (context) => SimpleStateScreen(color: Colors.green),
  MultiWidgetStateScreen.id: (context) => MultiWidgetStateScreen(),
  ProviderStateScreen.id: (context) => ProviderStateScreen(),
  BlocPatternStateScreen.id: (context) => BlocPatternStateScreen(),
  FileManagementScreen.id: (context) => FileManagementScreen(),
  SharedPreferencesScreen.id: (context) => SharedPreferencesScreen(),
  DataTableScreen.id: (context) => DataTableScreen(),
  TimelineScreen.id: (context) => TimelineScreen(),
  SignalRScreen.id: (context) => SignalRScreen(),
  DragAndDropScreen.id: (context) => DragAndDropScreen(),
  CanvasScreen.id: (context) => CanvasScreen(),
  SocialShareScreen.id: (context) => SocialShareScreen(),
  GameScreen.id: (context) => GameScreen(),
};
