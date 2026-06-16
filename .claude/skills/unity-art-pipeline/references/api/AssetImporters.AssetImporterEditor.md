<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetImporters.AssetImporterEditor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Default editor for all asset importer settings.

Use the default editor to edit the import settings for assets. You can define a custom import settings editor for a specific asset type. To do this, create a new class that inherits from AssetImporterEditor and uses a CustomEditorAttribute that refers to a ScriptedImporter.

The following example shows how to make a custom ScriptedImporterEditor for a ScriptedImporter with a custom layout.

```csharp
using System.IO;
using UnityEditor;
using UnityEditor.AssetImporters;
using UnityEngine;[CustomEditor(typeof(TransformImporter))]
[CanEditMultipleObjects]
public class TransformImporterEditor : ScriptedImporterEditor
{
    // Stored SerializedProperty to draw in OnInspectorGUI.
    SerializedProperty m_GenerateChild;    public override void OnEnable()
    {
        base.OnEnable();
        // Once in OnEnable, retrieve the serializedObject property and store it.
        m_GenerateChild = serializedObject.FindProperty("generateChild");
    }    public override void OnInspectorGUI()
    {
        // Update the serializedObject in case it has been changed outside the Inspector.
        serializedObject.Update();        // Draw the boolean property.
        EditorGUILayout.PropertyField(m_GenerateChild);        // Apply the changes so Undo/Redo is working
        serializedObject.ApplyModifiedProperties();        // Call ApplyRevertGUI to show Apply and Revert buttons.
        ApplyRevertGUI();
    }
}[ScriptedImporter(0, ".transform")]
public class TransformImporter : ScriptedImporter
{
    public bool generateChild;    public override void OnImportAsset(AssetImportContext ctx)
    {
        GameObject root = ObjectFactory.CreateGameObject(Path.GetFileNameWithoutExtension(ctx.assetPath));
        if (generateChild)
        {
            GameObject child = ObjectFactory.CreateGameObject("child");
            child.transform.SetParent(root.transform);
        }
        ctx.AddObjectToAsset("main", root);
        ctx.SetMainObject(root);
    }
}
```

The following example demonstrates a specific case where the user cannot change settings and the Apply/Revert buttons are hidden with needsApplyRevert.

```csharp
using System.IO;
using UnityEditor;
using UnityEditor.AssetImporters;
using UnityEngine;[CustomEditor(typeof(EmptinessImporter))]
[CanEditMultipleObjects]
public class EmptinessImporterEditor : ScriptedImporterEditor
{
    //Let the parent class know that the Apply/Revert mechanism is skipped.
    protected override bool needsApplyRevert => false;    public override void OnInspectorGUI()
    {
        // Draw some information
        EditorGUILayout.HelpBox("Because this Importer doesn't have any settings, the Apply/Revert buttons are hidden.", MessageType.None);
    }
}[ScriptedImporter(0, ".emptiness")]
public class EmptinessImporter : ScriptedImporter
{
    public override void OnImportAsset(AssetImportContext ctx)
    {
        GameObject root = ObjectFactory.CreateGameObject(Path.GetFileNameWithoutExtension(ctx.assetPath));
        ctx.AddObjectToAsset("main", root);
        ctx.SetMainObject(root);
    }
}
```

The following example shows how to use extraDataType to read or save settings that are part of the imported asset, in the custom AssetImporterEditor.

```csharp
using System;
using System.IO;
using UnityEditor;
using UnityEditor.AssetImporters;
using UnityEngine;
using Object = UnityEngine.Object;[CustomEditor(typeof(BooleanImporter))]
[CanEditMultipleObjects]
public class BooleanImporterEditor : ScriptedImporterEditor
{
    // Property to show in the custom OnInspectorGUI.
    SerializedProperty m_BooleanProperty;    // override extraDataType to return the type that will be used in the Editor.
    protected override Type extraDataType => typeof(BooleanClass);    // override InitializeExtraDataInstance to set up the data.
    protected override void InitializeExtraDataInstance(Object extraTarget, int targetIndex)
    {
        var boolean = (BooleanClass)extraTarget;
        // Read the boolean value from the text file and fill the extraTarget object with the data.
        string fileContent = File.ReadAllText(((AssetImporter)targets[targetIndex]).assetPath);
        if (!bool.TryParse(fileContent, out boolean.boolean))
        {
            boolean.boolean = false;
        }
    }    protected override void Apply()
    {
        base.Apply();
        // After the Importer is applied, rewrite the file with the custom value.
        for (int i = 0; i < targets.Length; i++)
        {
            string path = ((AssetImporter)targets[i]).assetPath;
            File.WriteAllText(path, ((BooleanClass)extraDataTargets[i]).boolean.ToString());
        }
    }    public override void OnEnable()
    {
        base.OnEnable();
        // In OnEnable, retrieve the extraDataSerializedObject property and store it.
        m_BooleanProperty = extraDataSerializedObject.FindProperty("boolean");
    }    public override void OnInspectorGUI()
    {
        // Update the extraDataSerializedObject in case it has been changed outside the Inspector.
        extraDataSerializedObject.Update();        // Draw the boolean property.
        EditorGUILayout.PropertyField(m_BooleanProperty);        // Apply the changes so Undo/Redo is working.
        extraDataSerializedObject.ApplyModifiedProperties();        // Call ApplyRevertGUI to show Apply and Revert buttons.
        ApplyRevertGUI();
    }
}public class BooleanClass : ScriptableObject
{
    public bool boolean;
}[ScriptedImporter(0, ".boolean")]
public class BooleanImporter : ScriptedImporter
{
    public override void OnImportAsset(AssetImportContext ctx)
    {
        string fileContent = File.ReadAllText(ctx.assetPath);
        var booleanObj = ObjectFactory.CreateInstance<BooleanClass>();
        if (!bool.TryParse(fileContent, out booleanObj.boolean))
        {
            booleanObj.boolean = false;
        }
        ctx.AddObjectToAsset("main", booleanObj);
        ctx.SetMainObject(booleanObj);
        Debug.Log("Imported Boolean value: " + booleanObj.boolean);
    }
}
```

You can also use ScriptedImporter settings and extraData in the same AssetImporterEditor:

```csharp
using UnityEditor;
using UnityEditor.AssetImporters;[CustomEditor(typeof(SomeScriptedImporter))]
[CanEditMultipleObjects]
public class SomeImporterEditor : ScriptedImporterEditor
{
    // ...    public override void OnInspectorGUI()
    {
        serializedObject.Update();
        extraDataSerializedObject.Update();        // Use propertyDrawers and custom GUI for any property from both serializedObject and extraDataSerializedObject.        extraDataSerializedObject.ApplyModifiedProperties();
        serializedObject.ApplyModifiedProperties();        ApplyRevertGUI();
    }
}[ScriptedImporter(0, ".someFile")]
public class SomeScriptedImporter : ScriptedImporter
{
    public override void OnImportAsset(AssetImportContext ctx)
    {
        // ...
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| extraDataSerializedObject | A SerializedObject that represents the extraDataTarget or the extraDataTargets of the AssetImporterEditor. |
| extraDataTarget | The extra data object associated with the Editor.target. |
| extraDataTargets | An array of objects associated with each Editor.targets. |
| extraDataType | Override this property to return a type that inherits from ScriptableObject. This makes the AssetImporterEditor aware of serialized data outside of the Importer, allowing it to handle multi-selection and Apply/Revert button states. |
| needsApplyRevert | Whether the ApplyRevertGUI method is required to draw in the Inspector. |
| showImportedObject | Should imported object be shown as a separate editor? |
| useAssetDrawPreview | Determines if the asset preview is handled by the AssetEditor or the Importer DrawPreview |

### Public Methods

| Method | Description |
| --- | --- |
| HasModified | Determine if the import settings have been modified. |
| OnDisable | This function is called when the editor object goes out of scope. |
| OnEnable | This function is called when the object is loaded. |
| OnInspectorGUI | Override this method to create your own Inpsector GUI for a ScriptedImporter. |

### Protected Methods

| Method | Description |
| --- | --- |
| Apply | Saves any changes from the Editor's control into the asset's import settings object. |
| ApplyButton | Implements the 'Apply' button of the Inspector. |
| ApplyRevertGUI | Adds 'Apply' and 'Revert' buttons to the Editor. |
| Awake | This function is called when the Editor script is started. |
| CanApply | Determines if the modifications to import settings can be applied. |
| InitializeExtraDataInstance | This method is called during the initialization process of the Editor, after Awake and before OnEnable. |
| OnApplyRevertGUI | Process the 'Apply' and 'Revert' buttons. |
| RevertButton | Implements the 'Revert' button of the inspector. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| hasUnsavedChanges | This property specifies whether the Editor prompts the user to save or discard unsaved changes before the Inspector gets rebuilt. |
| saveChangesMessage | The message that displays to the user if they are prompted to save. |
| serializedObject | A SerializedObject representing the object or objects being inspected. |
| target | The object being inspected. |
| targets | An array of all the object being inspected. |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| CreateInspectorGUI | Implement this method to make a custom UIElements inspector. |
| CreatePreview | Implement this method to make a custom UIElements inspector preview. |
| DiscardChanges | Discards unsaved changes to the contents of the editor. |
| DrawDefaultInspector | Draws the built-in Inspector. |
| DrawHeader | Call this function to draw the header of the editor. |
| DrawPreview | The first entry point for Preview Drawing. |
| GetInfoString | Implement this method to show asset information on top of the asset preview. |
| GetPreviewTitle | Override this method if you want to change the label of the Preview area. |
| HasPreviewGUI | Override this method in subclasses if you implement OnPreviewGUI. |
| OnInteractivePreviewGUI | Implement to create your own interactive custom preview. Interactive custom previews are used in the preview area of the inspector and the object selector. |
| OnPreviewGUI | Creates a custom preview for the preview area of the Inspector, the headers of the primary Editor, and the object selector.You must implement Editor.HasPreviewGUI for this method to be called. |
| OnPreviewSettings | Override this method if you want to show custom controls in the preview header. |
| RenderStaticPreview | Override this method if you want to render a static preview. |
| Repaint | Redraw any inspectors that shows this editor. |
| RequiresConstantRepaint | Checks if this editor requires constant repaints in its current state. |
| SaveChanges | Performs a save action on the contents of the editor. |
| UseDefaultMargins | Override this method in subclasses to return false if you don't want default margins. |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Protected Methods

| Method | Description |
| --- | --- |
| ShouldHideOpenButton | Returns the visibility setting of the "open" button in the Inspector. |

### Static Methods

| Method | Description |
| --- | --- |
| CreateCachedEditor | On return previousEditor is an editor for targetObject or targetObjects. The function either returns if the editor is already tracking the objects, or destroys the previous editor and creates a new one. |
| CreateCachedEditorWithContext | Creates a cached editor using a context object. |
| CreateEditor | Make a custom editor for targetObject or targetObjects. |
| CreateEditorWithContext | Make a custom editor for targetObject or targetObjects with a context object. |
| DrawFoldoutInspector | Draws the inspector GUI with a foldout header for target. |
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
| HasFrameBounds | Validates whether custom bounds can be calculated for this Editor. |
| OnGetFrameBounds | Gets custom bounds for the target of this editor. |
| OnSceneGUI | Enables the Editor to handle an event in the Scene view. |
| OnDestroy | This function is called when the scriptable object will be destroyed. |
| OnValidate | Editor-only function that Unity calls when the script is loaded or a value changes in the Inspector. |
| Reset | Reset to default values. |

### Events

| Event | Description |
| --- | --- |
| finishedDefaultHeaderGUI | An event raised while drawing the header of the Inspector window, after the default header items have been drawn. |
