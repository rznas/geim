<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightmapParameters-modellingTolerance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Maximum size of gaps that can be ignored for GI (multiplier on pixel size).

Can be used to alleviate issues when objects are close together and the gap between the objects should not be used in the calculation of GI. In some cases having an object near a surface may cause a dark halo on the surface around the perimeter of the object because there is a small gap between the object and the surface where nearly no light will enter causing a very dark pixel. These dark pixels can look bad if they are partially visible and not completely obscured by the object. Increasing the modelling tolerance will make the GI calculation ignore the parts of the pixel that are very near another surface. The value is multiplier on the pixel size. If you want to ignore 5mm gaps with a real-time resolution of 2 texels per meter you would need a modelling tolerance of 0.01.
