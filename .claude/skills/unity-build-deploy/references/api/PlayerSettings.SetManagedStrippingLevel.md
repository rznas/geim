<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings.SetManagedStrippingLevel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| level | The desired managed code stripping level. |
| buildTarget | The NamedBuildTarget. |

### Description

Sets the managed code stripping level for specified build target.

During the build process, Unity strips unused code from your project's managed and dynamically linked libraries. Stripping code results in a much smaller executable but can remove code you'd like to use.

 The ManagedStrippingLevel Enum defines the options you can use to specify the rate at which Unity should remove unused code or to disable code stripping altogether.

 Additional resources: GetManagedStrippingLevel, Managed code stripping.

 BuildTargetGroup is marked for deprecation in the future. Use NamedBuildTarget instead.
