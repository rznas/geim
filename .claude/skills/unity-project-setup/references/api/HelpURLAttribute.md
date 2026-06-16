<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HelpURLAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provide a custom documentation URL for a class.

The provided URL is expected to be an absolute path. If no file is found at the URL, the path is resolved relative to the Unity documentation, which can be either the manual or scripting reference.

```csharp
using UnityEngine;
using UnityEditor;[HelpURL("http://example.com/docs/MyComponent.html")]
public class MyComponent
{
}
```

### Properties

| Property | Description |
| --- | --- |
| URL | The documentation URL specified for this class. |

### Constructors

| Constructor | Description |
| --- | --- |
| HelpURLAttribute | Initialize the HelpURL attribute with a documentation url. |
