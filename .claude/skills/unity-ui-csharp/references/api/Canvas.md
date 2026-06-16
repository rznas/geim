<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Canvas.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Element that can be used for screen rendering.

Elements on a canvas are rendered AFTER Scene rendering, either from an attached camera or using overlay mode.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using UnityEngine.UI;// Create a Canvas that holds a Text GameObject.public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        GameObject myGO;
        GameObject myText;
        Canvas myCanvas;
        Text text;
        RectTransform rectTransform;        // Canvas
        myGO = new GameObject();
        myGO.name = "TestCanvas";
        myGO.AddComponent<Canvas>();        myCanvas = myGO.GetComponent<Canvas>();
        myCanvas.renderMode = RenderMode.ScreenSpaceOverlay;
        myGO.AddComponent<CanvasScaler>();
        myGO.AddComponent<GraphicRaycaster>();        // Text
        myText = new GameObject();
        myText.transform.parent = myGO.transform;
        myText.name = "wibble";        text = myText.AddComponent<Text>();
        text.font = (Font)Resources.Load("MyFont");
        text.text = "wobble";
        text.fontSize = 100;        // Text position
        rectTransform = text.GetComponent<RectTransform>();
        rectTransform.localPosition = new Vector3(0, 0, 0);
        rectTransform.sizeDelta = new Vector2(400, 200);
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| additionalShaderChannels | Get or set the mask of additional shader channels to be used when creating the Canvas mesh. |
| cachedSortingLayerValue | Cached calculated value based upon SortingLayerID. |
| isRootCanvas | Is this the root Canvas? |
| normalizedSortingGridSize | The normalized grid size that the canvas will split the renderable area into. |
| overridePixelPerfect | Allows for nested canvases to override pixelPerfect settings inherited from parent canvases. |
| overrideSorting | Allows for nested canvases to override the Canvas.sortingOrder from parent canvases. |
| pixelPerfect | Forces pixel alignment for elements in the canvas. It only applies when Canvas.renderMode is set to Screen Space. |
| pixelRect | Get the render rect for the Canvas. |
| planeDistance | How far away from the camera is the Canvas generated? It only applies when Canvas.renderMode is set to RenderMode.ScreenSpaceCamera. |
| referencePixelsPerUnit | The number of pixels per unit that is considered the default. |
| renderingDisplaySize | Provides the pixel dimensions of the display area where the UI canvas is rendered. |
| renderMode | Is the Canvas in World or Overlay mode? |
| renderOrder | The render order in which the canvas is being emitted to the Scene. (Read Only) |
| rootCanvas | Returns the Canvas closest to root, by checking through each parent and returning the last canvas found. If no other canvas is found then the canvas will return itself. |
| scaleFactor | Scales the entire canvas, ensuring it fits the screen. It only applies when Canvas.renderMode is set to Screen Space. |
| sortingLayerID | Unique ID of the Canvas' sorting layer. |
| sortingLayerName | Name of the Canvas' sorting layer. |
| sortingOrder | Canvas' order within a sorting layer. |
| targetDisplay | For Overlay mode, display index on which the UI canvas will appear. |
| updateRectTransformForStandalone | Should the Canvas size be updated based on the render target when a manual Camera.Render call is performed. |
| useReflectionProbes | Enables reflections on the Canvas when Canvas.renderMode is set to World Space. |
| vertexColorAlwaysGammaSpace | Should the Canvas vertex color always be in gamma space before passing to the UI shaders in linear color space work flow. |
| worldCamera | Camera used for sizing the Canvas when in Screen Space - Camera. Also used as the Camera that events will be sent through for a World Space Canvas. |

### Static Methods

| Method | Description |
| --- | --- |
| ForceUpdateCanvases | Force all canvases to update their content. |
| GetDefaultCanvasMaterial | Returns the default material that can be used for rendering normal elements on the Canvas. |
| GetETC1SupportedCanvasMaterial | Gets or generates the ETC1 Material. |

### Events

| Event | Description |
| --- | --- |
| preWillRenderCanvases | Event that is called just before Canvas rendering happens. |
| willRenderCanvases | Event that is called before Canvas is rendered. |

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
