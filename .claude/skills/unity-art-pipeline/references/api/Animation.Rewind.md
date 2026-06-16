<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animation.Rewind.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name of the animation to rewind. |

### Description

Rewinds the animation named `name`.

Sets the time of the animation named `name` to 0. If there is no animation named `name`, nothing happens.

```csharp
using UnityEngine;

[RequireComponent(typeof(Animation))]
public class AnimationRewindExample : MonoBehaviour
{
    public AnimationClip walkClip;

    Animation m_Animation;

    void Start()
    {
        m_Animation = GetComponent<Animation>();

        if (walkClip != null)
        {
            m_Animation.AddClip(walkClip, "Walk");
            m_Animation.Play("Walk");
        }
    }

    private void Update()
    {
        if (m_Animation.IsPlaying("Walk"))
        {
            // This printed value increases with each Update because the clip is playing.
            Debug.Log($"Walk state time: {m_Animation["Walk"].time}.");

            if (Input.GetKeyDown(KeyCode.R))
            {
                m_Animation.Rewind("Walk");
                // The new state time will be 0.
                Debug.Log($"Walk state time: {m_Animation["Walk"].time}.");
            }
        }
    }
}
```

Additional resources: AnimationState.time.

### Description

Rewinds all animations.

Sets the time of all animations to 0. Additional resources: AnimationState.time.
