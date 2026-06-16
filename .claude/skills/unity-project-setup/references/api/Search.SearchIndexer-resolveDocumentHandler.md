<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchIndexer-resolveDocumentHandler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Handler used to resolve a document ID to some other data string.

```csharp
using System.Linq;
using UnityEditor;
using UnityEditor.Search;
using UnityEngine;

/// <summary>
/// Since the search indexes only contain string document IDs that must be unique,
/// you can use `resolveDocumentHandler` to transform these document IDs into something
/// that can be searched while running queries that contain simple words.
/// </summary>
static class Example_SearchIndexer_resolveDocumentHandler
{
    struct Weapon
    {
        public string id { get; private set; }
        public int power { get; set; }
        public string name { get; set; }

        public Weapon(string name, int power)
        {
            id = System.Guid.NewGuid().ToString("N");
            this.name = name;
            this.power = power;
        }
    }

    [MenuItem("Examples/SearchIndexer/resolveDocumentHandler")]
    public static void Run()
    {
        const int MagicPower = 1;
        var weapons = new[]
        {
            new Weapon("Long Bow", 2),
            new Weapon("Short Sword", 3),
            new Weapon("Short Sword", 3 + MagicPower), // We have two weapons that will have different ids, but the same name.
            new Weapon("Long Sword", 4)
        };
        var si = new SearchIndexer("Weapons", FileUtil.GetUniqueTempPathInProject())
        {
            // Define a handler that returns a searchable string that can search for each document.
            // These words are not indexed, therefore the string is linear and might not scale as expected.
            // IMPORTANT: Unless you want to have case-sensitive search, you should convert the resolved string to lowercase.
            resolveDocumentHandler = (id) => weapons.First(w => w.id == id).name.ToLowerInvariant()
        };

        si.Start();
        foreach (var w in weapons)
        {
            var di = si.AddDocument(w.id);
            si.AddWord("weapon", 0, di);
        }
        si.Finish(() =>
        {
            OnIndexReady(si, weapons);
            // Dispose the SearchIndexer when you are done with it.
            si.Dispose();
        });
    }

    private static void OnIndexReady(SearchIndexer si, Weapon[] weapons)
    {
        var results = si.Search("weapon sword").ToArray();
        Debug.Assert(results.Length == 3, "No weapon were found");
        foreach (var result in results)
        {
            var w = weapons.First(w => w.id == result.id);
            Debug.Log($"Found [{result.index}] {result.id}/{w.name} ({w.power})");
        }
    }
}
```
