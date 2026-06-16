<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.NamedBuildTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Build Target by name. This allows to describe and identify build targets that are not fully represented by BuildTargetGroup and BuildTarget.

### Static Properties

| Property | Description |
| --- | --- |
| Android | Android. |
| EmbeddedLinux | EmbeddedLinux. |
| iOS | iOS. |
| LinuxHeadlessSimulation | LinuxHeadlessSimulation. |
| NintendoSwitch | Nintendo Switch. |
| NintendoSwitch2 | Nintendo Switch 2. |
| PS4 | PS4. |
| PS5 | PS5. |
| QNX | QNX. |
| Server | Server. |
| Standalone | Desktop Standalone. |
| tvOS | TvOS. |
| Unknown | Unknown. |
| VisionOS | Apple visionOS. |
| WebGL | WebGL. |
| WindowsStoreApps | Windows Store Apps. |
| XboxOne | Xbox One. |

### Properties

| Property | Description |
| --- | --- |
| TargetName | Name of the build target. |

### Public Methods

| Method | Description |
| --- | --- |
| ToBuildTargetGroup | Returns the appropriate BuildTargetGroup that corresponds to the specified NamedBuildTarget. |

### Static Methods

| Method | Description |
| --- | --- |
| FromBuildTargetGroup | Returns the appropriate NamedBuildTarget that corresponds to the specified BuildTargetGroup. |
