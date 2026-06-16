<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Progress.Start.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The progress indicator's name. You can display the name as a title in the progress window. Use / (slash) as a separator to group child progress indicators together. |
| description | The progress indicator's initial description. You can change it using Report or SetDescription. |
| parentId | The unique ID of the parent progress indicator, if any. If the progress indicator has no parent, pass -1. |
| options | The progress indicator's initial progress options. |

### Returns

**int** The newly created progress identifier. This identifier is used for all other APIs to update the progress status.

### Description

This method starts a new progress indicator.

```csharp
public IEnumerator Run_TwoTasks()
{
    var title1 = "Running task 1...";
    var title2 = "Running task 2...";
    int progressId1 = Progress.Start(title1);
    int progressId2 = Progress.Start(title2);    Progress.ShowDetails(false);
    yield return null;    for (int frame = 0; frame <= 10; ++frame)
    {
        Progress.Report(progressId1, Random.value);
        yield return WaitForSeconds(0.5f);
        Progress.Report(progressId2, Random.value);
        yield return WaitForSeconds(0.5f);
    }    Progress.Remove(progressId1);
    Progress.Remove(progressId2);
}
```
