<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Loading.ContentLoadInterface.GetContentFiles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameSpace | The ContentNamespace used to filter the results. |

### Returns

**ContentFile[]** Returns an array of all the ContentFiles belonging to the ContentNamespace.

### Description

Returns all the ContentFile handles associated with the provided ContentNamespace.

The results will include all ContentFiles regardless of their ContentFile.LoadingStatus.
