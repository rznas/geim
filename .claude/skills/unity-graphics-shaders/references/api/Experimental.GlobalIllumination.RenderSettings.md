<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.GlobalIllumination.RenderSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Render settings related to Global Illumination.

`RenderSettings` classes contain values for visual elements in your scene.

Adjust the properties of a `RenderSettings` class to change how a scene looks at runtime.

To change other render settings, use the UnityEngine.RenderSettings class.

```csharp
using UnityEngine;
using static UnityEngine.Experimental.GlobalIllumination.RenderSettings;public class MonoBehaviourScript : MonoBehaviour
{
    [SerializeField]
    private bool enableRadianceAmbientProbe = true;    void Start()
    {
        useRadianceAmbientProbe = enableRadianceAmbientProbe; // Simply set true/false as needed        Debug.Log("Radiance Ambient Probe Enabled: " + useRadianceAmbientProbe);
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| useRadianceAmbientProbe | If enabled, ambient trilight will be sampled using the old radiance sampling method. |
