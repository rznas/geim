<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Progress.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Progress utility class reports the progress of asynchronous tasks to Unity.

The Progress utility class can be used to report progress of asynchronous tasks in multiple ways. Here is an example of a task that runs on the EditorApplication.update loop and reports progress:

```csharp
using System.Collections;
using UnityEditor;class ProgressReport_EditorUpdate
{
    static IEnumerator s_CurrentEnumerator;    [MenuItem("Examples/ProgressReport/EditorUpdate")]
    static void RunEditorUpdate()
    {
        if (s_CurrentEnumerator == null)
        {
            s_CurrentEnumerator = RunTaskWithReport();
        }
        EditorApplication.update -= RunTaskOnUpdate;
        EditorApplication.update += RunTaskOnUpdate;
    }    static void RunTaskOnUpdate()
    {
        if (s_CurrentEnumerator == null)
        {
            return;
        }        // Execute one step of the task
        var atEnd = !s_CurrentEnumerator.MoveNext();        // If there is nothing more to do, remove the update callback
        if (atEnd)
        {
            s_CurrentEnumerator = null;
            EditorApplication.update -= RunTaskOnUpdate;
        }
    }    static IEnumerator RunTaskWithReport()
    {
        // Create a new progress indicator
        int progressId = Progress.Start("Running one task");        // Report the progress status at anytime
        for (int frame = 0; frame <= 1000; ++frame)
        {
            string description;
            if (frame < 250)
                description = "First part of the task";
            else if (frame < 750)
                description = "Second part of the task";
            else
                description = "Last part of the task";
            Progress.Report(progressId, frame / 1000.0f, description);            // Do your computation that you want to report progress on
            // ...
            yield return null;
        }        // The task is finished. Remove the associated progress indicator.
        Progress.Remove(progressId);
    }
}
```

Here is another example of a task that runs on a separate thread and reports progress:

```csharp
using System.Threading;
using System.Threading.Tasks;
using UnityEditor;class ProgressReport_Threaded
{
    [MenuItem("Examples/ProgressReport/Threaded")]
    static void RunThreaded()
    {
        Task.Run(RunTaskWithReport);
    }    static void RunTaskWithReport()
    {
        // Create a new progress indicator
        int progressId = Progress.Start("Running one task");        // Report the progress status at anytime
        for (int frame = 0; frame <= 1000; ++frame)
        {
            string description;
            if (frame < 250)
                description = "First part of the task";
            else if (frame < 750)
                description = "Second part of the task";
            else
                description = "Last part of the task";
            Progress.Report(progressId, frame / 1000.0f, description);            // Do your computation that you want to report progress on
            ComputeSlowStep();
        }        // The task is finished. Remove the associated progress indicator.
        Progress.Remove(progressId);
    }    static void ComputeSlowStep()
    {
        // Simulate a slow computation with a 1 millisecond sleep
        Thread.Sleep(1);
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| globalProgress | Returns the global average progression of all running tasks. |
| globalRemainingTime | Returns the maximum time remaining for all running progress indicators. |
| running | Returns true if there is at least one running progress indicator, false otherwise. |

### Static Methods

| Method | Description |
| --- | --- |
| Cancel | Cancels a runnning progress indicator, and invokes the cancel callback for the associated task. |
| ClearRemainingTime | Resets the computation of a progress indicator's remaining time. |
| EnumerateItems | Returns an enumerator to loop over all progress indicators. |
| Exists | Checks whether a progress indicator with the specified ID exists. |
| Finish | Marks the progress indicator as finished. |
| GetCount | Gets the number of available progress indicators. |
| GetCountPerStatus | For each available status, gets the number of progress indicators with that status. |
| GetCurrentStep | Gets the current step for a progress indicator. |
| GetDescription | Gets a progress indicator's description. |
| GetEndDateTime | Gets the timestamp of when the progress indicator ended. |
| GetId | Finds a progress indicator's unique ID using its index in the set of all available progress indicators. |
| GetName | Gets a progress indicator's name. |
| GetOptions | Gets the options that you specified when you started the progress indicator. |
| GetParentId | Gets the unique ID of the progress indicator's parent, if any. |
| GetPriority | Gets a progress indicator's priority. |
| GetProgress | Gets a progress indicator's progress. |
| GetProgressById | Gets information about a progress indicator. |
| GetRemainingTime | Gets a progress indicator's remaining time, in seconds. |
| GetRunningProgressCount | Gets the number of active or running progress indicators. |
| GetStartDateTime | Gets the timestamp of when the progress indicator started. |
| GetStatus | Gets the progress indicator's status. |
| GetStepLabel | Gets the label that displays a progress indicator's steps. |
| GetTimeDisplayMode | Get a progress indicator's time display mode. |
| GetTotalSteps | Gets the total number of steps, from start to finish, for a progress indicator. |
| GetUpdateDateTime | Gets the time that the progress indicator last changed, or finished. |
| IsCancellable | Indicates whether you can cancel the progress indicator's associated task. |
| IsPausable | Indicates whether you can pause the progress indicator's task. |
| Pause | Pauses a runnning progress indicator, and invokes the pause callback for its task. |
| RegisterCancelCallback | Registers a callback that is called when the user requests to cancel a running progress indicator's associated task. |
| RegisterPauseCallback | Registers a callback that is called when the user requests to pause or resume a running progress indicator's task. |
| Remove | Finishes and removes an active progress indicator. |
| Report | Reports a running progress indicator's current status. |
| Resume | Resumes a paused progress indicator, and invokes the pause callback for the associated task. |
| SetDescription | Sets the progress indicator's description. To clear the description pass null. |
| SetPriority | Sets a progress indicator's priority. |
| SetRemainingTime | Sets the progress indicator's remaining time, in seconds. |
| SetStepLabel | Sets the label that displays a progress indicator's steps. |
| SetTimeDisplayMode | Set a progress indicator's time display mode. |
| ShowDetails | Opens the progress window for background tasks. |
| Start | This method starts a new progress indicator. |
| UnregisterCancelCallback | Unregisters a previously registered progress cancellation callback. |
| UnregisterPauseCallback | Unregisters a previously registered progress pause callback. |

### Events

| Event | Description |
| --- | --- |
| added | An event raised when a new progress indicator starts. |
| removed | An event raised when a progress indicator is removed. |
| updated | An event raised when a progress indicator's state updates. |
