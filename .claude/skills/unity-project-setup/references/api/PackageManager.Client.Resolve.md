<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.Client.Resolve.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Forces the Package Manager to resolve the project's packages, reinstalling any altered or missing package and removing extraneous packages.

Forces the Package Manager to resolve the project's packages to ensure they are up-to-date and unchanged. If the packages are already up-to-date, no event is raised.

 
**Note:** Make sure any other Client operations complete before calling this method. For more information, refer to the note on the Client class reference page.

```csharp
using UnityEngine;
using UnityEditor.PackageManager;
using UnityEditor;
[ExecuteInEditMode]
public class PackageManagerClientResolveExample : MonoBehaviour
{
    void Start()
    {
        Debug.Log("Client.Resolve example...");        // Optionally listen for package events, raised if packages are getting added or removed
        Events.registeringPackages += OnPackagesRegistering;
        Events.registeredPackages += OnPackagesRegistered;        ResolvePackages();
    }    void ResolvePackages()
    {
        // Trigger resolution
        Client.Resolve();
    }    void OnPackagesRegistering(PackageRegistrationEventArgs args)
    {    }    void OnPackagesRegistered(PackageRegistrationEventArgs args)
    {    }
}
```
