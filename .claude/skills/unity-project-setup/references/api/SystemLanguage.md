<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemLanguage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The language the user's operating system is running in. Returned by Application.systemLanguage.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        //This checks if your computer's operating system is in the French language
        if (Application.systemLanguage == SystemLanguage.French)
        {
            //Outputs into console that the system is French
            Debug.Log("This system is in French. ");
        }
        //Otherwise, if the system is English, output the message in the console
        else if (Application.systemLanguage == SystemLanguage.English)
        {
            Debug.Log("This system is in English. ");
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| Afrikaans | Indicates that the operating system's language is Afrikaans. |
| Arabic | Indicates that the operating system's language is Arabic. |
| Basque | Indicates that the operating system's language is Basque. |
| Belarusian | Indicates that the operating system's language is Belarusian. |
| Bulgarian | Indicates that the operating system's language is Bulgarian. |
| Catalan | Indicates that the operating system's language is Catalan. |
| Chinese | Indicates that the operating system's language is Chinese. |
| Czech | Indicates that the operating system's language is Czech. |
| Danish | Indicates that the operating system's language is Danish. |
| Dutch | Indicates that the operating system's language is Dutch. |
| English | Indicates that the operating system's language is English. |
| Estonian | Indicates that the operating system's language is Estonian. |
| Faroese | Indicates that the operating system's language is Faroese. |
| Finnish | Indicates that the operating system's language is Finnish. |
| French | Indicates that the operating system's language is French. |
| German | Indicates that the operating system's language is German. |
| Greek | Indicates that the operating system's language is Greek. |
| Hebrew | Indicates that the operating system's language is Hebrew. |
| Icelandic | Indicates that the operating system's language is Icelandic. |
| Indonesian | Indicates that the operating system's language is Indonesian. |
| Italian | Indicates that the operating system's language is Italian. |
| Japanese | Indicates that the operating system's language is Japanese. |
| Korean | Indicates that the operating system's language is Korean. |
| Latvian | Indicates that the operating system's language is Latvian. |
| Lithuanian | Indicates that the operating system's language is Lithuanian. |
| Norwegian | Indicates that the operating system's language is Norwegian. |
| Polish | Indicates that the operating system's language is Polish. |
| Portuguese | Indicates that the operating system's language is Portuguese. |
| Romanian | Indicates that the operating system's language is Romanian. |
| Russian | Indicates that the operating system's language is Russian. |
| SerboCroatian | Indicates that the operating system's language is Serbo-Croatian. |
| Slovak | Indicates that the operating system's language is Slovak. |
| Slovenian | Indicates that the operating system's language is Slovenian. |
| Spanish | Indicates that the operating system's language is Spanish. |
| Swedish | Indicates that the operating system's language is Swedish. |
| Thai | Indicates that the operating system's language is Thai. |
| Turkish | Indicates that the operating system's language is Turkish. |
| Ukrainian | Indicates that the operating system's language is Ukrainian. |
| Vietnamese | Indicates that the operating system's language is Vietnamese. |
| ChineseSimplified | Indicates that the operating system's language is ChineseSimplified. |
| ChineseTraditional | Indicates that the operating system's language is ChineseTraditional. |
| Hindi | Indicates that the operating system's language is Hindi. |
| Unknown | Indicates that the operating system's language is unknown. |
| Hungarian | Indicates that the operating system's language is Hungarian. |
