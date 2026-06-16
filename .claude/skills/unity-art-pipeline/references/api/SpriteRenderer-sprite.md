<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SpriteRenderer-sprite.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Sprite to render.

The SpriteRenderer component will render the assigned Sprite.sprite sprite. The rendered sprite can be changed by specifying a different sprite in the sprite variable.

```csharp
// Example that loads sprites from a texture in the Resources folder
// and allows them to be chosen by the selection button.using UnityEngine;public class ExampleClass : MonoBehaviour
{
    private string spriteNames = "part_explosion";
    private Rect buttonPos;
    private int spriteVersion = 0;
    private SpriteRenderer spriteR;
    private Sprite[] sprites;    void Start()
    {
        buttonPos = new Rect(10.0f, 10.0f, 150.0f, 50.0f);
        spriteR = gameObject.GetComponent<SpriteRenderer>();
        sprites = Resources.LoadAll<Sprite>(spriteNames);
    }    void OnGUI()
    {
        if (GUI.Button(buttonPos, "Choose next sprite"))
        {
            spriteVersion += 1;
            if (spriteVersion > 3)
                spriteVersion = 0;
            spriteR.sprite = sprites[spriteVersion];
        }
    }
}
```
