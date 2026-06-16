<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/web-templates-add.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Add a custom Web template

Create a custom Web template to control the appearance of the HTML page that displays your content.

Custom templates appear in Web Player settings under **Web Template** with the folder name and thumbnail image you provide.

## Create a custom template

The easiest way to create a custom Web template is to copy a built-in template folder then modify it to meet your needs. Each template folder contains an `index.html` file along with any other resources the page needs, such as images or stylesheets.

To create a custom template:

1. Copy the built-in `Default` or `Minimal` template folder from `<Unity Installation>/PlaybackEngines/WebGLSupport/BuildTools/WebGLTemplates/Base`. 
**Note:** On macOS, you can find the Unity installation folder in the `Applications` folder.
2. In your project’s `Assets` folder, create a subfolder called `WebGLTemplates`.
3. Place the copied template folder in the `Assets/WebGLTemplates` folder.
4. Rename the copied template folder so you can identify it later.

## Add a thumbnail image

To give the template a thumbnail image for reference:

1. Add a `128x128-pixel` image to the template folder.
2. Name the image `thumbnail.png`.

## Additional resources

- Using Web templates
- Web template variables
- Web template structure and instantiation
- Web template build configuration and interaction
