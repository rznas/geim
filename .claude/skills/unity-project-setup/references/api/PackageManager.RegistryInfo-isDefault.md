<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.RegistryInfo-isDefault.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether this is the default, Unity registry or one of the scoped registries configured in the project manifest.

The default registry hosts the standard Unity packages. The Package Manager always looks for packages in the default registry unless a project manifest contains one or more scoped registries. When a manifest declares a scoped registry, the Package Manager uses the scope to determine whether to look for a package in that registry. You can configure scoped registries inside a `scopedRegistries` element of your Project manifest file. All configured registries must support the npm protocol.

```csharp
{
    "scopedRegistries": [
        {
            "name": "General",
            "url": "https://example.com/registry",
            "scopes": [ "com.example", "com.example.tools.physics"]
        }
    ],
    "dependencies": {
        "com.unity.animation": "1.0.0",
        "com.example.mycompany.tools.animation": "1.0.0",
        "com.example.animation": "1.0.0"
    }
}
```
