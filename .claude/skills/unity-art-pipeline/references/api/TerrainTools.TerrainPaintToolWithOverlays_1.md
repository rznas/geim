<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TerrainTools.TerrainPaintToolWithOverlays_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base class for Terrain painting tools, which inherit from Editor Tools.

Derive from this class to implement your own terrain painting tools, which also appear in the Terrain Tools overlay.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.TerrainTools;class CustomTerrainToolWithOverlays : TerrainPaintToolWithOverlays<CustomTerrainToolWithOverlays>
{
    private float m_BrushRotation;
    
    // Return true for this property to show the brush selector overlay
    public override bool HasBrushMask => true;    // Return true for this property to show the tool settings overlay
    public override bool HasToolSettings => true;
    
    // Return true for this property to display the brush attributes overlay
    public override bool HasBrushAttributes => true;
    
    // File names of the light theme icons - prepending d_ to the file name generates dark theme variants.
    // public override string OnIcon => "Assets/Icon_on.png";
    // public override string OffIcon => "Assets/Icon_off.png";    // The toolbar category the icon appears under
     public override TerrainCategory Category => TerrainCategory.CustomBrushes;    // Where in the icon list the icon appears
    public override int IconIndex => 100;
    
    // Name of the Terrain Tool. This appears in the tool UI
    public override string GetName()
    {
        return "Examples/Basic Custom Terrain Tool";
    }    // Description for the Terrain Tool. This appears in the tool UI
    public override string GetDescription()
    {
        return "This Terrain Tool shows how to add custom UI to a tool and paint height.";
    }    // Override this function to add UI elements to the inspector
    public override void OnInspectorGUI(Terrain terrain, IOnInspectorGUI editContext)
    {
        EditorGUILayout.HelpBox("In Terrain Inspector", MessageType.None); 
        editContext.ShowBrushesGUI(5, BrushGUIEditFlags.All);
        m_BrushRotation = EditorGUILayout.Slider("Rotation", m_BrushRotation, 0, 360);
    }    // Override this function to add UI elements to the tool settings overlay 
    public override void OnToolSettingsGUI(Terrain terrain, IOnInspectorGUI editContext)
    {
        EditorGUILayout.HelpBox("In Overlays", MessageType.None); 
        m_BrushRotation = EditorGUILayout.Slider("Rotation", m_BrushRotation, 0, 360);
    }    // Ease of use function for rendering modified Terrain Texture data into a PaintContext. Both OnRenderBrushPreview and OnPaint use this.
    private void RenderIntoPaintContext(UnityEngine.TerrainTools.PaintContext paintContext, Texture brushTexture, float brushOpacity, UnityEngine.TerrainTools.BrushTransform brushXform)
    {
        // Get the built-in painting Material reference
        Material mat = UnityEngine.TerrainTools.TerrainPaintUtility.GetBuiltinPaintMaterial();
        // Bind the current brush texture
        mat.SetTexture("_BrushTex", brushTexture);
        // Bind the tool-specific shader properties
        var opacity = Event.current.control ? -brushOpacity : brushOpacity;
        mat.SetVector("_BrushParams", new Vector4(opacity, 0.0f, 0.0f, 0.0f));
        // Set up the material for reading from/writing into the PaintContext texture data. This step is necessary to set up the correct shader properties for appropriately transforming UVs and sampling textures within the shader
        UnityEngine.TerrainTools.TerrainPaintUtility.SetupTerrainToolMaterialProperties(paintContext, brushXform, mat);
        // Render into the PaintContext's destinationRenderTexture using the built-in painting Material. The ID for the Raise/Lower pass is 0
        Graphics.Blit(paintContext.sourceRenderTexture, paintContext.destinationRenderTexture, mat, 0);
    }
    
    // Render Tool previews in the Scene view
    public override void OnRenderBrushPreview(Terrain terrain, IOnSceneGUI editContext)
    {
        // Don't render preview if this isn't a Repaint
        if (Event.current.type != EventType.Repaint) return;        // Only do the rest if user mouse hits valid terrain
        if (!editContext.hitValidTerrain) return;        // Get the current BrushTransform under the mouse position relative to the Terrain
        UnityEngine.TerrainTools.BrushTransform brushXform = UnityEngine.TerrainTools.TerrainPaintUtility.CalculateBrushTransform(terrain, editContext.raycastHit.textureCoord, editContext.brushSize, m_BrushRotation);
        // Get the PaintContext for the current BrushTransform. This has a sourceRenderTexture from which to read existing Terrain texture data.
        UnityEngine.TerrainTools.PaintContext paintContext = UnityEngine.TerrainTools.TerrainPaintUtility.BeginPaintHeightmap(terrain, brushXform.GetBrushXYBounds(), 1);
        // Get the built-in Material for rendering Brush Previews
        Material previewMaterial = TerrainPaintUtilityEditor.GetDefaultBrushPreviewMaterial();
        // Render the brush preview for the sourceRenderTexture. This shows up as a projected brush mesh rendered on top of the Terrain
        TerrainPaintUtilityEditor.DrawBrushPreview(paintContext, TerrainBrushPreviewMode.SourceRenderTexture, editContext.brushTexture, brushXform, previewMaterial, 0);
        // Render changes into the PaintContext destinationRenderTexture
        RenderIntoPaintContext(paintContext, editContext.brushTexture, editContext.brushStrength, brushXform);
        // Restore old render target
        RenderTexture.active = paintContext.oldRenderTexture;
        // Bind the sourceRenderTexture to the preview Material. This is used to compute deltas in height
        previewMaterial.SetTexture("_HeightmapOrig", paintContext.sourceRenderTexture);
        // Render a procedural mesh displaying the delta/displacement in height from the source Terrain texture data. When you modify Terrain height, this shows how much the next paint operation alters the Terrain height
        TerrainPaintUtilityEditor.DrawBrushPreview(paintContext, TerrainBrushPreviewMode.DestinationRenderTexture, editContext.brushTexture, brushXform, previewMaterial, 1);
        // Cleanup resources
        UnityEngine.TerrainTools.TerrainPaintUtility.ReleaseContextResources(paintContext);
    }
    
    // Perform painting operations that modify the Terrain texture data
    public override bool OnPaint(Terrain terrain, IOnPaint editContext)
    {
        // Get the current BrushTransform under the mouse position relative to the Terrain
        UnityEngine.TerrainTools.BrushTransform brushXform = UnityEngine.TerrainTools.TerrainPaintUtility.CalculateBrushTransform(terrain, editContext.uv, editContext.brushSize, m_BrushRotation);
        // Get the PaintContext for the current BrushTransform. This has a sourceRenderTexture from which to read existing Terrain texture data
        // and a destinationRenderTexture into which to write new Terrain texture data
        UnityEngine.TerrainTools.PaintContext paintContext = UnityEngine.TerrainTools.TerrainPaintUtility.BeginPaintHeightmap(terrain, brushXform.GetBrushXYBounds());
        // Call the common rendering function that OnRenderBrushPreview and OnPaint use
        RenderIntoPaintContext(paintContext, editContext.brushTexture, editContext.brushStrength, brushXform);
        // Commit the modified PaintContext with a provided string for tracking Undo operations. This function handles Undo and resource cleanup for you
        UnityEngine.TerrainTools.TerrainPaintUtility.EndPaintHeightmap(paintContext, "Terrain Paint - Raise or Lower Height");        // Return whether Trees and Details should be hidden while you paint with this Terrain Tool
        return true;
    }
}
```

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| gridSnapEnabled | Use this property to allow the current EditorTool to enable or disable grid snapping. |
| isHidden | Returns true if the custom editor tool is hidden. Returns false otherwise. The Editor doesn't display hidden tools in the Scene view's Tools overlay. |
| target | The object being inspected. |
| targets | An array of the objects being inspected. |
| toolbarIcon | The icon and tooltip for this custom editor tool. If this function is not implemented, the toolbar displays the Inspector icon for the target type. If no target type is defined, the toolbar displays the Tool Mode icon. |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |
| Category | The TerrainCategory that the Terrain Tool belongs to. |
| HasBrushAttributes | True if the Terrain Tool has brush attributes, false otherwise. |
| HasBrushMask | True if Terrain Tool has brush masks, false otherwise. |
| HasToolSettings | True if Terrain Tool has custom settings, false otherwise. |
| IconIndex | The index at which you should place the Terrain Tool in the Terrain Tools overlay. |
| OffIcon | The icon displayed in the Terrain Tools overlay when the Terrain Tool isn't selected. |
| OnIcon | The icon displayed in the Terrain Tools overlay when the terrain tool is selected. |
| Terrain | The last hit terrain or the last active instance of a terrain object. |

### Public Methods

| Method | Description |
| --- | --- |
| IsAvailable | Checks whether the custom editor tool is available based on the state of the editor. Unavailable tools are displayed as disabled in the Scene view's Tools overlay. |
| OnActivated | Invoked after this EditorTool becomes the active tool. |
| OnToolGUI | Use this method to implement a custom editor tool. |
| OnWillBeDeactivated | Invoked before this EditorTool stops being the active tool. |
| PopulateMenu | Adds menu items to Scene view context menu. |
| SetHidden | Set the hidden state of a custom editor tool. The Editor doesn't display hidden tools in the Scene view's Tools overlay. |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |
| GetDescription | Description of the Terrain Tool. |
| GetName | Name of the Terrain Tool. |
| OnActivated | This function is called when the tool is activated. |
| OnDisable | Called when the tool is destroyed. |
| OnEnable | Called when the tool is created. |
| OnEnterToolMode | This function is called when the Terrain Tool is activated. |
| OnExitToolMode | This function is called when the Terrain Tool becomes inactive. |
| OnInspectorGUI | Custom Terrain Tool OnInspectorGUI callback. |
| OnPaint | Custom Terrain Tool paint callback. |
| OnRenderBrushPreview | Use this method to implement custom tool preview and UI behavior that only renders while the mouse is within the SceneView bounds or while you're actively using this tool. |
| OnSceneGUI | Custom Terrain Tool OnSceneGUI callback. |
| OnToolGUI | This method is used to implement the custom terrain editor paint tool. |
| OnToolSettingsGUI | Contains the IMGUI code for custom settings beyond the common settings. |
| OnWillBeDeactivated | Invoked before the terrain paint tool with overlays stops being the active tool. |

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
| OnDisable | This function is called when the scriptable object goes out of scope. |
| OnEnable | This function is called when the object is loaded. |
| OnValidate | Editor-only function that Unity calls when the script is loaded or a value changes in the Inspector. |
| Reset | Reset to default values. |
