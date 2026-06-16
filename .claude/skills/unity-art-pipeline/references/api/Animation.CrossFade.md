<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animation.CrossFade.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| animation | The name of the animation in the `Animation` component to crossfade to. |
| fadeLength | The duration of the crossfade in seconds. Negative values are clamped to 0 seconds. |
| mode | The layer behavior of the crossfade. This controls whether the crossfade is with animations on all layers or animations on the same later as `animation`. |

### Description

Fades in the animation with the name `animation` over a period of time defined by `fadeLength`.

If the mode is set to PlayMode.StopSameLayer, animations on the same layer as `animation` are faded out while `animation` is faded in. if the mode is set to PlayMode.StopAll, all animations are faded out while `animation` is faded in.

If the animation is not set to be looping, it will be stopped and rewound after playing.

The following example demonstrates how to switch between two animations using the CrossFade method.

```csharp
using UnityEngine;

[RequireComponent(typeof(Animation))]
public class AnimationCrossFadeExample : MonoBehaviour
{
    public bool IsRunning = false;
    Animation m_Animation;

    void Start()
    {
        m_Animation = GetComponent<Animation>();

        if (m_Animation.GetClip("walk") == null)
            Debug.LogError("Missing walk clip");

        if (m_Animation.GetClip("run") == null)
            Debug.LogError("Missing run clip");

        m_Animation.Play("walk");
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            IsRunning = !IsRunning;
            m_Animation.CrossFade(IsRunning ? "run" : "walk", .5f);
        }
    }
}
```

Additional resources: Animation.Play, PlayMode.
