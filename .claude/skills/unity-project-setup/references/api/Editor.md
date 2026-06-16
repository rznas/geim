<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Editor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Derive from this base class to create a custom inspector or editor for your custom object.

```csharp
using UnityEngine;
using System.Collections;// This is not an editor script.
public class MyPlayer : MonoBehaviour
{
    public int armor = 75;
    public int damage = 25;
    public GameObject gun;    void Update()
    {
        // Update logic here...
    }
}
```

For example, use a custom editor to change the appearance of the script in the Inspector.

You can attach the Editor to a custom component by using the CustomEditor attribute.

There are multiple ways to design custom Editors. If you want the Editor to support multi-object editing, you can use the CanEditMultipleObjects attribute. Instead of modifying script variables directly, it's advantageous to use the SerializedObject and SerializedProperty system to edit them, since this automatically handles multi-object editing, undo, and Prefab overrides. If this approach is used a user can select multiple assets in the hierarchy window and change the values for all of them at once.

You can either use UIElements to build your custom UI or you can use IMGUI. To create a custom inspector using UIElements, you have to override the Editor.CreateInspectorGUI on the Editor class. To create a custom inspector using IMGUI, you have to override the Editor.OnInspectorGUI on the Editor class. If you use UIElements and have Editor.CreateInspectorGUI overwritten, any existing IMGUI implementation using Editor.OnInspectorGUI on the same Editor will be ignored.

Here's an example of a custom inspector:


 *Custom editor in the Inspector.*

```csharp
using UnityEditor;
using UnityEditor.UIElements;
using UnityEngine;
using UnityEngine.UIElements;
[CustomEditor(typeof(MyPlayer))]
public class MyPlayerEditor : Editor
{
    const string resourceFilename = "custom-editor-uie";
    public override VisualElement CreateInspectorGUI()
    {
        VisualElement customInspector = new VisualElement();
        var visualTree = Resources.Load(resourceFilename) as VisualTreeAsset;
        visualTree.CloneTree(customInspector);
        customInspector.styleSheets.Add(Resources.Load($"{resourceFilename}-style") as StyleSheet);
        return customInspector;
    }
}
```

The following example defines the layout of a custom inspector in uxml. The definition loads as a resource and the VisualTreeAsset.CloneTree method puts the hierarchy in a VisualElement object.

The InspectorWindow will instantiate an InspectorElement containing the custom inspector. The InspectorElement will call Bind on the custom inspector binding it to the MyPlayer object.

```csharp
<UXML xmlns="UnityEngine.UIElements" xmlns:e="UnityEditor.UIElements">
    <VisualElement class="player-property">
        <VisualElement class="slider-row">
            <Label class="player-property-label" text="Damage"/>
            <VisualElement class="input-container">
                <SliderInt class="player-slider" name="damage-slider" high-value="100" direction="Horizontal" binding-path="damage"/>
                <e:IntegerField class="player-int-field" binding-path="damage"/>
            </VisualElement>
        </VisualElement>
        <e:ProgressBar class="player-property-progress-bar" name="damage-progress" binding-path="damage" title="Damage"/>
    </VisualElement>    <VisualElement class="player-property">
        <VisualElement class="slider-row">
            <Label class="player-property-label" text="Armor"/>
            <VisualElement class="input-container">
                <SliderInt class="player-slider" name="armor-slider" high-value="100" direction="Horizontal" binding-path="armor"/>
                <e:IntegerField class="player-int-field" binding-path="armor"/>
            </VisualElement>
        </VisualElement>
        <e:ProgressBar class="player-property-progress-bar" name="armor-progress" binding-path="armor" title="Armor"/>
    </VisualElement>    <e:PropertyField class="gun-field" binding-path="gun" label="Gun Object"/>
</UXML>
```

UIElements automatically updates the UI when data changes and vice-versa. To bind data and automatically update data and UI, set values for the "binding-path" attributes.

Styling of the inspector is done in uss.

```csharp
.slider-row {
    flex-direction: row;
    justify-content: space-between;
    margin-top: 4px;
}
.input-container {
    flex-direction: row;
    flex-grow: .6;
    margin-right: 4px;
}
.player-property {
    margin-bottom: 4px;
}
.player-property-label {
    flex:1;
    margin-left: 16;
}
.player-slider {
    flex:3;
    margin-right: 4px;
}
.player-property-progress-bar {
    margin-left: 16px;
    margin-right: 4px;
}
.player-int-field {
    min-width: 48px;
}
.gun-field {
    justify-content: space-between;
    margin-left: 16px;
    margin-right: 4px;
    margin-top: 6px;
    flex-grow: .6;
}
```

Here's an example of a custom inspector using IMGUI and multi-selection:

```csharp
using UnityEditor;
using UnityEngine;
using System.Collections;// Custom Editor using SerializedProperties.
// Automatic handling of multi-object editing, undo, and Prefab overrides.
[CustomEditor(typeof(MyPlayer))]
[CanEditMultipleObjects]
public class MyPlayerEditor : Editor
{
    SerializedProperty damageProp;
    SerializedProperty armorProp;
    SerializedProperty gunProp;    void OnEnable()
    {
        // Setup the SerializedProperties.
        damageProp = serializedObject.FindProperty ("damage");
        armorProp = serializedObject.FindProperty ("armor");
        gunProp = serializedObject.FindProperty ("gun");
    }    public override void OnInspectorGUI()
    {
        // Update the serializedProperty - always do this in the beginning of OnInspectorGUI.
        serializedObject.Update ();        // Show the custom GUI controls.
        EditorGUILayout.IntSlider (damageProp, 0, 100, new GUIContent ("Damage"));        // Only show the damage progress bar if all the objects have the same damage value:
        if (!damageProp.hasMultipleDifferentValues)
            ProgressBar (damageProp.intValue / 100.0f, "Damage");        EditorGUILayout.IntSlider (armorProp, 0, 100, new GUIContent ("Armor"));        // Only show the armor progress bar if all the objects have the same armor value:
        if (!armorProp.hasMultipleDifferentValues)
            ProgressBar (armorProp.intValue / 100.0f, "Armor");        EditorGUILayout.PropertyField (gunProp, new GUIContent ("Gun Object"));        // Apply changes to the serializedProperty - always do this in the end of OnInspectorGUI.
        serializedObject.ApplyModifiedProperties ();
    }    // Custom GUILayout progress bar.
    void ProgressBar (float value, string label)
    {
        // Get a rect for the progress bar using the same margins as a textfield:
        Rect rect = GUILayoutUtility.GetRect (18, 18, "TextField");
        EditorGUI.ProgressBar (rect, value, label);
        EditorGUILayout.Space ();
    }
}
```

If automatic handling of multi-object editing, undo, and Prefab overrides is not needed, the script variables can be modified directly by the editor without using the SerializedObject and SerializedProperty system, as in the IMGUI example below.

```csharp
using UnityEditor;
using UnityEngine;
using System.Collections;// Example script with properties.
public class MyPlayerAlternative : MonoBehaviour
{
    public int damage;
    public int armor;
    public GameObject gun;    // ...other code...
}// Custom Editor the "old" way by modifying the script variables directly.
// No handling of multi-object editing, undo, and Prefab overrides!
[CustomEditor (typeof(MyPlayerAlternative))]
public class MyPlayerEditorAlternative : Editor
{    public override void OnInspectorGUI()
    {
        MyPlayerAlternative mp = (MyPlayerAlternative)target;        mp.damage = EditorGUILayout.IntSlider ("Damage", mp.damage, 0, 100);
        ProgressBar (mp.damage / 100.0f, "Damage");        mp.armor = EditorGUILayout.IntSlider ("Armor", mp.armor, 0, 100);
        ProgressBar (mp.armor / 100.0f, "Armor");        bool allowSceneObjects = !EditorUtility.IsPersistent (target);
        mp.gun = (GameObject)EditorGUILayout.ObjectField ("Gun Object", mp.gun, typeof(GameObject), allowSceneObjects);
    }    // Custom GUILayout progress bar.
    void ProgressBar (float value, string label)
    {
        // Get a rect for the progress bar using the same margins as a textfield:
        Rect rect = GUILayoutUtility.GetRect (18, 18, "TextField");
        EditorGUI.ProgressBar (rect, value, label);
        EditorGUILayout.Space ();
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| hasUnsavedChanges | This property specifies whether the Editor prompts the user to save or discard unsaved changes before the Inspector gets rebuilt. |
| saveChangesMessage | The message that displays to the user if they are prompted to save. |
| serializedObject | A SerializedObject representing the object or objects being inspected. |
| target | The object being inspected. |
| targets | An array of all the object being inspected. |

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
| OnInspectorGUI | Implement this function to make a custom inspector. |
| OnInteractivePreviewGUI | Implement to create your own interactive custom preview. Interactive custom previews are used in the preview area of the inspector and the object selector. |
| OnPreviewGUI | Creates a custom preview for the preview area of the Inspector, the headers of the primary Editor, and the object selector.You must implement Editor.HasPreviewGUI for this method to be called. |
| OnPreviewSettings | Override this method if you want to show custom controls in the preview header. |
| RenderStaticPreview | Override this method if you want to render a static preview. |
| Repaint | Redraw any inspectors that shows this editor. |
| RequiresConstantRepaint | Checks if this editor requires constant repaints in its current state. |
| SaveChanges | Performs a save action on the contents of the editor. |
| UseDefaultMargins | Override this method in subclasses to return false if you don't want default margins. |

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

### Messages

| Message | Description |
| --- | --- |
| HasFrameBounds | Validates whether custom bounds can be calculated for this Editor. |
| OnGetFrameBounds | Gets custom bounds for the target of this editor. |
| OnSceneGUI | Enables the Editor to handle an event in the Scene view. |

### Events

| Event | Description |
| --- | --- |
| finishedDefaultHeaderGUI | An event raised while drawing the header of the Inspector window, after the default header items have been drawn. |

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
