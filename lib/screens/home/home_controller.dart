import 'package:contact_abyss/screens/home/home_route.dart';
import 'package:contact_abyss/screens/home/home_view.dart';
import 'package:contact_abyss/services/game_service/game_data_service.dart';
import 'package:flutter/material.dart';

/// A controller for the [HomeRoute].
class HomeController extends State<HomeRoute> {
  /// A [GameDataService] instance that provides access to the game data. In this controller, the service is used
  /// to initialize the game data so the player can start a new game or load a saved game.
  final GameDataService gameDataService = GameDataService();

  /// A getter for the

  @override
  void initState() {
    // Initialize the game data.
    _initializeGameData();

    // TODO(Toglefritz): load saved games

    super.initState();
  }

  /// Initializes the game data by loading it from a JSON file saved in the assets folder. This game data determines
  /// the tree of decision points a player will traverse during the game.
  Future<void> _initializeGameData() async {
    // Load the game data from the JSON file.
    await gameDataService.loadGameFromAsset('assets/game_data/game_data.json');
  }

  /// Handles taps on the "New Game" button.
  void onNewGame() {
    // TODO(Toglefritz): Navigate to the game route
  }

  @override
  Widget build(BuildContext context) => HomeView(this);
}
