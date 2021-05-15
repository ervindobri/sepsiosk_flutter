import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDStickyHeader extends StatelessWidget {
  XDStickyHeader({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(start: 11.0, end: 11.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              gradient: LinearGradient(
                begin: Alignment(-1.0, 0.0),
                end: Alignment(1.0, 0.0),
                colors: [const Color(0xffd52146), const Color(0xffe0092c)],
                stops: [0.0, 1.0],
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x47d52146),
                  offset: Offset(0, 3),
                  blurRadius: 57,
                ),
              ],
            ),
          ),
        ),
        Container(),
        Container(),
        Container(),
        Container(),
        Container(),
        Container(),
        Pinned.fromPins(
          Pin(size: 52.0, middle: 0.5),
          Pin(start: 0.0, end: 0.0),
          child:
              // Adobe XD layer: 'NoPath' (shape)
              Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage(''),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(size: 14.2, middle: 0.984),
          Pin(start: 29.0, end: 28.8),
          child:
              // Adobe XD layer: 'Icon map-search' (shape)
              SvgPicture.string(
            _svg_pnw8qo,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        Pinned.fromPins(
          Pin(size: 26.7, middle: 0.3144),
          Pin(size: 4.0, middle: 0.7059),
          child: SvgPicture.string(
            _svg_vp7ji,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}

const String _svg_pnw8qo =
    '<svg viewBox="1216.1 29.0 14.2 14.2" ><path transform="translate(1214.66, 27.56)" d="M 11.80171966552734 9.917462348937988 C 12.33170604705811 9.047012329101563 12.61200618743896 8.047533988952637 12.61194133758545 7.028432369232178 C 12.61194133758545 3.941157341003418 10.11386108398438 1.44123101234436 7.025970458984375 1.439999580383301 C 3.940850019454956 1.44092321395874 1.440000057220459 3.941157579421997 1.440000057220459 7.027817726135254 C 1.440000057220459 10.11170673370361 3.941157817840576 12.61163234710693 7.027817249298096 12.61163234710693 C 8.086770057678223 12.61163234710693 9.073379516601563 12.31241703033447 9.916539192199707 11.80110359191895 L 13.71614456176758 15.60040187835693 L 15.60040187835693 13.7152214050293 L 11.80171966552734 9.917462348937988 Z M 7.027202129364014 10.48418617248535 C 5.118010520935059 10.47956943511963 3.574526786804199 8.936700820922852 3.57114052772522 7.031511306762695 C 3.573853254318237 5.123805522918701 5.119497776031494 3.577885627746582 7.027202606201172 3.574834108352661 C 8.935470581054688 3.579759359359741 10.47956943511963 5.122627735137939 10.48357105255127 7.031511306762695 C 10.47956943511963 8.93454647064209 8.934853553771973 10.47956943511963 7.027201652526855 10.48418617248535 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vp7ji =
    '<svg viewBox="384.7 48.0 26.7 4.0" ><path transform="translate(375.0, 48.0)" d="M 34.3273811340332 0 C 34.44224548339844 0 34.55690002441406 0.009895481169223785 34.67006301879883 0.02957672066986561 L 34.67007064819336 0.02957737445831299 C 36.87982559204102 0.4138827323913574 36.87982559204102 3.586117267608643 34.67007064819336 3.970422744750977 L 34.67006301879883 3.970423460006714 C 34.55690002441406 3.990104675292969 34.4422492980957 4 34.3273811340332 4 L 11.67261505126953 4 C 11.5577507019043 4 11.44310092926025 3.990104675292969 11.32993602752686 3.970423698425293 L 11.32993030548096 3.970422744750977 C 9.120174407958984 3.586117267608643 9.120175361633301 0.4138829410076141 11.32993125915527 0.02957773022353649 L 11.32993984222412 0.02957613952457905 C 11.44310474395752 0.009895284660160542 11.55775451660156 0 11.6726188659668 0 L 34.3273811340332 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
