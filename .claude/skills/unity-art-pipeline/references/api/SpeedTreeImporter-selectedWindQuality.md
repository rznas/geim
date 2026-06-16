<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SpeedTreeImporter-selectedWindQuality.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets and sets an integer corresponding to the SpeedTreeWind enum values. The value is clamped by SpeedTreeImporter.bestWindQuality internally.

The possible wind quality values are as follows:

`0` - Off
 `1` - Fastest
 `2` - Fast
 `3` - Better
 `4` - Best
 `5` - Palm (only available on palm-like trees)

The SpeedTree Modeler determines the SpeedTreeImporter.bestWindQuality value, which is then used to limit the available `selectedWindQuality` values. You can lower the wind quality of a SpeedTree model in the Unity Editor based on the application's needs, but you can't improve the wind quality without the SpeedTree Modeler, which generates the necessary wind data in the SpeedTree model file during the export process. 

To change this setting for a specific LOD, see SpeedTreeImporter.windQualities and SpeedTreeImporter.enableSettingOverride.
