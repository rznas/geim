<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DynamicGI-updateThreshold.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines the percentage change in lighting intensity that triggers Unity to recalculate the real-time lightmap.

Enlighten Realtime Global Illumination maintains a record of the cumulative percentage change in lighting intensity since Unity last recalculated the lightmaps for a Scene. When this percentage change exceeds theDynamicGI._updateThreshold value, the Editor recalculates the lighting solution. The default value for this property is 1%. Lower values for this property cause the Editor to recalculate more frequently, which incurs more CPU load. Higher values reduce the number of times Unity recalculates, and incur less CPU load. This percentage is the maximum error tolerance before a solve happens. Setting a positive value for this property ensures that Unity only updates the Scene when you change the lighting. High values can cause popping artefacts and incorrect indirect irradiance values but you can set this property higher than 100% if you want to conserve more CPU cycles. A value of 0 for this property causes Unity to update the real-time lightmaps when you make even small changes to your lighting intensity. Any negative value turns off temporal coherence, so the system will be solved every frame even if there is no change to the lighting. Unity solves higher intensity values less frequently than lower ones. This is because humans perceive differences in low intensity lights more than differences in high intensity ones.
