<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporterGenerateAnimations.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Animation generation options for ModelImporter. These options relate to the legacy Animation system, they should only be used when ModelImporter.animationType==ModelImporterAnimationType.Legacy.

Additional resources: ModelImporter.generateAnimations.

### Properties

| Property | Description |
| --- | --- |
| None | Do not generate animations. |
| GenerateAnimations | Default animation import mode (All animations are stored in the root object). |
| InRoot | Generate animations in the transform root objects. |
| InOriginalRoots | Generate animations in the root objects of the animation package. |
| InNodes | Generate animations in the objects that animate. |
