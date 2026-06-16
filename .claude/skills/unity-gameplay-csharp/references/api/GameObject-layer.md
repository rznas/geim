<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject-layer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Integer identifying the layer the GameObject is assigned to.

This is the standard integer value which identifies the layer, not the LayerMask. You can use layers for selective rendering from cameras or to ignore Raycasts. Unity generates 32 layers, identified by standard integers from 0 to 31, and reserves some layers for its own systems. Refer to Create functional layers in Unity for a list of predefined layers and how to create your own new ones.

To convert this `layer` identifier to a LayerMask, refer to Set a layerMask. To obtain the `string` name of the layer from this `layer` identifier, use LayerMask.LayerToName. Refer to Layers in the Manual for a comprehensive guide to using layers.

```csharp
// Put the GameObject in the ignore raycast layer (2)using UnityEngine;[ExecuteInEditMode]
public class ExampleClass : MonoBehaviour
{
    void Awake()
    {
        //gameObject.layer uses only integers, but we can turn a layer name into a layer integer using LayerMask.NameToLayer()
        int LayerIgnoreRaycast = LayerMask.NameToLayer("Ignore Raycast");
        gameObject.layer = LayerIgnoreRaycast;
        Debug.Log("Current layer: " + gameObject.layer);
    }
}
```

Additional resources: LayerMask
