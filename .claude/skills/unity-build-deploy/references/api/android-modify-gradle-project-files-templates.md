<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/android-modify-gradle-project-files-templates.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Modify Gradle project files with Gradle template files

To have some control over the format and contents of **Gradle** project files, you can override Unity’s default templates with your own custom template. To do this:

1. Go to **Edit** > **Project Settings** to open the Project Settings window.
2. Select the **Player** tab, then open Android Player Settings
3. In the **Publishing Settings** section, enable the checkbox that corresponds to the Gradle project file type you want to create a custom template for. This creates a Gradle project template file and displays the path to the file.
4. Modify the template file to control the final format and contents of the final Gradle project file.

**Note**: If there is a discrepancy between the values set in the Android **Player settings** and the template file, Unity displays a warning message, and Player settings take precedence.

To verify that your template modifications give the result that you expect, export your project and view the final Gradle project files in the resulting project.

## Additional resources

- Gradle template variables
- Export an Android project
- Modify Gradle project files with the Android Project Configuration Manager
- Modify Gradle project files with Android Studio
