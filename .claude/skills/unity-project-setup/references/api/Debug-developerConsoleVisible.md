<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Debug-developerConsoleVisible.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls whether the development console is visible.

The developer console is a window that can appear when a development build of your project is running. It is similar to the Console window in the Editor, but appears at runtime. The development console automatically appears when an error has been logged, and Debug.developerConsoleEnabled is true. For example:

```csharp
using UnityEngine;public class LogErrorScript : MonoBehaviour
{
    void Start()
    {
        Debug.LogError("I am an Error");
    }
}
```

You can close the development console when opened by using:

```csharp
using UnityEngine;public class CloseDevConsoleScript : MonoBehaviour
{
    void Start()
    {
        Debug.developerConsoleVisible = false;
    }
}
```

You can reopen the development console if at least one entry exists in the console by using:

```csharp
using UnityEngine;public class OpenDevConsoleScript : MonoBehaviour
{
    void Start()
    {
        Debug.developerConsoleVisible = true;
    }
}
```
