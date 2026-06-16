<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.CodeEditor.CodeEditor.QuoteForProcessStart.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Quotes a string to pass to Process.Start as a single argument, and appends it to this string builder.

On Windows systems, quote using the Win32 CommandLineToArgvW API scheme. Most Windows applications use this scheme, although there are exceptions (for example, cmd.exe and cscript.exe).

On Unix-based systems, quote using the GLib g_shell_parse_argv function that Mono uses. This function converts the argument string to a native Unix argument list.

Command line shells such as cmd.exe and the POSIX shell may use distinct quotation mechanisms. Do not use the QuoteForProcessStart method to quote arguments for command line shells.

Do not append two quoted arguments to the string builder without putting an unquoted separator between them. Consecutive quotation marks trigger unpredictable behavior in CommandLineToArgvW, and may also trigger undocumented behavior other argument processors.
