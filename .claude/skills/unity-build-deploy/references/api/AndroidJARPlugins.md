<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/AndroidJARPlugins.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# JAR plug-ins

You can use Java Archive (JAR) **plug-ins** to interact with the Android OS or to call methods written in Java from C# **scripts**.

Java Archive (JAR) plug-ins contain Java code that you can call from C# scripts. They’re useful if you want to interact with the Android operating system, or just call Java code from C#.

This type of plug-in is useful if you plan to reuse Java code in multiple projects, or distribute it to other people. If instead you only want to write a small amount of Java code for a single project, then a Java or Kotlin source code plug-in might be more appropriate.

## Import a JAR plug-in

To import a JAR plug-in (AAR) plug-in into your Unity Project:

1. Copy the `.jar` file to your Unity Project’s **Assets** folder.
2. Select the `.jar` file in Unity and view it in the **Inspector**.
3. In the **Select platforms for plugin** section, select **Android**.
4. Select **Apply**.

## Additional resources

- Android plug-in types
- Calling Java and Kotlin plug-in code from C# scripts
