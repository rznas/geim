<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Android.ApplicationExitInfoProvider.GetHistoricalProcessExitInfo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| packageName | Application package name |
| pid | Process ID |
| maxNum | Maximum number of records to return |

### Returns

**IApplicationExitInfo[]** An array of ApplicationExitInfo records sorted by date.

### Description

Gets records of application terminations including the reasons for the most recent terminations.

Mirrors `android:android.app.ApplicationExitInfo gethistoricalprocessexitreasons() method`. For more information, refer to Android's documentation on [getHistoricalProcessExitReasons method](https://developer.android.com/reference/kotlin/android/app/ActivityManager#gethistoricalprocessexitreasons).
