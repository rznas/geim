<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BuildAssetBundlesParameters-subtarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The subtarget to build. (optional)

For certain platforms, setting a non-zero value for this property can modify the build behaviour.

Both this property and BuildAssetBundlesParameters.targetPlatform should remain unset to automatically use the target and subtarget as defined in the current Build Profile.

The valid values for this property correspond to target-specific enums, which are cast to ints. Examples of these enums include StandaloneBuildSubtarget, MobileTextureSubtarget, WebGLTextureSubtarget and XboxBuildSubtarget.

Usage examples:

- For building a headless server, when building for BuildTarget.StandaloneWindows, BuildTarget.StandaloneOSX or BuildTarget.StandaloneLinux64, specify StandaloneBuildSubtarget.Server (numeric value 1).
- For ETC2 texture compression, when building for BuildTarget.Android, or another mobile platform, specify MobileTextureSubtarget.ETC2 (numeric value 5).

Additional resources: BuildPlayerOptions.subtarget, EditorUserBuildSettings.standaloneBuildSubtarget, EditorUserBuildSettings.androidBuildSubtarget, EditorUserBuildSettings.webGLBuildSubtarget, EditorUserBuildSettings.ps4BuildSubtarget.
