<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorTools.EditorTool.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use this class to implement editor tools. This is the base class from which all editor tools are inherited.

Use this class with EditorToolAttribute to register custom editor tools with the Editor.

There are two basic types of tools, Global and Component. See EditorToolAttribute for information on how to designate a tool as Global or Component.

Global tools are like the built-in Move, Rotate, Scale tools. They are always available, and work with whatever is in the current Selection.

Component tools, similar to CustomEditor, are specific to a Component. These tools are made available when the active selection contains an editable type.

```csharp
using UnityEditor;
using UnityEditor.EditorTools;
using UnityEditor.ShortcutManagement;
using UnityEngine;// Example MonoBehaviour that oscillates a transform position between two points.
public class Platform : MonoBehaviour
{
    [SerializeField]
    Vector3 m_Start = new Vector3(-10, 0f, 0f);    [SerializeField]
    Vector3 m_End = new Vector3(10f, 0f, 0f);    [SerializeField]
    float m_Speed = .2f;    public Vector3 start
    {
        get => m_Start;
        set => m_Start = value;
    }    public Vector3 end
    {
        get => m_End;
        set => m_End = value;
    }    public float speed
    {
        get => m_Speed;
        set => m_Speed = value;
    }    void Update()
    {
        SnapToPath(Time.time);
    }    public void SnapToPath(float time)
    {
        transform.position = Vector3.Lerp(m_Start, m_End, (Mathf.Sin(time * m_Speed) + 1) * .5f);
    }
}// The second argument in the EditorToolAttribute flags this as a Component tool. That means that it will be instantiated
// and destroyed along with the selection. EditorTool.targets will contain the selected objects matching the type.
[EditorTool("Platform Tool", typeof(Platform))]
class PlatformTool : EditorTool, IDrawSelectedHandles
{
    // Enable or disable preview animation
    bool m_AnimatePlatforms;    // Global tools (tools that do not specify a target type in the attribute) are lazy initialized and persisted by
    // a ToolManager. Component tools (like this example) are instantiated and destroyed with the current selection.
    void OnEnable()
    {
        // Allocate unmanaged resources or perform one-time set up functions here
    }    void OnDisable()
    {
        // Free unmanaged resources, state teardown.
    }    // The second "context" argument accepts an EditorWindow type.
    [Shortcut("Activate Platform Tool", typeof(SceneView), KeyCode.P)]
    static void PlatformToolShortcut()
    {
        if (Selection.GetFiltered<Platform>(SelectionMode.TopLevel).Length > 0)
            ToolManager.SetActiveTool<PlatformTool>();
        else
            Debug.Log("No platforms selected!");
    }    // Called when the active tool is set to this tool instance. Global tools are persisted by the ToolManager,
    // so usually you would use OnEnable and OnDisable to manage native resources, and OnActivated/OnWillBeDeactivated
    // to set up state. See also `EditorTools.{ activeToolChanged, activeToolChanged }` events.
    public override void OnActivated()
    {
        SceneView.lastActiveSceneView.ShowNotification(new GUIContent("Entering Platform Tool"), .1f);
    }    // Called before the active tool is changed, or destroyed. The exception to this rule is if you have manually
    // destroyed this tool (ex, calling `Destroy(this)` will skip the OnWillBeDeactivated invocation).
    public override void OnWillBeDeactivated()
    {
        SceneView.lastActiveSceneView.ShowNotification(new GUIContent("Exiting Platform Tool"), .1f);
    }    // Equivalent to Editor.OnSceneGUI.
    public override void OnToolGUI(EditorWindow window)
    {
        if (!(window is SceneView sceneView))
            return;        Handles.BeginGUI();
        using (new GUILayout.HorizontalScope())
        {
            using (new GUILayout.VerticalScope(EditorStyles.helpBox))
            {
                m_AnimatePlatforms = EditorGUILayout.Toggle("Animate Platforms", m_AnimatePlatforms);
                // To animate platforms we need the Scene View to repaint at fixed intervals, so enable `alwaysRefresh`
                // and scene FX (need both for this to work). In older versions of Unity this is called `materialUpdateEnabled`
                sceneView.sceneViewState.alwaysRefresh = m_AnimatePlatforms;
                if (m_AnimatePlatforms && !sceneView.sceneViewState.fxEnabled)
                    sceneView.sceneViewState.fxEnabled = true;                if (GUILayout.Button("Snap to Path"))
                    foreach (var obj in targets)
                        if (obj is Platform platform)
                            platform.SnapToPath((float)EditorApplication.timeSinceStartup);
            }            GUILayout.FlexibleSpace();
        }
        Handles.EndGUI();        foreach (var obj in targets)
        {
            if (!(obj is Platform platform))
                continue;            if (m_AnimatePlatforms && Event.current.type == EventType.Repaint)
                platform.SnapToPath((float)EditorApplication.timeSinceStartup);            EditorGUI.BeginChangeCheck();
            var start = Handles.PositionHandle(platform.start, Quaternion.identity);
            var end = Handles.PositionHandle(platform.end, Quaternion.identity);
            if (EditorGUI.EndChangeCheck())
            {
                Undo.RecordObject(platform, "Set Platform Destinations");
                platform.start = start;
                platform.end = end;
            }
        }
    }    // IDrawSelectedHandles interface allows tools to draw gizmos when the target objects are selected, but the tool
    // has not yet been activated. This allows you to keep MonoBehaviour free of debug and gizmo code.
    public void OnDrawHandles()
    {
        foreach (var obj in targets)
        {
            if (obj is Platform platform)
                Handles.DrawLine(platform.start, platform.end, 6f);
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| gridSnapEnabled | Use this property to allow the current EditorTool to enable or disable grid snapping. |
| isHidden | Returns true if the custom editor tool is hidden. Returns false otherwise. The Editor doesn't display hidden tools in the Scene view's Tools overlay. |
| target | The object being inspected. |
| targets | An array of the objects being inspected. |
| toolbarIcon | The icon and tooltip for this custom editor tool. If this function is not implemented, the toolbar displays the Inspector icon for the target type. If no target type is defined, the toolbar displays the Tool Mode icon. |

### Public Methods

| Method | Description |
| --- | --- |
| IsAvailable | Checks whether the custom editor tool is available based on the state of the editor. Unavailable tools are displayed as disabled in the Scene view's Tools overlay. |
| OnActivated | Invoked after this EditorTool becomes the active tool. |
| OnToolGUI | Use this method to implement a custom editor tool. |
| OnWillBeDeactivated | Invoked before this EditorTool stops being the active tool. |
| PopulateMenu | Adds menu items to Scene view context menu. |
| SetHidden | Set the hidden state of a custom editor tool. The Editor doesn't display hidden tools in the Scene view's Tools overlay. |

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
