<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.Events.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An interface for accessing the package manager events. Use these events to monitor package changes in your Unity project.

The registeringPackages event fires before any package changes occur. The registeredPackages event fires after all changes are complete. Both events provide a PackageRegistrationEventArgs parameter which contains details about the changes. Events are usually reset during domain reloads, so register your handlers using `[InitializeOnLoad]`.

```csharp
using UnityEditor;
using UnityEditor.PackageManager;
using UnityEngine;[InitializeOnLoad]
public class PackageChangeMonitor
{
    static PackageChangeMonitor()
    {
        // Register for package change events
        Events.registeringPackages += OnPackagesRegistering;
        Events.registeredPackages += OnPackagesRegistered;
    }    private static void OnPackagesRegistering(PackageRegistrationEventArgs args)
    {
        // Called before packages are changed
        if (args.added.Count > 0)
            Debug.Log($"About to add {args.added.Count} packages");
        
        if (args.removed.Count > 0)
            Debug.Log($"About to remove {args.removed.Count} packages");
    }    private static void OnPackagesRegistered(PackageRegistrationEventArgs args)
    {
        // Called after packages have changed
        foreach (var package in args.added)
            Debug.Log($"Added package: {package.name} ({package.version})");
            
        foreach (var package in args.removed)
            Debug.Log($"Removed package: {package.name}");
    }
}
```

**Related information**

- PackageRegistrationEventArgs
- PackageInfo
- Client

### Events

| Event | Description |
| --- | --- |
| registeredPackages | Event raised after applying changes to the registered packages list. |
| registeringPackages | Event raised before applying changes to the registered packages list. |
