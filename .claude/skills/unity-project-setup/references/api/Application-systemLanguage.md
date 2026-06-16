<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-systemLanguage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The language in which the user's operating system is running in.

Use this property to select localized content based on the user's system language. Query the current system language with `Application.systemLanguage`.

**Note**: Changes to the device's language setting might not appear immediately at runtime. On some platforms, `Application.systemLanguage` updates only after you restart the application, and in some cases only after you restart the device.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        //This checks if your computer's operating system is in the French language
        if (Application.systemLanguage == SystemLanguage.French)
        {
            //Outputs into console that the system is French
            Debug.Log("This system is in French. ");
        }
        //Otherwise, if the system is English, output the message in the console
        else if (Application.systemLanguage == SystemLanguage.English)
        {
            Debug.Log("This system is in English. ");
        }
    }
}
```

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        //This outputs what language your system is in
        Debug.Log("This system is in " + Application.systemLanguage);
    }
}
```

To access the user device languages, use [Locale Selector settings](https://docs.unity3d.com/Packages/com.unity.localization@1.5/manual/LocaleSelector.html ).
