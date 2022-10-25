/*


  Expanded buildCoffeeChart(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: SfRadialGauge(axes: <RadialAxis>[
          RadialAxis(
            minimum: 0,
            maximum: 100,
            showLabels: false,
            showTicks: false,
            axisLineStyle: AxisLineStyle(
              thickness: 0.12,
              cornerStyle: CornerStyle.bothFlat,
              color: context.colors.primary.withOpacity(0.5),
              thicknessUnit: GaugeSizeUnit.factor,
            ),
            pointers: [
              RangePointer(
                value: 50,
                cornerStyle: CornerStyle.bothFlat,
                width: 0.12,
                sizeUnit: GaugeSizeUnit.factor,
                color: context.colors.primary,
              )
            ],
            annotations: [
              GaugeAnnotation(
                widget: Padding(
                  padding: context.paddingLowLeft + context.paddingNormalTop,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(SVGImagePaths.instance.coffeeCup),
                      Text("6/15"),
                    ],
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
 */