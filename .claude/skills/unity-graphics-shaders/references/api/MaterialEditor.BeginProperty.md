<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MaterialEditor.BeginProperty.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| rect | The box which encloses the GUI control. May include a label. |
| property | The property this GUI control modifies. |

### Description

Creates a wrapper enabling the Unity Editor to display GUI controls for the property.

The MaterialEditor has methods that display specific Material Properties such as MaterialEditor.ShaderProperty, or MaterialEditor.TextureProperty.

However, if you display a Property with a GUI control (such as EditorGUI.Toggle) instead of one of these methods, you can use a property wrapper to configure the visual presentation of this Property. Using a property wrapper enables you to display MaterialVariant overrides in a bold font, provide access to the Apply/Revert options via a right-click menu, disable the GUI for locked Properties, and set the appearance when editing multiple different values.

Property wrappers begin with BeginProperty and end with MaterialEditor.EndProperty. If you do not provide a rect parameter, the Editor tries to determine one by calling GUILayoutUtility.GetLastRect at the end of the scope.

If you use a custom method to display Material.renderQueue, Material.doubleSidedGI, Material.enableInstancing or Material.globalIlluminationFlags, you can create a property wrapper around the field by using the corresponding SerializedProperty.

Additional resources: MaterialEditor.ShaderProperty, SerializedProperty, MaterialEditor.EndProperty.
