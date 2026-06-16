<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Loading.ContentFile.GetObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| lfid | The local file identifier. |

### Returns

**Object** The loaded Object from the ContentFile.

### Description

Used to access objects within the ContentFile by local file identifier.

This method will raise an exception if when called ContentFile.LoadingStatus is not LoadingStatus.Completed.
