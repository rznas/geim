<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VFX.VisualEffect.SendEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| eventName | The name of the event. |
| eventNameID | The ID of the event. This is the same ID that Shader.PropertyToID returns. |
| eventAttribute | Can be null or a VFXEventAttribute. To create a VFXEventAttribute, use VisualEffect.CreateVFXEventAttribute. |

### Description

Use this method to send a custom named event.

```csharp
// The following example triggers the default visual effect play event once every second.
using UnityEngine;
using UnityEngine.VFX;
public class SendEventExample : MonoBehaviour
{
    public VisualEffect m_VisualEffect;
    private float m_Waiting = 1.0f;    private void Update()
    {
        if (m_VisualEffect)
        {
            m_Waiting -= Time.deltaTime;
            if (m_Waiting < 0.0f)
            {
                m_Waiting = 1.0f;
                m_VisualEffect.SendEvent(VisualEffectAsset.PlayEventID);
            }
        }
    }
}
```

```csharp
// The following example triggers multiple events during the same frame every second.
using UnityEngine;
using UnityEngine.VFX;public class SendEventExample : MonoBehaviour
{
    public VisualEffect m_VisualEffect;
    private float m_Waiting = 1.0f;
    private int m_SpawnCountIdentifier;
    private int m_ColorIdentifier;
    private int m_EventNameIdentifier;    private void Start()
    {
        m_SpawnCountIdentifier = Shader.PropertyToID("spawnCount");
        m_ColorIdentifier = Shader.PropertyToID("color");
        m_EventNameIdentifier = Shader.PropertyToID("direct");
    }    private void Update()
    {
        if (m_VisualEffect)
        {
            m_Waiting -= Time.deltaTime;
            if (m_Waiting < 0.0f)
            {
                m_Waiting = 1.0f;
                var eventAttribute = m_VisualEffect.CreateVFXEventAttribute();
                // Red
                eventAttribute.SetFloat(m_SpawnCountIdentifier, 1);
                eventAttribute.SetVector3(m_ColorIdentifier, new Vector3(1, 0, 0));
                m_VisualEffect.SendEvent(m_EventNameIdentifier, eventAttribute);
                // Blue
                eventAttribute.SetFloat(m_SpawnCountIdentifier, 3);
                eventAttribute.SetVector3(m_ColorIdentifier, new Vector3(0, 0, 1));
                m_VisualEffect.SendEvent(m_EventNameIdentifier, eventAttribute);
                // Green
                eventAttribute.SetFloat(m_SpawnCountIdentifier, 2);
                eventAttribute.SetVector3(m_ColorIdentifier, new Vector3(0, 1, 0));
                m_VisualEffect.SendEvent(m_EventNameIdentifier, eventAttribute);
            }
        }
    }
}
```
