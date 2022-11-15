import 'package:flutter/cupertino.dart' show CupertinoSwitch;
import 'package:flutter/material.dart';
import 'package:fluttercomponents/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100.0;
  bool _sliderEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider and Check'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 600,
            activeColor: AppTheme.primaryLigth,
            // divisions: 10,
            value: _sliderValue,
            onChanged: _sliderEnable
                ? (value) {
                    setState(() {
                      _sliderValue = value;
                    });
                  }
                : null,
          ),
          CheckboxListTile(
            activeColor: AppTheme.primaryLigth,
            title: const Text('Habilitar Slider'),
            value: _sliderEnable,
            onChanged: (value) {
              setState(() {
                _sliderEnable = value ?? true;
              });
            },
          ),
          Switch(
            value: _sliderEnable,
            onChanged: (value) => setState(() {
              _sliderEnable = value;
            }),
          ),
          CupertinoSwitch(
            // title: const Text('Habilitar Slider'),
            activeColor: AppTheme.primaryLigth,
            value: _sliderEnable,
            onChanged: (value) => setState(() {
              _sliderEnable = value;
            }),
          ),
          Image(
            image: const NetworkImage(
                'https://assets.nintendo.com/image/upload/f_auto/q_auto/dpr_2.625/c_scale,w_400/ncom/es_MX/games/switch/n/naruto-shippuden-ultimate-ninja-storm-3-full-burst-switch/description-image'),
            // fit: BoxFit.contain,
            width: _sliderValue,
          )
        ],
      ),
    );
  }
}
