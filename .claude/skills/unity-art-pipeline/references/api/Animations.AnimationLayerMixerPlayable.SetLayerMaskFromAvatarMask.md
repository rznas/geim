<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.AnimationLayerMixerPlayable.SetLayerMaskFromAvatarMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| layerIndex | The layer index. |
| mask | The AvatarMask used to create the new LayerMask. |

### Description

Sets the mask for the current layer.

This function generates a layer mask from the specified AvatarMask, and applies it to the specified Layer index. If you change the AvatarMask, you need to call this function again to update the layer mask.

```csharp
using System.Collections.Generic;
using UnityEngine;using UnityEngine.Playables;
using UnityEngine.Animations;public class LayerMixerPlayable : MonoBehaviour
{
    public AnimationClip clip1;
    public AnimationClip clip2;
    public Transform leftShoulder;    PlayableGraph m_Graph;
    AnimationLayerMixerPlayable m_Mixer;    public float mixLevel = 0.5f;    AvatarMask mask;    public void Start()
    {
        Animator animator = GetComponent<Animator>();        mask = new AvatarMask();
        mask.AddTransformPath(leftShoulder, true);        m_Graph = PlayableGraph.Create();
        var playableOutput = AnimationPlayableOutput.Create(m_Graph, "LayerMixer", animator);
        playableOutput.SetSourcePlayable(m_Mixer);        // Create two clip playables
        var clipPlayable1 = AnimationClipPlayable.Create(m_Graph, clip1);
        var clipPlayable2 = AnimationClipPlayable.Create(m_Graph, clip2);        // Create mixer playable
        m_Mixer = AnimationLayerMixerPlayable.Create(m_Graph, 2);        // Create two layers, second is setup to override the first layer and affect only left shoulder and childs
        m_Mixer.ConnectInput(0, clipPlayable1, 0, 1.0f);
        m_Mixer.ConnectInput(1, clipPlayable2, 0, mixLevel);        m_Mixer.SetLayerMaskFromAvatarMask(1, mask);        m_Graph.Play();
    }    public void Update()
    {
        m_Mixer.SetInputWeight(1, mixLevel);
    }    public void OnDestroy()
    {
        m_Graph.Destroy();
    }
}
```
