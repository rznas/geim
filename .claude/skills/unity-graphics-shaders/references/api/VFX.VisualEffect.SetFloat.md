<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VFX.VisualEffect.SetFloat.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | The ID of the property. This is the same ID that Shader.PropertyToID returns. |
| name | The name of the property. |
| f | The new float value. |

### Description

Sets the value of a float property exposed in the blackboard.

Automatically changes overridden state for this property to true.

```csharp
using UnityEngine;
using UnityEngine.VFX;

class SetFloatExample : MonoBehaviour
{
    [SerializeField] VisualEffect m_Vfx;
    [SerializeField] float m_Frequency = 1f;
    [SerializeField] float m_Phase = 0f;

    static readonly int k_MyValuePropertyNameID = Shader.PropertyToID("MyValueProperty");

    void Update()
    {
        m_Vfx.SetFloat(k_MyValuePropertyNameID, Mathf.Cos(Time.time * m_Frequency + m_Phase));
    }
}
```
