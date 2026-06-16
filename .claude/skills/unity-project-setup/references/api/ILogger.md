<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ILogger.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface for custom logger implementation.

Additional resources: Logger, Debug.unityLogger ILogHandler.

### Properties

| Property | Description |
| --- | --- |
| filterLogType | To selective enable debug log message. |
| logEnabled | To runtime toggle debug logging [ON/OFF]. |
| logHandler | Set Logger.ILogHandler. |

### Public Methods

| Method | Description |
| --- | --- |
| IsLogTypeAllowed | Check logging is enabled based on the LogType. |
| Log | Logs message to the Unity Console using default logger. |
| LogError | A variant of ILogger.Log that logs an error message. |
| LogException | A variant of ILogger.Log that logs an exception message. |
| LogFormat | Logs a formatted message. |
| LogWarning | A variant of Logger.Log that logs an warning message. |
