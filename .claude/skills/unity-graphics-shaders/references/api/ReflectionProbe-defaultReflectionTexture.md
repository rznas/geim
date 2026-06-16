<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ReflectionProbe-defaultReflectionTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Adds a delegate to get notifications when the default specular Cubemap is changed.

Additional resources: ReflectionProbe.

```csharp
using UnityEngine;
using UnityEngine.Rendering;public class ReflectionProbeManager : MonoBehaviour
{
    private static void OnSetDefaultReflection(Texture cubemap)
    {
        Debug.Log("Default reflection cubemap was changed.");
    }    void Start()
    {
        ReflectionProbe.defaultReflectionTexture += OnSetDefaultReflection;
    }    void OnDestroy()
    {
        ReflectionProbe.defaultReflectionTexture -= OnSetDefaultReflection;
    }
}
```
