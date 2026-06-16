<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.AndroidLaunchReport.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides information about the application launched on Android devices.

Use this class to get information about the application launched on multiple devices at the same time.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEditor.Build;public class PostLaunchCallback : IPostprocessLaunch
{
	public int callbackOrder => 0;	private void Log(string message)
	{
		Debug.LogFormat(LogType.Log, LogOption.NoStacktrace, null, message);
	}	public void OnPostprocessLaunch(ILaunchReport launchReport)
	{
		Log($"Launch callback on {launchReport.buildTarget.TargetName.ToString()}, result: {launchReport.result}");
#if UNITY_ANDROID
		var androidLaunchReport = UnityEditor.Android.AndroidLaunchReportExtensions.AsAndroidReport(launchReport);
		if (androidLaunchReport != null)
		{
			foreach (var launch in androidLaunchReport.Launches)
			{
				Log($"Running '{launch.PackageName}/{launch.ActivityName}' on device '{launch.DeviceId}', Success: {launch.Success}, errors: {launch.Errors}");
			}
		}
#endif
	}
}
```

### Properties

| Property | Description |
| --- | --- |
| Launches | An array containing information about the application launched on multiple Android devices. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| buildTarget | The target platform on which the application build was launched. |
| result | The outcome of the application launch. |
