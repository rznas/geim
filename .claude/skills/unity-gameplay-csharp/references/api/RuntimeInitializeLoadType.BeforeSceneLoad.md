<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RuntimeInitializeLoadType.BeforeSceneLoad.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Callback invoked when the first scene's objects are loaded into memory but **before** Awake has been called.

For more info on ordering see RuntimeInitializeOnLoadMethodAttribute.

```csharp
// Demonstration of the RuntimeInitializeLoadType.BeforeSceneLoad attribute to find inactive objects before Awake has been 
// called for the first scene being loaded. Then from these inactive objects we find which ones will be active after Awake is called later.
using UnityEngine;class MyClass
{
    [RuntimeInitializeOnLoadMethod(RuntimeInitializeLoadType.BeforeSceneLoad)]
    private static void FirstSceneLoading()
    {
        var components = UnityEngine.Object.FindObjectsByType(typeof(MonoBehaviour), FindObjectsInactive.Include, FindObjectsSortMode.None);
        var willBeActiveAfterSceneLoad = 0;
        foreach (var c in components)
        {
            if (WillBeActiveAfterSceneLoad(((Component)c).gameObject))
                willBeActiveAfterSceneLoad++;
        }
        Debug.Log("BeforeSceneLoad. Will be Active after Awake, count: " + willBeActiveAfterSceneLoad);
    }    static bool WillBeActiveAfterSceneLoad(GameObject gameObject)
    {
        Transform current = gameObject.transform;
        while (current != null)
        {
            if (!current.gameObject.activeSelf)
                return false;            current = current.parent;
        }        return true;
    }
}
```
