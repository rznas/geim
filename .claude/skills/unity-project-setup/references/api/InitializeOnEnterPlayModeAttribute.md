<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/InitializeOnEnterPlayModeAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allow an editor class method to be initialized when Unity enters Play Mode.

Use to reset static fields in Editor classes on Enter Play Mode without Domain Reload.

```csharp
using UnityEngine;
using UnityEditor;class MyAnotherClass
{
    static int s_MySimpleValue = 0;    [InitializeOnEnterPlayMode]
    static void OnEnterPlaymodeInEditor(EnterPlayModeOptions options)
    {
        Debug.Log("Entering PlayMode");        if (options.HasFlag(EnterPlayModeOptions.DisableDomainReload))
            s_MySimpleValue = 0;
    }
}
```

Or perform any other logic on Enter Play Mode.

```csharp
using UnityEngine;
using UnityEditor;class MyClass
{
    static int s_MyValue = 0;    static void MyClassPlaymodeSetup()
    {
        s_MyValue = 1000;
        //...
    }    [InitializeOnEnterPlayMode]
    static void OnEnterPlaymodeInEditor(EnterPlayModeOptions options)
    {
        Debug.Log("Entering PlayMode");
        MyClassPlaymodeSetup();
    }
}
```
