<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AnimationState.AddMixingTransform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mix | The transform to animate. |
| recursive | Whether to also animate all children of the specified transform. |

### Description

Adds a transform which should be animated. This allows you to reduce the number of animations you have to create.

For example you might have a handwaving animation. You might want to play the hand waving animation on a idle character or on a walking character. Either you have to create 2 hand waving animations one for idle, one for walking. By using mixing the hand waving animation will have full control of the shoulder. But the lower body will not be affected by it, and continue playing the idle or walk animation. Thus you only need one hand waving animation.

If `recursive` is true all children of the `mix` transform will also be animated. If you don't call AddMixingTransform, all animation curves will be used.

```csharp
using UnityEngine;
using System.Collections;public class ExampleScript : MonoBehaviour
{
    public Animation anim;
    public Transform shoulder;    void Start()
    {
        // Add mixing transform
        anim["wave_hand"].AddMixingTransform(shoulder);
    }
}
```

Another example using a path:

```csharp
using UnityEngine;
using System.Collections;public class ExampleScript : MonoBehaviour
{
    public Animation anim;    void Start()
    {
        // Adds a mixing transform using a path instead
        Transform mixTransform = transform.Find("root/upper_body/left_shoulder");        // Add mixing transform
        anim["wave_hand"].AddMixingTransform(mixTransform);
    }
}
```
