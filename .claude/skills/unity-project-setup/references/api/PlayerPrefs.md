<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerPrefs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

`PlayerPrefs` is a class that stores Player preferences between game sessions. It can store string, float and integer values into the user's platform registry.

Unity stores PlayerPrefs in a local registry, without encryption. Don't use PlayerPrefs data to store sensitive data.

Unity stores `PlayerPrefs` data differently based on which operating system the application runs on. In the file paths given on this page, the `ExampleCompanyName`, `ExampleProductName`, and `ExampleBundleIdentifier` are the names you set in Unity's Player Settings.

**Standalone Player storage location**

- **Android**: `/data/data/pkg-name/shared_prefs/pkg-name.v2.playerprefs.xml`. 

**Notes**:

- Unity uses [SharedPreferences](https://developer.android.com/reference/android/content/SharedPreferences) API to access the `PlayerPrefs` data and [SharedPreferences.Editor](https://developer.android.com/reference/android/content/SharedPreferences.Editor) API to modify it.
- C#, Android Java, and native code can all access the `PlayerPrefs` data.

- **iOS**: Uses the `[NSUserDefaults standardUserDefaults]` API to store PlayerPrefs data.

- **Linux**: `~/.config/unity3d/ExampleCompanyName/ExampleProductName`

- **macOS**: `~/Library/Preferences/ExampleBundleIdentifier.plist`. The default value of **ExampleBundleIdentifier** is **com.ExampleCompanyName.ExampleProductName**. Override this value from the macOS Player settings.

- **Web**: Unity stores up to 1MB of PlayerPrefs data using the browser's IndexedDB API. For more information, see [IndexedDB](https://developers.google.com/web/ilt/pwa/lab-indexeddb#overview).

- **Windows**: `Computer\HKEY_CURRENT_USER\Software\ExampleCompanyName\ExampleProductName` in the Registry Editor.

- **Windows Universal Platform**: `%userprofile%\AppData\Local\Packages\[ProductPackageId]\LocalState\playerprefs.dat`

 **In-Editor Play mode storage location**

- **macOS**: `~/Library/Preferences/com.ExampleCompanyName.ExampleProductName.plist`

- **Windows**: `Computer\HKEY_CURRENT_USER\Software\Unity\UnityEditor\ExampleCompanyName\ExampleProductName` key. Note that Windows uses the key names from the application's PlayerPrefs as a hashed identifier. For example, Unity adds a `DeckBase` string to the hashed key name (for example `h3232628825`) to create `DeckBase_h3232628825`. Unity hashes the names because it:

- Allows Unity to store case-sensitive key names.
- Prevents naming conflicts with data the application stores outside of PlayerPrefs.
- Ensures that you use the PlayerPrefs API to access and modify the values.

The application ignores the extension.

### Static Methods

| Method | Description |
| --- | --- |
| DeleteAll | Removes all keys and values from the preferences. Use with caution. |
| DeleteKey | Removes the given key from the PlayerPrefs. If the key does not exist, DeleteKey has no impact. |
| GetFloat | Returns the float value that corresponds to key in the player preferences. |
| GetInt | Gets the int value that corresponds to key in the player preferences. |
| GetString | Gets the string that corresponds to key in the player preferences. |
| HasKey | Returns true if the given key exists in PlayerPrefs, otherwise returns false. |
| Save | Saves all modified preferences. |
| SetFloat | Sets the float value of the preference identified by the given key. You can use PlayerPrefs.GetFloat to retrieve this value. |
| SetInt | Sets a single integer value for the preference identified by the given key. You can use PlayerPrefs.GetInt to retrieve this value. |
| SetString | Sets a single string value for the preference identified by the given key. You can use PlayerPrefs.GetString to retrieve this value. |
