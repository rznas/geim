<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightProbeGroup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies where and how to bake a list of light probes.

Light Probe Groups act only as input for Unity’s light baking system and have no direct impact on rendering.

Light Probe Groups do not affect probes used by other systems such as Reflection Probes or the Adaptive Probe Volumes.

Additional resources: LightProbes.

```csharp
using System.Collections.Generic;
using UnityEngine;// This script generates uniform grids of light probes. Add it to a game
// object and use the context menu of the script to update the positions
// of the probes in the associated Light Probe Group.
[RequireComponent(typeof(LightProbeGroup))]
public class ProbePlacement : MonoBehaviour
{
    public uint SizeX = 8;
    public uint SizeY = 4;
    public uint SizeZ = 4;    [ContextMenu("Update Positions")]
    void Place()
    {
        var positions = new List<Vector3>();
        for (uint x = 0; x < SizeX; x++)
        {
            for (uint y = 0; y < SizeY; y++)
            {
                for (uint z = 0; z < SizeZ; z++)
                {
                    positions.Add(new Vector3(x, y, z));
                }
            }
        }
        gameObject.GetComponent<LightProbeGroup>().probePositions = positions.ToArray();
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| dering | Removes ringing from probes if enabled (Editor only). |
| probePositions | Editor only function to access and modify probe positions. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| enabled | Enabled Behaviours are Updated, disabled Behaviours are not. |
| isActiveAndEnabled | Checks whether a component is enabled, attached to a GameObject that is active in the hierarchy, and the component's OnEnable has been called. |
| gameObject | The game object this component is attached to. A component is always attached to a game object. |
| tag | The tag of this game object. |
| transform | The Transform attached to this GameObject. |
| transformHandle | The TransformHandle of this GameObject. |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| BroadcastMessage | Calls the method named methodName on every MonoBehaviour in this game object or any of its children. |
| CompareTag | Checks the GameObject's tag against the defined tag. |
| GetComponent | Gets a reference to a component of type T on the same GameObject as the component specified. |
| GetComponentInChildren | Gets a reference to a component of type T on the same GameObject as the component specified, or any child of the GameObject. |
| GetComponentIndex | Gets the index of the component on its parent GameObject. |
| GetComponentInParent | Gets a reference to a component of type T on the same GameObject as the component specified, or any parent of the GameObject. |
| GetComponents | Gets references to all components of type T on the same GameObject as the component specified. |
| GetComponentsInChildren | Gets references to all components of type T on the same GameObject as the component specified, and any child of the GameObject. |
| GetComponentsInParent | Gets references to all components of type T on the same GameObject as the component specified, and any parent of the GameObject. |
| SendMessage | Calls the method named methodName on every MonoBehaviour in this game object. |
| SendMessageUpwards | Calls the method named methodName on every MonoBehaviour in this game object and on every ancestor of the behaviour. |
| TryGetComponent | Gets the component of the specified type, if it exists. |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Static Methods

| Method | Description |
| --- | --- |
| Destroy | Removes a GameObject, component, or asset. |
| DestroyImmediate | Destroys the specified object immediately. Use with caution and in Edit mode only. |
| DontDestroyOnLoad | Do not destroy the target Object when loading a new Scene. |
| FindAnyObjectByType | Retrieves any active loaded object of Type type. |
| FindObjectsByType | Retrieves a list of all loaded objects of Type type. |
| Instantiate | Clones the object original and returns the clone. |
| InstantiateAsync | Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |
