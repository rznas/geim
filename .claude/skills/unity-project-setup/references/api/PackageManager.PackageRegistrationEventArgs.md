<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.PackageRegistrationEventArgs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides information about package registration changes that occur during Package Manager operations.

This class contains details about packages being added, removed, or updated in the project.

**Remarks**

- Use this class with Events.registeringPackages and Events.registeredPackages events.
- The `changedFrom` and `changedTo` collections must be iterated together to maintain package correspondence. They are guaranteed to match in length and ordering.
- All collections are read-only and can't be modified.
- Package information in these collections represents the state at the time of the event.
- The `PackageRegistrationEventArgs` might contain empty collections if no packages were added, removed, or changed.
- You can use this class to monitor package changes.

```csharp
using System;
using UnityEditor.PackageManager;
using UnityEngine;[ExecuteInEditMode]
public class PackageRegistrationExample: MonoBehaviour
{
    void Start()
    {
        SubscribeToPackageEvents();
    }    void OnDestroy()
    {
        Cleanup();
    }    void SubscribeToPackageEvents()
    {
        // Subscribe to the event before packages change
        Debug.Log("Subscribing to registeringPackages");
        Events.registeringPackages += OnPackagesRegistering;
    }    void OnPackagesRegistering(PackageRegistrationEventArgs args)
    {
        // Log added packages
        foreach (var package in args.added)
        {
            Debug.Log($"Adding package: {package.displayName} ({package.version})");
        }        // Log removed packages
        foreach (var package in args.removed)
        {
            Debug.Log($"Removing package: {package.displayName} ({package.version})");
        }        // Log package updates
        using var changes = args.changedFrom.GetEnumerator();
        using var targets = args.changedTo.GetEnumerator();
        
        while (changes.MoveNext() && targets.MoveNext())
        {
            var oldPackage = changes.Current;
            var newPackage = targets.Current;
            Debug.Log($"Updating {oldPackage?.displayName} from {oldPackage?.version} to {newPackage?.version}");
        }
    }    void Cleanup()
    {
        // Unsubscribe from the event when finished
        Debug.Log("Unsubscribing to registeringPackages");
        Events.registeringPackages -= OnPackagesRegistering;
    }
}
```

**Related information**

- Events
- Events.registeringPackages
- Events.registeredPackages
- PackageInfo
- Client

### Properties

| Property | Description |
| --- | --- |
| added | A collection of PackageInfo entries to add during the Package Manager registration process. |
| changedFrom | A collection of PackageInfo entries describing packages to be overridden by another version during the Package Manager registration process. |
| changedTo | A collection of PackageInfo entries describing packages that will override a previously registered version during the Package Manager registration process. |
| removed | A collection of PackageInfo entries to remove during the Package Manager registration process. |
