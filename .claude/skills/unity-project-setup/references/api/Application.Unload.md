<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application.Unload.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Unloads the Unity Player.

Unity triggers an Application.unloading event and releases memory acquired by the Unity Player while keeping the current process alive. The amount of memory that is released depends on the platform. This is useful when Unity is integrated into another application (see Unity as a Library as its component (for example, to display 2D/3D/AR content). When the application doesn't need content displayed by Unity anymore, you can release the associated memory by calling this method.

This is currently supported on iOS, Android, and the Universal Windows Platform. On the Web platform, use the `unityInstance.Quit()` JavaScript function to shut down Unity content on a web page.

On iOS and Android, Unload releases memory used by Scenes and GameObjects, but reserves some memory which is necessary for running Unity in the same process again. To learn more, see documentation on Unity as a Library for iOS and Android.

On the Universal Windows Platform, unloads the Unity runtime and release all engine memory. This is similar to quitting, except that the application process doesn't exit.

**Note:** This function does not return.

```csharp
using UnityEngine;
using System.Collections;// Unload Unity when the user clicks the button. Exit is not applied to the application.public class ExampleClass : MonoBehaviour
{
    void OnGUI()
    {
        if (GUI.Button(new Rect(10, 10, 200, 75), "Unload"))
            Application.Unload();
    }    static void OnUnload()
    {
        Debug.Log("Unloading the Player");
    }    [RuntimeInitializeOnLoadMethod]
    static void RunOnStart()
    {
        Application.unloading += OnUnload;
    }
}
```

Additional resources: Application.unloading.
