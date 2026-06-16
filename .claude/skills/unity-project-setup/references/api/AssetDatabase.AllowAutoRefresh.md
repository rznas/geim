<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.AllowAutoRefresh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Decrements an internal counter which Unity uses to determine whether to allow automatic AssetDatabase refreshing behavior.

Unity uses this method and the corresponding AssetDatabase.DisallowAutoRefresh together internally to prevent an auto-refresh from happening during certain operations. For example, Unity's version control integration uses it to prevent an auto-refresh from happening while it gets new changesets.

This method is useful if you are building your own Editor tools and you want to prevent auto-refreshing of Assets during your own operations (for example, if you are building a custom integration with a version control system). This method does not simply enable the auto-refresh feature. Instead, it decrements a counter, and only allows auto-refresh when the counter reaches zero. It is designed to be used to re-enable auto-refresh after a call to AssetDatabase.DisallowAutoRefresh previously disabled it.

Each time you call DisallowAutoRefresh, you must make sure you also make a corresponding call to AllowAutoRefresh. For example:

```csharp
AssetDatabase.DisallowAutoRefresh();
 // your code here, performed while auto-refresh is not allowed
 AssetDatabase.AllowAutoRefresh();
```

The reason Unity uses a counter rather an a simple on/off boolean is so that if your code executes multiple nested "disable" and "enable" pairs, the inner pairs do not accidentally re-enable auto-refresh too early. Instead, each pair increments and decrements the counter by one, and if your code is correctly nested, the final outer call to AllowAutoRefresh sets the counter to zero.

Important Notes:

This method does not influence the behavior of AssetDatabase.Refresh. The Asset Database always performs a refresh if AssetDatabase.Refresh is called, regardless of this method and its internal counter.

This method is separate from the Auto Refresh setting in Unity's Preferences window, which does not modify this internal counter. If Unity's Auto Refresh preference setting is disabled, calling Allow and Disallow still modifies the internal counter, however the Editor does not automatically refresh regardless of whether the internal counter is at zero or not.

Your code should never cause the counter to go below zero. This method asserts when the internal counter goes below zero but still continues to decrement it. Keep this in mind, because if you don't call this method the same amount of times as Disallow, it means auto-refresh won't function.

Additional resources: AssetDatabase.DisallowAutoRefresh.
