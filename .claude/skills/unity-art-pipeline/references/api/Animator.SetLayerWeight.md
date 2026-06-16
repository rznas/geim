<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator.SetLayerWeight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| layerIndex | The layer index. |
| weight | The new layer weight which is a value between 0 and 1. |

### Description

Changes the weight of the layer at a specific index.

If the specified layer does not exist, this method does nothing.

```csharp
using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[RequireComponent(typeof(Animator))]
public class Weapon : MonoBehaviour
{
    // This example demonstrates how to animate the weight of a layer, from 0 to 1, with a coroutine.
    public float transitionDuration = 2f;
    public string layerName;
    private Animator m_Animator;

    void Start()
    {
        m_Animator = GetComponent<Animator>();
        if (!string.IsNullOrEmpty(layerName) && transitionDuration > Mathf.Epsilon)
        {
            // Get the layer index from the layer name.
            int layerIndex = m_Animator.GetLayerIndex(layerName);
            // The coroutine sets the layer weight at each frame until it reaches 1f.
            StartCoroutine(FadeInWeaponLayer(layerIndex, transitionDuration));
        }
    }

    IEnumerator FadeInWeaponLayer(int layerIndex, float duration)
    {
        float time = 0f;
        // Assume a starting weight of 0f.
        float startingWeight = 0f;
        float targetWeight = 1f;

        while (time < duration)
        {
            // Get the value of the weight between 0 and 1 based on the accumulated time.
            float layerWeight = Mathf.Lerp(startingWeight, targetWeight, time / duration);
            // Set the weight of the layer based on its index.
            m_Animator.SetLayerWeight(layerIndex, layerWeight);
            time += Time.deltaTime;
            // this pauses the coroutine until the next frame.
            yield return null;
        }
        // Finish the coroutine and make sure to set the exact target weight.
        m_Animator.SetLayerWeight(layerIndex, targetWeight);
    }
}
```
