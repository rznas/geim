<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerPrefsException.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An exception thrown by the PlayerPrefs class in a web player build.

The exception is thrown when writing to a preference file exceeds the allotted storage space. This exception is not thrown on other platforms.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        // create a one megabyte character string
        string s16 = "0123456789abcdef";
        string s1024 = "";
        for (int j = 0; j < 64; j++)
            s1024 += s16;
        string s1024x1024 = "";
        for (int i  = 0; i < 1024; i++)
            s1024x1024 += s1024;        // try to save the string
        try
        {
            PlayerPrefs.SetString("fail", s1024x1024);
        }
        // handle the error
        catch (System.Exception err)
        {
            Debug.Log("Got: " + err);
        }
    }
}
```

Note that web player is not supported from 5.4.0 onwards.
