<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator.GetLayerIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| layerName | The name of the animation layer to seek. |

### Returns

**int** The index of the specified layer. Returns -1 if the layer name is not found.

### Description

Returns the index of the animation layer with the given name.

You can use Animator.GetLayerName to retrieve the name of an animation layer using its index.

```csharp
using UnityEngine;

// This example demonstrates how to use the Animator.GetLayerIndex method to get the index of a layer by name and then
// use it to set the weight of the layer.
[RequireComponent(typeof(Animator))]
public class GetLayerIndexExample : MonoBehaviour
{
    public string layerName = "Injured";
    public float weightDelta = 0.1f;

    private Animator m_Animator;
    private int m_LayerIndex;

    void Start()
    {
        m_Animator = GetComponent<Animator>();

        // Get the index of the layer by name
        m_LayerIndex = m_Animator.GetLayerIndex(layerName);

        if (m_LayerIndex == -1)
        {
            Debug.LogWarning("Layer not found: " + layerName);
        }
    }

    void Update()
    {
        if (m_LayerIndex == -1)
        {
            return;
        }

        // Increase the weight of the layer when the Up arrow key is pressed
        if (Input.GetKeyDown(KeyCode.UpArrow))
        {
            var currentWeight = m_Animator.GetLayerWeight(m_LayerIndex);
            m_Animator.SetLayerWeight(m_LayerIndex, currentWeight + weightDelta);
        }
    }
}
```

Additional resources: AnimationLayers manual.
