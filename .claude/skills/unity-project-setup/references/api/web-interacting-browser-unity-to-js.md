<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/web-interacting-browser-unity-to-js.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Call Unity C# script functions from JavaScript

You might want to call some Unity code from your JavaScript **plug-in** or browser code. For example, you might want a JavaScript UI element that triggers a Unity behaviour and needs access to that method.

The recommended way to send data or notifications to the Unity C# script from the browser’s JavaScript is to use the `SendMessage` function to call methods on **GameObjects** in your Unity project.

## Use the SendMessage helper function

Use `SendMessage` to call a Unity method of the Unity scripting API from JavaScript code.

There are some restrictions for what sort of methods you can pass. You can only call methods of a GameObject, not general C# methods attached to other objects. Also, only use `SendMessage` to call a method if one of the following is true:

- The method takes no parameters.
- The method has one parameter and that parameter is a single string.
- The method has one parameter and that parameter is a single number.

Methods with more than one parameter or with parameters of other types can’t be called using `SendMessage`.

## Example SendMessage code

To make the call from a JavaScript plug-in embedded in your project, use the following code:

```
MyGameInstance.SendMessage(objectName, methodName, value);
```

- `objectName` is the name of an object in your **scene**.
- `methodName` is the name of a method in the script, currently attached to that object.
- `value` can be a string, a number, or can be empty.

The following code is a further example that shows each of the types of methods that you can call with different parameters.

```
MyGameInstance.SendMessage('MyGameObject', 'MyFunction');
MyGameInstance.SendMessage('MyGameObject', 'MyFunction', 5);
MyGameInstance.SendMessage('MyGameObject', 'MyFunction', 'MyString');
```

To make a call from the global scope of the embedding page, refer to Call JavaScript functions from global scope.

## Additional resources

- Interaction with browser scripting
- Set up your JavaScript plug-in
- Call JavaScript functions from Unity C# scripts
- Call C/C++/C# functions from Unity C# scripts
- Create callbacks between Unity C#, JavaScript, and C/C++/C# code
