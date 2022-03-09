part of 'widget.dart';

class Checkoutcard extends StatelessWidget {
  final CartModel carts;
  Checkoutcard(this.carts);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: bgColor4, borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: NetworkImage(carts.product.galleries[0].url))),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  carts.product.name,
                  overflow: TextOverflow.ellipsis,
                  style: primaryTextStyle.copyWith(fontWeight: semibold),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  '\$${carts.product.price}',
                  style: priceTextStyle,
                )
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            carts.quantity.toString(),
            style: secondaryTextStyle.copyWith(fontSize: 12),
          )
        ],
      ),
    );
  }
}
