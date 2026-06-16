<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DeeplinkHandlerAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handlerNamespace | The namespace of the deeplink handler. This parameter is case-insensitive. |

### Description

Declares a method as a handler for application-level deeplinks.

This attribute allows you to register a deeplink handler for application-level deeplinks received by the Unity Editor that match a given namespace. For more information about deeplinking, refer to Deeplinking support for local projects in the Unity Hub documentation. 

 Apply this attribute to public static methods. This attribute requires the `UnityEditor` namespace and can be used only in the Unity Editor. Decorated methods are analyzed and signaled as validated or unvalidated when a deeplink is forwarded to them. Only decorated methods that belong to packages delivered through the Unity Package Manager registry, or have a signature that's verified are signaled as validated. Unvalidated methods require the end-user to manually validate the deeplink operation through a dialog prompt.

```csharp
// Example script that decorates a public static method to serve as a deeplink handler 
// for com.unity.editor://editor/my.namespace.editor/* formatted urls.using System;
using UnityEngine;
using UnityEditor;namespace My.Namespace.Editor
{
    public class MyClass
    {
        // OnDeeplinkActivated will receive com.unity.editor://editor/my.namespace.editor/* formatted urls. 
        [DeeplinkHandler("My.Namespace.Editor")]
        public static void OnDeeplinkActivated(Uri uri)
        {
            Debug.Log($"Received deeplink: {uri.AbsoluteUri}");
        }
    }
}
```
