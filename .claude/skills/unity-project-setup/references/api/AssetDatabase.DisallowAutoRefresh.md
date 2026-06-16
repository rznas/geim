<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.DisallowAutoRefresh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Increments an internal counter which Unity uses to determine whether to allow automatic AssetDatabase refreshing behavior.

Unity uses this method and the corresponding AssetDatabase.AllowAutoRefresh together internally to prevent an auto-refresh from happening during certain operations. For example, Unity's version control integration uses it to prevent an auto-refresh from happening while it gets new changesets.

This method is useful if you are building your own Editor tools and you want to prevent auto-refreshing of Assets during your own operations (for example, if you are building custom integration with a version control system).

This method does not simply disable the auto-refresh feature. Instead it increments a counter, and only allows auto-refresh when the counter is returned to zero. Therefore, each time you call DisallowAutoRefresh, you must make sure you also make a corresponding call to AllowAutoRefresh. For example:

```csharp
AssetDatabase.DisallowAutoRefresh();
 // your code here, performed while auto-refresh is not allowed
 AssetDatabase.AllowAutoRefresh();
```

This internal counter is used so that if your code executes multiple nested "disable" and "enable" pairs, the inner pairs do not accidentally re-enable auto-refresh too early. Instead, each pair increments and decrements the counter by one, and if your code is correctly nested, the final outer call to AllowAutoRefresh sets the counter to zero.

Important Notes:

This method does not influence the behaviour of AssetDatabase.Refresh. The Asset Database always performs a refresh if AssetDatabase.Refresh is called, regardless of this method and its internal counter.

This method is separate from the Auto Refresh setting in Unity's Preferences window, which does not modify this internal counter. If Unity's Auto Refresh preference setting is disabled, calling Allow and Disallow still modifies the internal counter, however the Editor does not automatically refresh regardless of whether the internal counter is at zero or not.

Additional resources: AssetDatabase.AllowAutoRefresh.
