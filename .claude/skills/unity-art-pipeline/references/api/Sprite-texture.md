<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Sprite-texture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get the reference to the used Texture. If packed this will point to the atlas, if not packed will point to the source Sprite.

This only returns the Texture the Sprite is currently using. You cannot change the Texture using this.

```csharp
//Attach this script to a Sprite GameObject. Make sure it has a SpriteRenderer component (should have by default)
//Next, attach a second Sprite in the Inspector window of your first Sprite GameObjectusing UnityEngine;public class Example : MonoBehaviour
{
    SpriteRenderer m_SpriteRenderer;
    public Sprite m_Sprite;    void Start()
    {
        //Fetch the SpriteRenderer of the Sprite
        m_SpriteRenderer = GetComponent<SpriteRenderer>();
        //Output the current Texture of the Sprite (this returns the source Sprite if the Texture isn't packed)
        Debug.Log("Texture 1 : " + m_SpriteRenderer.sprite.texture);
    }    void Update()
    {
        //Press Space key to change the Sprite to the Sprite you attach in the Inspector
        if (Input.GetKeyDown(KeyCode.Space))
        {
            //Change the Sprite
            m_SpriteRenderer.sprite = m_Sprite;
            //Output the Texture of the new Sprite (this returns the source Sprite if the Texture isn't packed)
            Debug.Log("Texture 2 : " + m_SpriteRenderer.sprite.texture);
        }
    }
}
```
