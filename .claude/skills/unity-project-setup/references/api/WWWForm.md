<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WWWForm.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Helper class to generate form data to post to web servers using the UnityWebRequest or WWW classes.

```csharp
using UnityEngine;
using UnityEngine.Networking;
using System.Collections;public class WWWFormImage : MonoBehaviour
{    public string screenShotURL= "https://www.my-server.com/cgi-bin/screenshot.pl";    // Use this for initialization
    void Start()
    {
        StartCoroutine(UploadPNG());
    }    IEnumerator UploadPNG()
    {
        // We should only read the screen after all rendering is complete
        yield return new WaitForEndOfFrame();        // Create a texture the size of the screen, RGB24 format
        int width = Screen.width;
        int height = Screen.height;
        var tex = new Texture2D( width, height, TextureFormat.RGB24, false );        // Read screen contents into the texture
        tex.ReadPixels( new Rect(0, 0, width, height), 0, 0 );
        tex.Apply();        // Encode texture into PNG
        byte[] bytes = tex.EncodeToPNG();
        Destroy( tex );        // Create a Web Form
        WWWForm form = new WWWForm();
        form.AddField("frameCount", Time.frameCount.ToString());
        form.AddBinaryData("fileUpload", bytes, "screenShot.png", "image/png");        // Upload to a cgi script
        using (var w = UnityWebRequest.Post(screenShotURL, form))
        {
            yield return w.SendWebRequest();
            if (w.result != UnityWebRequest.Result.Success) {
                print(w.error);
            }
            else {
                print("Finished Uploading Screenshot");
            }
        }
    }
}
```

Here is a sample script that retrieves the high scores stored in a table in an SQL database.

```csharp
using UnityEngine;
using UnityEngine.Networking;
using System.Collections;public class WWWFormScore : MonoBehaviour
{
    string highscore_url = "https://www.my-site.com/highscores.pl";
    string playName = "Player 1";
    int score = -1;    // Use this for initialization
    IEnumerator Start()
    {
        // Create a form object for sending high score data to the server
        WWWForm form = new WWWForm();        // Assuming the perl script manages high scores for different games
        form.AddField( "game", "MyGameName" );        // The name of the player submitting the scores
        form.AddField( "playerName", playName );        // The score
        form.AddField( "score", score );        // Create a download object
        var download = UnityWebRequest.Post(highscore_url, form);        // Wait until the download is done
        yield return download.SendWebRequest();        if (download.result != UnityWebRequest.Result.Success)
        {
            print( "Error downloading: " + download.error );
        }
        else
        {
            // show the highscores
            Debug.Log(download.downloadHandler.text);
        }
    }
}
```

Here is a sample Perl script that processes the high scores stored in a table in an SQL database.

```csharp
#!/usr/bin/perl
# The SQL database needs to have a table called highscores
# that looks something like this:
#
#   CREATE TABLE highscores (
#     game varchar(255) NOT NULL,
#     player varchar(255) NOT NULL,
#     score integer NOT NULL
#   );
#
use strict;
use CGI;
use DBI;# Read form data etc.
my $cgi = new CGI;# The results from the high score script will be in plain text
print $cgi->header("text/plain");my $game = $cgi->param('game');
my $playerName = $cgi->param('playerName');
my $score = $cgi->param('score');exit 0 unless $game; # This parameter is required# Connect to a database
my $dbh = DBI->connect( 'DBI:mysql:databasename', 'username', 'password' )
    || die "Could not connect to database: $DBI::errstr";# Insert the player score if there are any
if( $playerName && $score) {
    $dbh->do( "insert into highscores (game, player, score) values(?,?,?)",
        undef, $game, $playerName, $score );
}# Fetch the high scores
my $sth = $dbh->prepare(
    'SELECT player, score FROM highscores WHERE game=? ORDER BY score desc LIMIT 10' );
$sth->execute($game);
while (my $r = $sth->fetchrow_arrayref) {
    print join(':',@$r),"\n"
}
```

### Properties

| Property | Description |
| --- | --- |
| data | (Read Only) The raw data to pass as the POST request body when sending the form. |
| headers | (Read Only) Returns the correct request headers for posting the form using the WWW class. |

### Constructors

| Constructor | Description |
| --- | --- |
| WWWForm | Creates an empty WWWForm object. |

### Public Methods

| Method | Description |
| --- | --- |
| AddBinaryData | Add binary data to the form. |
| AddField | Add a simple field to the form. |
