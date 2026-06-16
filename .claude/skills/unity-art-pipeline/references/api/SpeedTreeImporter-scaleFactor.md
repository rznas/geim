<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SpeedTreeImporter-scaleFactor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

How much to scale the tree model compared to what is in the imported SpeedTree model file.

In the Unity Editor, the SpeedTreeImporter provides a dropdown with the following unit conversion options, which drive the `scaleFactor` value:

`0` - LeaveAsIs : 1.0 
 `1` - FeetToMeters : 0.3048 
 `2` - CentimetersToMeters : 0.01 
 `3` - InchesToMeters : 0.0254 
 `4` - CustomConversion : user specified value


By default, the SpeedTree Modeler exports units in feet. Because Unity's default units are meters, the default value for `scaleFactor` is set to `0.3048`.
