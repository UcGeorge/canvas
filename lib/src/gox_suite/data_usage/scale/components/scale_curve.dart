import 'package:flutter/material.dart';

class ScaleDail extends StatelessWidget {
  const ScaleDail({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(24, 24),
      painter: RPSCustomPainter(),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9517261, size.height * 0.4464777);
    path_0.cubicTo(
        size.width * 0.9845311,
        size.height * 0.4384076,
        size.width * 1.005232,
        size.height * 0.4028920,
        size.width * 0.9935934,
        size.height * 0.3689188);
    path_0.cubicTo(
        size.width * 0.9714855,
        size.height * 0.3043719,
        size.width * 0.9384108,
        size.height * 0.2444835,
        size.width * 0.8959046,
        size.height * 0.1924348);
    path_0.cubicTo(
        size.width * 0.8398755,
        size.height * 0.1238304,
        size.width * 0.7691867,
        size.height * 0.07096295,
        size.width * 0.6900996,
        size.height * 0.03851500);
    path_0.cubicTo(
        size.width * 0.6110124,
        size.height * 0.006067054,
        size.width * 0.5259668,
        size.height * -0.004959732,
        size.width * 0.4425021,
        size.height * 0.006411384);
    path_0.cubicTo(
        size.width * 0.3590332,
        size.height * 0.01778246,
        size.width * 0.2797183,
        size.height * 0.05120045,
        size.width * 0.2115822,
        size.height * 0.1037054);
    path_0.cubicTo(
        size.width * 0.1434456,
        size.height * 0.1562098,
        size.width * 0.08859046,
        size.height * 0.2261808,
        size.width * 0.05187593,
        size.height * 0.3074201);
    path_0.cubicTo(
        size.width * 0.01516112,
        size.height * 0.3886589,
        size.width * -0.002279884,
        size.height * 0.4786607,
        size.width * 0.001097685,
        size.height * 0.5694464);
    path_0.cubicTo(
        size.width * 0.004475270,
        size.height * 0.6602366,
        size.width * 0.02856714,
        size.height * 0.7490089,
        size.width * 0.07123942,
        size.height * 0.8279062);
    path_0.cubicTo(
        size.width * 0.1036830,
        size.height * 0.8878929,
        size.width * 0.1461054,
        size.height * 0.9407589,
        size.width * 0.1961734,
        size.height * 0.9839152);
    path_0.cubicTo(
        size.width * 0.2223278,
        size.height * 1.006460,
        size.width * 0.2600436,
        size.height * 0.9967500,
        size.width * 0.2776095,
        size.height * 0.9660446);
    path_0.lineTo(size.width * 0.2776095, size.height * 0.9660446);
    path_0.cubicTo(
        size.width * 0.2949975,
        size.height * 0.9356473,
        size.width * 0.2859577,
        size.height * 0.8961964,
        size.width * 0.2607863,
        size.height * 0.8729464);
    path_0.cubicTo(
        size.width * 0.2270793,
        size.height * 0.8418125,
        size.width * 0.1983174,
        size.height * 0.8047232,
        size.width * 0.1758344,
        size.height * 0.7631518);
    path_0.cubicTo(
        size.width * 0.1432627,
        size.height * 0.7029330,
        size.width * 0.1248734,
        size.height * 0.6351696,
        size.width * 0.1222950,
        size.height * 0.5658705);
    path_0.cubicTo(
        size.width * 0.1197170,
        size.height * 0.4965714,
        size.width * 0.1330299,
        size.height * 0.4278759,
        size.width * 0.1610539,
        size.height * 0.3658661);
    path_0.cubicTo(
        size.width * 0.1890784,
        size.height * 0.3038562,
        size.width * 0.2309494,
        size.height * 0.2504473,
        size.width * 0.2829577,
        size.height * 0.2103705);
    path_0.cubicTo(
        size.width * 0.3349664,
        size.height * 0.1702937,
        size.width * 0.3955075,
        size.height * 0.1447857,
        size.width * 0.4592199,
        size.height * 0.1361063);
    path_0.cubicTo(
        size.width * 0.5229295,
        size.height * 0.1274263,
        size.width * 0.5878423,
        size.height * 0.1358433,
        size.width * 0.6482075,
        size.height * 0.1606107);
    path_0.cubicTo(
        size.width * 0.7085768,
        size.height * 0.1853781,
        size.width * 0.7625311,
        size.height * 0.2257321,
        size.width * 0.8052988,
        size.height * 0.2780978);
    path_0.cubicTo(
        size.width * 0.8348257,
        size.height * 0.3142491,
        size.width * 0.8583859,
        size.height * 0.3553549,
        size.width * 0.8751079,
        size.height * 0.3995866);
    path_0.cubicTo(
        size.width * 0.8875934,
        size.height * 0.4326241,
        size.width * 0.9194066,
        size.height * 0.4544241,
        size.width * 0.9517261,
        size.height * 0.4464777);
    path_0.lineTo(size.width * 0.9517261, size.height * 0.4464777);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.9517261, size.height * 0.4464777);
    path_1.cubicTo(
        size.width * 0.9845311,
        size.height * 0.4384076,
        size.width * 1.005232,
        size.height * 0.4028920,
        size.width * 0.9935934,
        size.height * 0.3689188);
    path_1.cubicTo(
        size.width * 0.9714855,
        size.height * 0.3043719,
        size.width * 0.9384108,
        size.height * 0.2444835,
        size.width * 0.8959046,
        size.height * 0.1924348);
    path_1.cubicTo(
        size.width * 0.8398755,
        size.height * 0.1238304,
        size.width * 0.7691867,
        size.height * 0.07096295,
        size.width * 0.6900996,
        size.height * 0.03851500);
    path_1.cubicTo(
        size.width * 0.6110124,
        size.height * 0.006067054,
        size.width * 0.5259668,
        size.height * -0.004959732,
        size.width * 0.4425021,
        size.height * 0.006411384);
    path_1.cubicTo(
        size.width * 0.3590332,
        size.height * 0.01778246,
        size.width * 0.2797183,
        size.height * 0.05120045,
        size.width * 0.2115822,
        size.height * 0.1037054);
    path_1.cubicTo(
        size.width * 0.1434456,
        size.height * 0.1562098,
        size.width * 0.08859046,
        size.height * 0.2261808,
        size.width * 0.05187593,
        size.height * 0.3074201);
    path_1.cubicTo(
        size.width * 0.01516112,
        size.height * 0.3886589,
        size.width * -0.002279884,
        size.height * 0.4786607,
        size.width * 0.001097685,
        size.height * 0.5694464);
    path_1.cubicTo(
        size.width * 0.004475270,
        size.height * 0.6602366,
        size.width * 0.02856714,
        size.height * 0.7490089,
        size.width * 0.07123942,
        size.height * 0.8279062);
    path_1.cubicTo(
        size.width * 0.1036830,
        size.height * 0.8878929,
        size.width * 0.1461054,
        size.height * 0.9407589,
        size.width * 0.1961734,
        size.height * 0.9839152);
    path_1.cubicTo(
        size.width * 0.2223278,
        size.height * 1.006460,
        size.width * 0.2600436,
        size.height * 0.9967500,
        size.width * 0.2776095,
        size.height * 0.9660446);
    path_1.lineTo(size.width * 0.2776095, size.height * 0.9660446);
    path_1.cubicTo(
        size.width * 0.2949975,
        size.height * 0.9356473,
        size.width * 0.2859577,
        size.height * 0.8961964,
        size.width * 0.2607863,
        size.height * 0.8729464);
    path_1.cubicTo(
        size.width * 0.2270793,
        size.height * 0.8418125,
        size.width * 0.1983174,
        size.height * 0.8047232,
        size.width * 0.1758344,
        size.height * 0.7631518);
    path_1.cubicTo(
        size.width * 0.1432627,
        size.height * 0.7029330,
        size.width * 0.1248734,
        size.height * 0.6351696,
        size.width * 0.1222950,
        size.height * 0.5658705);
    path_1.cubicTo(
        size.width * 0.1197170,
        size.height * 0.4965714,
        size.width * 0.1330299,
        size.height * 0.4278759,
        size.width * 0.1610539,
        size.height * 0.3658661);
    path_1.cubicTo(
        size.width * 0.1890784,
        size.height * 0.3038562,
        size.width * 0.2309494,
        size.height * 0.2504473,
        size.width * 0.2829577,
        size.height * 0.2103705);
    path_1.cubicTo(
        size.width * 0.3349664,
        size.height * 0.1702937,
        size.width * 0.3955075,
        size.height * 0.1447857,
        size.width * 0.4592199,
        size.height * 0.1361063);
    path_1.cubicTo(
        size.width * 0.5229295,
        size.height * 0.1274263,
        size.width * 0.5878423,
        size.height * 0.1358433,
        size.width * 0.6482075,
        size.height * 0.1606107);
    path_1.cubicTo(
        size.width * 0.7085768,
        size.height * 0.1853781,
        size.width * 0.7625311,
        size.height * 0.2257321,
        size.width * 0.8052988,
        size.height * 0.2780978);
    path_1.cubicTo(
        size.width * 0.8348257,
        size.height * 0.3142491,
        size.width * 0.8583859,
        size.height * 0.3553549,
        size.width * 0.8751079,
        size.height * 0.3995866);
    path_1.cubicTo(
        size.width * 0.8875934,
        size.height * 0.4326241,
        size.width * 0.9194066,
        size.height * 0.4544241,
        size.width * 0.9517261,
        size.height * 0.4464777);
    path_1.lineTo(size.width * 0.9517261, size.height * 0.4464777);
    path_1.close();

    Paint paint1Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.1825726;
    paint1Stroke.color = const Color(0xff19233E).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Stroke);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
