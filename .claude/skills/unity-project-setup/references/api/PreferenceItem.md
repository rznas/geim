<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PreferenceItem.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

(Obsolete: use the SettingsProvider class instead) The PreferenceItem attribute allows you to add preferences sections to the Preferences window.

The PreferenceItem attribute turns any static function into an OnGUI callback. Only static functions can use the PreferenceItem attribute. By default all current PreferenceItems are included in the Unified Settings window and you get a warning to use the SettingsProvider attribute instead.

```csharp
using UnityEngine;
using UnityEditor;
public class ExampleScript : MonoBehaviour
{
    // Have we loaded the prefs yet
    private static bool prefsLoaded = false;    // The Preferences
    public static bool boolPreference = false;    // Add preferences section named "My Preferences" to the Preferences window
    [PreferenceItem("My Preferences")]
    public static void PreferencesGUI()
    {
        // Load the preferences
        if (!prefsLoaded)
        {
            boolPreference = EditorPrefs.GetBool("BoolPreferenceKey", false);
            prefsLoaded = true;
        }        // Preferences GUI
        boolPreference = EditorGUILayout.Toggle("Bool Preference", boolPreference);        // Save the preferences
        if (GUI.changed)
            EditorPrefs.SetBool("BoolPreferenceKey", boolPreference);
    }
}
```
