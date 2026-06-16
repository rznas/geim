<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-dataPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains the path to the game data folder on the target device (Read Only).

The value depends on which platform you are running on:

**Unity Editor:** <*path to project folder*>/Assets

**Mac player:** <*path to player app bundle*>/Contents

**iOS player:** <*path to player app bundle*>/<*AppName.app*>/Data (this folder is read only, use Application.persistentDataPath to save data).

**Win/Linux player:** <*path to executablename_Data folder*> (note that most Linux installations will be case-sensitive!)

**WebGL:** The absolute url to the player data file folder (without the actual data file name)

**Android:** Normally it points directly to the APK. If you are running a split binary build, it points to the OBB instead.

**UWP Apps:** The absolute path to the player data folder (this folder is read only, use Application.persistentDataPath to save data)

Note that the string returned on a PC will use a forward slash as a folder separator.

For any unlisted platform, run the example script on the target platform to find the dataPath location in the debug log.

```csharp
//Attach this script to a GameObject
//This script outputs the Application’s path to the Console
//Run this on the target device to find the application data path for the platform
using UnityEngine;public class Example : MonoBehaviour
{
    string m_Path;    void Start()
    {
        //Get the path of the Game data folder
        m_Path = Application.dataPath;        //Output the Game data path to the console
        Debug.Log("dataPath : " + m_Path);
    }
}
```
