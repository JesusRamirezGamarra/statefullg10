import 'package:flutter/material.dart';
import 'package:statefullg10/models/deport_model.dart';

class ItemDeportWidget extends StatefulWidget {
  final DeportModel deporte;
  final VoidCallback onTap;
  final bool isOnFavoritListContainer;
  ItemDeportWidget({
    required this.deporte,
    required this.onTap,
    required this.isOnFavoritListContainer,
  });

  @override
  State<ItemDeportWidget> createState() => _ItemDeportWidgetState();
}

class _ItemDeportWidgetState extends State<ItemDeportWidget> {
  @override
  Widget build(BuildContext context) {
    final bool isFavorite = widget.deporte.isFavorite;
    final bool isInFavoriteList = widget.isOnFavoritListContainer;
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.orange, width: 2),
          // color: widget.isOnFavoritListContainer
          //     ? Colors.white
          //     : widget.deporte.isFavorite
          //         ? Colors.orange
          //         : Colors.white,
          color: _getBackgroundColor(isFavorite, isInFavoriteList),                  
        ),
        child: Text(
          widget.deporte.name,
          style: TextStyle(
            // color: widget.isOnFavoritListContainer
            //     ? Colors.black
            //     : widget.deporte.isFavorite
            //         ? Colors.white
            //         : Colors.black,
            color: _getTextColor(isFavorite, isInFavoriteList),
          ),
        ),
      ),
    );
  }



  Color _getBackgroundColor(bool isFavorite, bool isInFavoriteList) {
      if (isInFavoriteList) {
        return Colors.white;
      }
      return isFavorite ? Colors.orange : Colors.white;
  }
  Color _getTextColor(bool isFavorite, bool isInFavoriteList) {
    if (isInFavoriteList) {
      return Colors.black;
    }
    return isFavorite ? Colors.white : Colors.black;
  }

}