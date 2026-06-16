<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.ProjectAuditor.Editor.Descriptor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Descriptor defines a potential problem and a recommended course of action.

### Properties

| Property | Description |
| --- | --- |
| Areas | Affected areas |
| DefaultSeverity | Default Severity of the issue. |
| Description | Description of the issue. |
| DocumentationUrl | URL to documentation. |
| Fixer | Optional Auto-Fixer |
| Id | An unique identifier for the issue. IDs must have exactly 3 upper case characters, followed by 4 digits. |
| IsEnabledByDefault | Returns true if the issue is enabled by default. |
| MaximumVersion | Maximum Unity version this issue applies to. If not specified, the issue applies to all versions. |
| MessageFormat | Message used to describe a specific instance of the issue. |
| Method | Name of the method of a known code API issue. |
| MinimumVersion | Minimum Unity version this issue applies to. If not specified, the issue applies to all versions. |
| Platforms | Affected platforms. If null, the issue applies to all platforms. |
| Recommendation | Recommendation to fix the issue. |
| ReturnType | Return type of a known code API issue. See https://jira.unity3d.com/browse/PROFB-318 for more details on why this is useful. |
| Title | Issue title |
| Type | Name of the type (namespace and class/struct) of a known code API issue. |
| Value | The evaluated value of a know code API issue. |

### Constructors

| Constructor | Description |
| --- | --- |
| Descriptor | Initializes and returns an instance of Descriptor. |

### Public Methods

| Method | Description |
| --- | --- |
| Equals | Returns true if the Descriptor is equal to a given Descriptor, false otherwise. |
| GetHashCode | Returns the hash code for the Descriptor's Issue ID. |
