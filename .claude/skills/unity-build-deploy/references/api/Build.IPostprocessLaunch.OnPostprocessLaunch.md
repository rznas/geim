<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.IPostprocessLaunch.OnPostprocessLaunch.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| launchReport | A report containing information about the launch, such as the target platform on which the application was launched and outcome of the process. Some platforms such as Android provide additional launch information which you can obtain by performing a necessary cast. |

### Description

Implement this method to receive a callback after Unity attempts to launch the application.

Unity invokes this callback regardless of whether the application launch was successful or not.

The following platforms are not supported:

- Nintendo Switch
- PlayStation 4
- PlayStation 5
- Xbox One
- Xbox Series X|S.

Additional resources: AndroidLaunchReportExtensions.AsAndroidReport

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
