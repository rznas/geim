<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationClip-legacy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Set to true if the AnimationClip will be used with the Legacy Animation component ( instead of the Animator ).

```csharp
// Create a new MonoBehaviour in your project and paste in the following code.

using UnityEngine;

// The example creates a new MonoBehaviour that is used alongside a Camera component.
// At runtime, the component will create a procedural clip to animate the Camera field of view
// property and automatically play that clip on an Animation component.
[RequireComponent(typeof(Camera))]
public class ProceduralFieldOfViewAnimation : MonoBehaviour
{
    void OnEnable()
    {
        AnimationClip clip = new AnimationClip();
        AnimationCurve curve = AnimationCurve.Linear(0.0f, 60.0f, 10.0f, 90.0f);
        clip.SetCurve("", typeof(Camera), "field of view", curve);
        clip.legacy = true;

        if (!TryGetComponent<Animation>(out var animation))
            animation = gameObject.AddComponent<Animation>();

        animation.AddClip(clip, "animfov");
        animation.Play("animfov");
    }
}
```
