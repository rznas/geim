<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorSettings-referencedClipsExactNaming.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls which referenced clips an humanoid rig is able to update when using @convention files.

When referenced clips are present in the same directory as a Human rig asset, an "Update referenced clips" button is available in the Inspector, under "Rig".

 When this setting is true, the button will only be available if the rig asset name matches the referenced clip names exactly. These are the referenced clips that will get updated. For example if `player@walk` and `player@run` are present in the same folder as `player` and `player2`, only `player` will display the "Update referenced clips" button in the inspector.

 When this setting is set to false, the button is available for all rigs whose asset names start with the referenced clip names. Prior to Unity 6, any of these rigs were able to update the referenced clips. In the example above, both the `player` and `player2` rig assets display the **Update referenced clips** button in the Inspector window. From Unity 6, users can control the behavior by changing the `ReferencedClipsExactNaming` setting.

 You can read more on referenced clips by looking at the Importing animations using multiple model files section of the User Manual.
