<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SpeedTreeImporter-windQualities.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets and sets an array of integers of the wind qualities on each LOD. Values will be clamped by SpeedTreeImporter.bestWindQuality internally.

The available wind quality values are as follows:

`0` - Off
 `1` - Fastest
 `2` - Fast
 `3` - Better
 `4` - Best
 `5` - Palm (only available on palm-like trees)

Because the higher wind qualities come with an increased performance cost, you may want assign higher quality wind effects to only the SpeedTree assets that are nearest to the player. You can use this feature to improve performance by using lower-quality wind effects on some of your less detailed LOD levels where the models are far enough away from the camera that the lower quality of this effect is not noticeable. The array length that you supply must match the number of LOD levels in your SpeedTree asset, and typically would have true values at the start, and false values at the end. For example, if your SpeedTree asset has three LOD levels, you might pass an array of `[ 4, 3, 2]` to enable the "Best" wind effect on the nearest LOD level, the "Better" on the second LOD level, and "Faster" on the third and most distant LOD level.
