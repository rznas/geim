<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShortcutManagement.IShortcutManager.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a manager that configures a particular instance of the shortcuts system.

The manager maintains a list of *available* profiles which can be retrieved with GetAvailableProfiles. Some of the methods require the passed profile ID to be available at the time it is called. Creating a new profile with CreateProfile makes it available and deleting a profile with DeleteProfile makes it not available anymore.

It also maintains a reference to the *active* profile (activeProfileId) which determines the active bindings based on the shortcut overrides of the active profile. RebindShortcut and ClearShortcutOverride requires the active profile to not be *read-only* (i.e. IsProfileReadOnly returns `false` for activeProfileId) since these two methods modify the active profile.

Finally, it maintains a list of available shortcuts which can be retrieved with GetAvailableShortcuts. All methods that take a shortcut ID require that the shortcut is avaliable.

### Properties

| Property | Description |
| --- | --- |
| activeProfileId | Gets or sets the ID of the currently active profile. |

### Public Methods

| Method | Description |
| --- | --- |
| ClearShortcutOverride | Clears the binding for shortcut with given shortcut ID from the active profile. |
| CreateProfile | Creates a new profile with the given profile ID. |
| DeleteProfile | Deletes profile with the given profile ID. |
| GetAvailableProfileIds | Returns an enumeration of all of avaliable profile IDs. |
| GetAvailableShortcutIds | Returns an enumeration of all available shortcut IDs. |
| GetShortcutBinding | Returns the active binding for the given shortcut ID. |
| IsProfileIdValid | Checks that the profile ID is valid. |
| IsProfileReadOnly | Is the profile for the given profile ID read-only? |
| IsShortcutOverridden | Does the active profile override the binding for the given shortcut ID? |
| RebindShortcut | Rebinds the shortcut for the given shortcut ID to the given binding in the active profile. |
| RenameProfile | Renames the ID of a profile. |

### Events

| Event | Description |
| --- | --- |
| activeProfileChanged | Raised when the ID of the active profile is changed. |
| shortcutBindingChanged | Raised when shortcut overrides are changed on the active profile. |
