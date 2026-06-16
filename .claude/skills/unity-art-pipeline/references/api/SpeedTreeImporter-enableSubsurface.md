<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SpeedTreeImporter-enableSubsurface.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets and sets an array of booleans to enable the subsurface scattering effect for each LOD (affects only SpeedTree v8 assets).

This setting controls the light scattered out the back side of leaves and other two-sided SpeedTree materials. Because the subsurface scattering effect comes with an increased performance cost, you may want to enable it only on the SpeedTree assets that are nearest to the player. You can improve performance by disabling the subsurface scattering effect on less detailed LOD levels where the models are far enough away from the camera that the absence of this effect is not noticeable. The array length that you supply must match the number of LOD levels in your SpeedTree asset and typically has true values at the start and false values at the end. For example, if your SpeedTree asset has three LOD levels, you might pass an array of `[ true, true, false ]` to enable the subsurface scattering effect on the first two LOD levels, but disable it on the third.
