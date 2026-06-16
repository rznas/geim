<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.VisualElement-transform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a transform styles object for this VisualElement.

The transform styles object contains the position, rotation, scale style properties of this VisualElement. **Note**: This transform object is different and separate from the GameObject Transform MonoBehaviour. The three interface members write to the visual element's inline style and read from the resolved style. However, the VisualElement.style API offers more features and is the recommended approach. For example, you can set translate and position as percentages through the VisualElement.style API. 

The following example reads the current position, rotation, and scale from the resolvedStyle of a VisualElement, then updates the style properties with these values.

```csharp
var visualElement = new VisualElement();
         Vector3 position = visualElement.resolvedStyle.translate;
         visualElement.style.translate = new Translate(position.x, position.y, position.z);
         Quaternion rotation = visualElement.resolvedStyle.rotate.ToQuaternion();
         visualElement.style.rotate = new Rotate(rotation);
         Vector3 scale = visualElement.resolvedStyle.scale.value;
         visualElement.style.scale = new Scale((Vector2) scale);
```
