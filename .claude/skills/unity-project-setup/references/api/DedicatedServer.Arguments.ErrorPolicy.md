<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DedicatedServer.Arguments.ErrorPolicy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The policy Unity uses when dedicated server command-line arguments are invalid.

This is how Unity responds to unknown command-line arguments and invalid values for known arguments. The default value is configured in Dedicated Server Player settings. At startup, Unity might also set this property from the `-arg-error-policy` or `-aep` command-line flag. Valid values are `ignore`, `warn`, and `fatal`. Additional resources: ArgumentErrorPolicy.
