<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WaitForEndOfFrame.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Suspends a coroutine until the end of the frame after Unity has rendered every Camera and GUI, just before displaying the frame on screen.

`WaitForEndOfFrame` can only be used with a `yield` statement in coroutines.

You can use `WaitForEndOfFrame` to read the display into a Texture, encode it as an image file, and store it on a device.

Switching from the Game view to the Scene view causes `WaitForEndOfFrame` to freeze. It only continues when the application switches back to the Game view. This can only happen when the application is working in the Unity Editor.

**Note:** `WaitForEndOfFrame` does not run when you run the Editor in batch mode, even if the script it's in uses ExecuteInEditMode or ExecuteAlways.

Additional resources: Texture2D.ReadPixels, ExecuteAlways.

```csharp
using System.IO;
using UnityEngine;
using UnityEngine.Networking;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    // Take a shot immediately
    IEnumerator Start()
    {
        UploadPNG();
        yield return null;
    }    IEnumerator UploadPNG()
    {
        // We should only read the screen buffer after rendering is complete
        yield return new WaitForEndOfFrame();        // Create a texture the size of the screen, RGB24 format
        int width = Screen.width;
        int height = Screen.height;
        Texture2D tex = new Texture2D(width, height, TextureFormat.RGB24, false);        // Read screen contents into the texture
        tex.ReadPixels(new Rect(0, 0, width, height), 0, 0);
        tex.Apply();        // Encode texture into PNG
        byte[] bytes = tex.EncodeToPNG();
        Destroy(tex);        // For testing purposes, also write to a file in the project folder
        // File.WriteAllBytes(Application.dataPath + "/../SavedScreen.png", bytes);
        // Create a Web Form
        WWWForm form = new WWWForm();
        form.AddField("frameCount", Time.frameCount.ToString());
        form.AddBinaryData("fileUpload", bytes);        // Upload to a cgi script
        var w = UnityWebRequest.Post("http://localhost/cgi-bin/env.cgi?post", form);
        yield return w.SendWebRequest();
        if (w.result != UnityWebRequest.Result.Success)
            print(w.error);
        else
            print("Finished Uploading Screenshot");
        yield return null;
    }
}
```

```csharp
using UnityEngine;
using System.Collections;public class ExampleScript : MonoBehaviour
{
    // A script that shows destination alpha channel in the game view.    Material mat;    void CreateMaterial()
    {
        // Unity has a built-in shader that is useful for drawing
        // simple colored things. In this case, we just want to use
        // a blend mode that inverts destination colors.
        var shader = Shader.Find("Hidden/Internal-Colored");
        mat = new Material(shader);
        mat.hideFlags = HideFlags.HideAndDontSave;
        // Set blend mode to show destination alpha channel.
        mat.SetInt("_SrcBlend", (int)UnityEngine.Rendering.BlendMode.DstAlpha);
        mat.SetInt("_DstBlend", (int)UnityEngine.Rendering.BlendMode.Zero);
        // Turn off backface culling, depth writes, depth test.
        mat.SetInt("_Cull", (int)UnityEngine.Rendering.CullMode.Off);
        mat.SetInt("_ZWrite", 0);
        mat.SetInt("_ZTest", (int)UnityEngine.Rendering.CompareFunction.Always);
    }    public IEnumerator Start()
    {
        CreateMaterial();
        while (true)
        {
            // Wait until all rendering + UI is done.
            yield return new WaitForEndOfFrame();
            // Draw a quad that shows alpha channel.
            GL.PushMatrix();
            GL.LoadOrtho();
            mat.SetPass(0);
            GL.Begin(GL.QUADS);
            GL.Vertex3(0, 0, 0);
            GL.Vertex3(1, 0, 0);
            GL.Vertex3(1, 1, 0);
            GL.Vertex3(0, 1, 0);
            GL.End();
            GL.PopMatrix();
        }
        yield return null;
    }
}
```

Additional resources: AsyncOperation, WaitForSeconds, WaitForFixedUpdate, WaitForSecondsRealtime, WaitUntil,WaitWhile.

### Inherited Members
