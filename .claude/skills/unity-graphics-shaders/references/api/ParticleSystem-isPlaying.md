<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem-isPlaying.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines whether the Particle System is playing.

isPlaying is `true` from when the Particle System begins to play until its last live particle dies. isPlaying is `false` when the Particle System is no longer spawning particles and is not simulating any live particles. (Read Only).

```csharp
using UnityEngine;// A particle sprite example of isPlaying. A button is created
// that shows whether the Particle System is running.  If not, then
// it can be started.  If it is running then it can be stopped.using UnityEngine;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    public Texture2D tex;
    private ParticleSystem ps;
    private Sprite sprite;    void Start()
    {
        ps = GetComponent<ParticleSystem>();
        sprite = Sprite.Create(tex, new Rect(0.0f, 0.0f, tex.width, tex.height), Vector2.zero);        var textureSheetAnimation = ps.textureSheetAnimation;
        textureSheetAnimation.enabled = true;
        textureSheetAnimation.mode = ParticleSystemAnimationMode.Sprites;
        textureSheetAnimation.AddSprite(sprite);
    }    void OnGUI()
    {
        if (ps.isPlaying)
        {
            if (GUI.Button(new Rect(10, 70, 150, 50), "Stop and clear"))
            {
                ps.Stop(true, ParticleSystemStopBehavior.StopEmittingAndClear);
            }
        }
        else
        {
            if (GUI.Button(new Rect(10, 70, 150, 50), "Play"))
            {
                ps.Play(false);
            }
        }
    }
}
```
