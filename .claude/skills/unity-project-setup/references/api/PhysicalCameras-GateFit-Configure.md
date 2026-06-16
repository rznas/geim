<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/PhysicalCameras-GateFit-Configure.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Configure Gate Fit

The **Gate Fit** mode you choose determines how Unity resizes the resolution gate (and consequently, the camera’s view frustum). The film gate always stays the same size.

The following sections provide more details on each Gate Fit mode.

### Vertical

When **Gate Fit** is set to **Vertical**, Unity fits the resolution gate to the height (Y axis) of the film gate. Any change you make to the sensor width (**Sensor Size > X**) has no effect on the rendered image.

If the sensor **aspect ratio** is larger than the game view aspect ratio, Unity crops the rendered image at the sides:

If the sensor aspect ratio is smaller than the game view aspect ratio, Unity overscans the rendered image at the sides:

### Horizontal

When **Gate Fit** is set to **Horizontal**, Unity fits the resolution gate to the width (X axis) of the film gate. Any change you make to the sensor height (Sensor Size > Y) has no effect on the rendered image.

If the sensor aspect ratio is larger than the Game view aspect ratio, Unity overscans the rendered image on the top and bottom:

If the sensor aspect ratio is smaller than the game view aspect ratio, the rendered image is cropped on the top and bottom.

### None

When Gate Fit is set to None, Unity fits the resolution gate to the width and height (X and Y axes) of the film gate. Unity stretches the rendered image to fit the Game view aspect ratio.

### Fill and Overscan

When **Gate Fit** is set to **Fill** or **Overscan**, Unity automatically performs either a vertical or horizontal fit, depending on the resolution gate and film gate aspect ratios.

- **Fill** fits the resolution gate to the film gate’s smaller axis, and crops the rest of the **camera** image.
- **Overscan** fits the resolution gate to the film gate’s larger axis and overscans the area outside of the camera image’s boundaries.
