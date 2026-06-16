<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DeeplinkHandlerAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Decorates a public static method to serve as deeplink handler for application-level deeplinks forwarded by the Unity Editor.

Use the DeeplinkHandler attribute to decorate methods that serve as deeplink handlers in your Editor script namespace. The Unity Editor forwards deeplinks it receives to a decorated method when the dedicated namespace segment of the deeplink matches an assigned namespace from a DeeplinkHandler attribute. The Unity Editor forwards deeplinks matching the following format:

`com.unity.editor://editor/{namespace}/*`

where `{namespace}` is your user-defined namespace and `*` is any additional url segments or query parameters you want to send to the handler.

For more information about deeplinking, refer to Deeplinking support for local projects in the Unity Hub documentation.

### Properties

| Property | Description |
| --- | --- |
| HandlerNamespace | Specifies the namespace of the deeplink handler. This parameter is case-insensitive. |

### Constructors

| Constructor | Description |
| --- | --- |
| DeeplinkHandlerAttribute | Declares a method as a handler for application-level deeplinks. |
