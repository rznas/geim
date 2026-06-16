<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporter-avatarSetup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Avatar generation of the imported model.

This property depends on the value of ModelImporter.animationType:

- ModelImporterAnimationType.None or ModelImporterAnimationType.Legacy sets this property to ModelImporterAvatarSetup.NoAvatar because Avatar generation does not support the None or Legacy animation types.

- ModelImporterAnimationType.Generic supports any value.

- ModelImporterAnimationType.Human requires an avatar to import its animation. You must use either ModelImporterAvatarSetup.CreateFromThisModel, ModelImporterAvatarSetup.CopyFromOther or set ModelImporterAvatarSetup.autoGenerateAvatarMappingIfUnspecified to true .
