<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SpeedTreeImporter-enableHue.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets and sets an array of booleans to enable hue variation effect for each LOD.

Because the hue variation effect comes with an increased performance cost, you may want to only enable it on the SpeedTree assets that are nearest to the player. You can use this feature to improve performance by disabling the hue variation effect on some of your less detailed LOD levels where the models are far enough away from the camera that the absence of this effect is not noticeable. The array length that you supply must match the number of LOD levels in your SpeedTree asset, and typically would have true values at the start, and false values at the end. For example, if your SpeedTree asset has three LOD levels, you might pass an array of `[ true, true, false ]` to enable the hue variation effect on the first two LOD levels, but disable it on the third.
