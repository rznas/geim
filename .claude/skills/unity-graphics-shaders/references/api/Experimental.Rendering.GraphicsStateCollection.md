<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.GraphicsStateCollection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Collection of shader variants and associated graphics states.

Use graphics state collections to record shader variants and graphics states encountered at runtime and prewarm shader variants.

Each shader variant in the collection may have one or more associated graphics states. Each permutation of a shader variant and a graphics state will result in a single GPU representation of the shader being created by Unity.

`GraphicsStateCollection` generally replaces the ShaderVariantCollection class for prewarming shader variants. On legacy graphics APIs that do not support prewarming graphics states, WarmUp will fallback to using ShaderVariantCollection.WarmUp.

```csharp
using UnityEngine;
using UnityEngine.Experimental.Rendering;public class GraphicsStateCollectionTracing : MonoBehaviour
{
    public GraphicsStateCollection graphicsStateCollection;    void Start()
    {
        graphicsStateCollection = new GraphicsStateCollection();
        graphicsStateCollection.BeginTrace();
    }    void OnDestroy()
    {
        graphicsStateCollection.EndTrace();
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| completedWarmupCount | The number of shader variant state permutations that have been warmed up. |
| graphicsDeviceType | The graphics device API type the collection is intended to be used with. |
| isTracing | Flag indicating if the collection is actively tracing shader variants and graphics states. |
| isWarmedUp | Flag indicating if the collection is completely warmed up. |
| qualityLevelName | The quality level the collection is intended to be used with. |
| runtimePlatform | The platform that the collection is intended to be used with. |
| totalGraphicsStateCount | The total number of graphics states across all shader variants in the collection. |
| variantCount | The number of shader variants contained in this collection. |
| version | The current version of the collection. |

### Constructors

| Constructor | Description |
| --- | --- |
| GraphicsStateCollection | Create a GraphicsStateCollection populated with contents of a file, or empty. |

### Public Methods

| Method | Description |
| --- | --- |
| AddGraphicsStateForVariant | Adds a new graphics state associated with a shader variant. |
| AddGraphicsStates | Generates and adds new graphics states to the collection from arrays of assets. |
| AddGraphicsStatesFromReference | Generates and adds new graphics states from arrays of assets, using a reference graphics state to initialize unspecified values. |
| AddVariant | Adds a new shader variant to the collection. |
| AddVariants | Adds one or more new shader variants to the collection. |
| BeginTrace | Start tracing shader variants and graphics states encountered at runtime. |
| ClearVariants | Clears all shader variants and associated graphics states from the collection. |
| ContainsVariant | Check if the specified ShaderVariant exists in the collection. |
| CopyGraphicsStatesForVariant | Copy all the graphics states from the source variant to the destination variant. |
| EndTrace | Stop tracing shader variants and graphics states encountered at runtime. |
| GetGraphicsStateCountForVariant | Get the number of graphics states associated with an input shader variant. |
| GetGraphicsStatesForVariant | Populate given list with graphics states associated with an input shader variant. |
| GetVariants | Populate given list with shader variants contained in the collection. |
| LoadFromFile | Load the GraphicsStateCollection at the given path. |
| RemoveGraphicsStatesForVariant | Remove all associated graphics states from an input shader variant. |
| RemoveVariant | Remove ShaderVariant and associated graphics states from collection. |
| SaveToFile | Save GraphicsStateCollection to disk. |
| SendToEditor | Send GraphicsStateCollection to the Editor using PlayerConnection. |
| WarmUp | Prewarms all shader variants in this collection using associated graphics states. |
| WarmUpProgressively | Prewarms the given number of shader variant state permutations using associated graphics states. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
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
