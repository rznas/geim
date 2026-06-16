<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Loading.ContentLoadInterface.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

API Interface for loading and unloading Content files.

### Static Methods

| Method | Description |
| --- | --- |
| GetContentFiles | Returns all the ContentFile handles associated with the provided ContentNamespace. |
| GetIntegrationTimeMS | Gets the target duration allowed per frame to integrate loading or unloading objects, in milliseconds. |
| GetSceneFiles | An array of all the ContentSceneFiles associated with the ContentNamespace. |
| LoadContentFileAsync | Loads a serialized file asynchronously from disk. |
| LoadSceneAsync | Loads a scene serialized file asynchronously from disk. |
| SetIntegrationTimeMS | Sets the target duration allowed per frame to integrate loading or unloading objects, in milliseconds. |
