import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/utils.dart';

class HomeGridWidget extends StatelessWidget {
  final String icon;
  final String name;
  final Color color;
  final Color colorText;
  final double price;
  final int turn;

  const HomeGridWidget({
    Key? key,
    required this.icon,
    required this.name,
    required this.color,
    required this.colorText,
    this.price = 0.0,
    this.turn = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 24 * h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.05),
            offset: Offset(15, 20),
            blurRadius: 10,
          )
        ],
      ),
      child: Column(
        children: [
          Center(
            child: SvgPicture.asset(
              icon,
            ),
          ),
          SizedBox(height: 32 * h),
          Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36 * h,
              fontWeight: FontWeight.w500,
              color: colorText,
            ),
          ),
          Text(
            price.toString() + ' UZS',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36 * h,
              fontWeight: FontWeight.w500,
              color: colorText,
            ),
          ),
         
        ],
      ),
    );
  }
}
