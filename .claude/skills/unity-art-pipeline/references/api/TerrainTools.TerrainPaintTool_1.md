<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.TerrainPaintTool_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base class for terrain painting tools.

Derive from this class to implement your own terrain painting tools.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEngine.TerrainTools;namespace UnityEditor.TerrainTools
{
    public class MyPaintHeightTool : TerrainPaintTool<MyPaintHeightTool>
    {
        Material m_Material = null;
        Material GetPaintMaterial()
        {
            if (m_Material == null)
                m_Material = new Material(Shader.Find("Hidden/Terrain/PaintHeight"));
            return m_Material;
        }        public override string GetName()
        {
            return "My Paint Height Tool";
        }        public override string GetDescription()
        {
            return "Left click to raise.\n\nHold shift and left click to lower.";
        }        public override void OnRenderBrushPreview(Terrain terrain, IOnSceneGUI editContext)
        {
            TerrainPaintUtilityEditor.ShowDefaultPreviewBrush(terrain, editContext.brushTexture, editContext.brushSize);
        }        public override bool OnPaint(Terrain terrain, IOnPaint editContext)
        {
            Material mat = TerrainPaintUtility.GetBuiltinPaintMaterial();            float rotationDegrees = 0.0f;
            BrushTransform brushXform = TerrainPaintUtility.CalculateBrushTransform(terrain, editContext.uv, editContext.brushSize, rotationDegrees);
            PaintContext paintContext = TerrainPaintUtility.BeginPaintHeightmap(terrain, brushXform.GetBrushXYBounds());            // apply brush
            Vector4 brushParams = new Vector4(editContext.brushStrength * 0.01f, 0.0f, 0.0f, 0.0f);
            mat.SetTexture("_BrushTex", editContext.brushTexture);
            mat.SetVector("_BrushParams", brushParams);
            TerrainPaintUtility.SetupTerrainToolMaterialProperties(paintContext, brushXform, mat);            Graphics.Blit(paintContext.sourceRenderTexture, paintContext.destinationRenderTexture, mat, (int)TerrainBuiltinPaintMaterialPasses.RaiseLowerHeight);            TerrainPaintUtility.EndPaintHeightmap(paintContext, "Terrain Paint - MyPaintHeightTool");
            return false;
        }
    }
}
```

### Public Methods

| Method | Description |
| --- | --- |
| GetDescription | Retrieves the description of the custom terrain tool. |
| GetName | Retrieves the name of the custom terrain tool. |
| OnDisable | Called when the tool is destroyed. |
| OnEnable | Called when the tool is created. |
| OnEnterToolMode | Called when the tool is activated. |
| OnExitToolMode | Called when the tool becomes inactive. |
| OnInspectorGUI | Custom terrain tool OnInspectorGUI callback. |
| OnPaint | Custom terrain tool paint callback. |
| OnRenderBrushPreview | Use this method to implement custom tool preview and UI behavior that will only render while the mouse is within the SceneView bounds or while you're actively using this tool. |
| OnSceneGUI | Custom terrain tool OnSceneGUI callback. |

### Inherited Members

### Static Properties

| Property | Description |
| --- | --- |
| instance | Gets the instance of the Singleton. Unity creates the Singleton instance when this property is accessed for the first time. If you use the FilePathAttribute, then Unity loads the data on the first access as well. |

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

### Protected Methods

| Method | Description |
| --- | --- |
| Save | Saves the current state of the ScriptableSingleton. |

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
| CreateInstance | Creates an instance of a scriptable object. |
| GetFilePath | Get the file path where this ScriptableSingleton is saved to. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |

### Messages

| Message | Description |
| --- | --- |
| Awake | Called when an instance of ScriptableObject is created. |
| OnDestroy | This function is called when the scriptable object will be destroyed. |
| OnValidate | Editor-only function that Unity calls when the script is loaded or a value changes in the Inspector. |
| Reset | Reset to default values. |
