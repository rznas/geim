<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PackageManager.PackageInfo-registry.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The registry where the Package Manager might find this package.

This value always returns a registry, even if the package's source is not PackageSource.Registry (such as an embedded package or a Git dependency). In that case, this value is set to the closest registry match even if the package isn't actually on that registry. For example, if your project uses a scoped registry with the `com.example.myscope` scope, and your embedded package is named `com.example.myscope.mypackage`, this property will be the RegistryInfo from the matching scoped registry.

 For more information, see "Managing scoped registries for a project" in Scoped Registries.
