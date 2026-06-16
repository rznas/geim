<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Presets.Preset.IsEditorTargetAPreset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns true if the given target is a temporary UnityEngine.Object instance created from inside a PresetEditor.

This method has to be used from inside a CustomEditor in order to change what values are being displayed in the context of a Preset. Some CustomEditors, like the ones for global settings, are being mixed with serialized values that can be part of a Preset and global values shared between projects that are not serializable. In a Preset inspector, those global values should be hidden or at least disabled because changing them in the Preset would in fact change them globally.

```csharp
using UnityEditor;
using UnityEditor.Presets;
using UnityEditor.UIElements;
using UnityEngine;
using UnityEngine.UIElements;[CustomEditor(typeof(SomeSettings))]
class SomeSettingsEditor : Editor
{
    public override VisualElement CreateInspectorGUI()
    {
        var root = new VisualElement();        // create UI for serialized data
        var aFloat = new PropertyField(serializedObject.FindProperty("m_AFloat"));
        root.Add(aFloat);        // We are adding another field with an EditorPref data that we want to be excluded from the Preset UI.
        if (!Preset.IsEditorTargetAPreset(target))
        {
            var global = new FloatField("Global Pref");
            global.value = EditorPrefs.GetFloat("SomeGlobalSetting", 0.0f);
            global.RegisterCallback<ChangeEvent<float>>(evt => EditorPrefs.SetFloat("SomeGlobalSetting", evt.newValue));
            root.Add(global);
        }        return root;
    }
}class SomeSettings : ScriptableObject
{
    public float m_AFloat;
}
```
