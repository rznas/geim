<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Compass.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface into compass functionality.

### Properties

| Property | Description |
| --- | --- |
| enabled | Use to enable or disable compass. Note, that if you want Input.compass.trueHeading property to contain a valid value, you must also enable location updates. To do this, call Input.location.Start().Note: On the web platform, the compass is available only with an HTTPS connection, except during development when you might use http://localhost. |
| headingAccuracy | Accuracy of heading reading in degrees. |
| magneticHeading | The heading in degrees relative to the magnetic North Pole. (Read Only) |
| rawVector | The raw geomagnetic data measured in microteslas. (Read Only) |
| timestamp | Indicates the time elapsed since the compass heading was last updated. (Read Only) |
| trueHeading | The heading in degrees relative to the geographic North Pole. (Read Only) |
