<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/qnx-touch-input.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Support touch input for QNX

The Unity QNX Player supports input via touch devices. To enable this, make sure you meet the following prerequisites and operating system configuration requirements.

## Prerequisites

- QNX Image has the required touch libraries and utilities installed.
- Touch configuration is set up for touch devices (QNX 7.0 doc / QNX 7.1 doc).
- `mtouch` (QNX 7.0 doc / QNX 7.1 doc) service is running.

## Configure QNX touch scaling

As the QNX Unity player requires the touch coordinates to be in screen coordinates, configure the following setup in the `scaling.conf` file:

1. Configure the QNX `scaling.conf` (QNX 7.0/QNX 7.1) file to use screen coordinates. For example, if you have a `1366x768` display, set `mode:scale` for the display resolution to `scaling.conf: 1366x768:mode=scale`.
2. Restart the `mtouch` service.

## Verify your setup

If you have installed the `events` (QNX 7.0/QNX 7.1) utility on the QNX image, you can use it to verify if the touch service is set up correctly. The reported coordinates (`pos`) should be in the range `[(0,0), (DisplayWidth, DisplayHeight)]`.

If the coordinates are outside the range, check if the scaling mode in `scaling.conf` is correct and the touch device specific parameters in the `mtouch.conf` (QNX 7.0/QNX 7.1) file are matching the used device.

## Additional resources

- Autodetect plug-ins for QNX
- Optional features
