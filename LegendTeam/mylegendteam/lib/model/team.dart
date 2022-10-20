import 'package:flutter/material.dart';

class Team {
  final String _playerName;
  final String _idolPlayer;
  final String _playerAge;
  final String _playerDetail;
  final String _playerImage;
  final String _playerVideos;
  final List<String> _favPlayers;

  get playerName => this._playerName;
  get idolPlayer => this._idolPlayer;
  get playerAge => this._playerAge;
  get playerDetail => this._playerDetail;
  get playerImage => this._playerImage;
  get playerVideos => this._playerVideos;
  get favPlayers => this._favPlayers;

  Team(this._playerName, this._idolPlayer, this._playerAge, this._playerDetail,
      this._playerImage, this._playerVideos, this._favPlayers);
}
