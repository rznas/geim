<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AscentCalculationMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Method used for calculating a font's ascent.

The ascent is the distance from the baseline to the top of the font. Font designers define this differently within the metrics of various fonts: some fonts will use the bounding box height, some will use cap height, and others will account for diacritics such as accent marks. Because these differences can affect vertical alignment of text, Unity offers multiple methods of determining the ascent value to use internally.

See [https://en.wikipedia.org/wiki/Typeface#Font_metrics](https://en.wikipedia.org/wiki/Typeface#Font_metrics) for additional information about ascent and font metrics.

### Properties

| Property | Description |
| --- | --- |
| Legacy2x | Legacy bounding box method. |
| FaceAscender | Ascender method. |
| FaceBoundingBox | Bounding box method. |
