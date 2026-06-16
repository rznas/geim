<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderSettings-ambientProbe.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An ambient probe that captures environment lighting.

Unity generates the ambient probe when you generate lighting for a scene. If you haven't yet generated lighting in a scene, Unity uses a default ambient probe that matches the default skybox instead. Unity uses the ambient probe to make sure environment lighting affects your scene and the GameObjects in it by default.

Unity does not use this probe to affect GameObjects that you manually associate with Light Probes and light maps in the Global Illumination system. This is because manually generated Light Probes and light maps include an environment contribution by default.

As a result, adjusting this automatically generated ambient probe does not affect Enlighten Realtime Global Illumination and Baked Global Illumination lighting results. If you want to affect Global Illumination values with this ambient probe, select an AmbientMode and make any manual adjustments needed to use that mode.

 Additional resources: ambientMode, SphericalHarmonicsL2, The Lighting window.
