import 'package:flutter/material.dart';
 
import 'package:music_app/models/category.dart';
import 'package:music_app/models/music.dart';
 
const availableCategories = [
  Category(
    id: 'c1',
    title: 'R&B',
    color: Colors.brown,
  ),
  Category(
    id: 'c2',
    title: 'Rock',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Pop',
    color: Colors.pink,
  ),
  Category(
    id: 'c4',
    title: 'Rap',
    color: Colors.grey,
  ),
  Category(
    id: 'c5',
    title: 'Jazz',
    color: Colors.purple,
  ),
  Category(
    id: 'c6',
    title: 'Hip Hop',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Indie',
    color: Colors.orange,
  ),
];
 
const dummyMusic = [
  Music(
    id: 'm1',
    categories: ['c1'],
    title: 'Is there someone else?',
    imageUrl:
        'https://www.musicasmaistocadas.mus.br/wp-content/uploads/2022/01/Is-There-Someone-Else-The-Weeknd.png',
    lyrics: [
      """
 
I know that you're hiding something from me
That's been close to your heart
And I felt it creepin' up every day
Baby, right from the start
I know that look you give when we're fighting (Fighting)
We're fighting (Fighting)
'Cause I used to be the one who was lying (Lying)
Oh, lying (Lying)
 
Oh, is there someone else or not?
'Cause I wanna keep you close
I don't wanna lose my spot
'Cause I need to know
If you're hurting him, or you're hurting me
If I ain't with you, I don't wanna be
Is there someone else or not?
Ooh, or not?
 
I don't deserve someone loyal to me
Don't you think I see?
And I don't want to be a prisoner to who I used to be
I swear I changed my ways for the better, the better
'Cause I wanna be with you forever, forever
 
Oh, is there someone else or not?
'Cause I wanna keep you close
I don't wanna lose my spot
'Cause I need to know
If you're hurting him, or you're hurting me
If I ain't with you, I don't wanna be
Is there someone else or not?
Ooh, or not?
      """
    ],
    artist: 'The Weeknd',
    duration: Duration(minutes: 3, seconds: 19),
    popularity: Popularity.popular,
    isHeartBroken: true,
    isVibing: true,
  ),
  Music(
    id: 'm2',
    categories: ['c2'],
    title: 'Cancer',
    imageUrl:
        'https://images.genius.com/a41483a521b44b6528ca922fc561be19.1000x1000x1.jpg',
    lyrics: [
      """
 
Turn away, if you could get me a drink
Of water, 'cause my lips are chapped and faded
Call my Aunt Marie, help her gather all my things
And bury me in all my favorite colors
My sisters and my brothers, still, I will not kiss you
'Cause the hardest part of this is leaving you
 
Now turn away, 'cause I'm awful just to see
'Cause all my hair's abandoned all my body
Oh, my agony, know that I will never marry
Baby, I'm just soggy from the chemo
But counting down the days to go, it just ain't living
And I just hope you know
 
That if you say (If you say...) goodbye today (Goodbye today...)
I'd ask you to be true (I'd ask you to be true...)
'Cause the hardest part of this is leaving you
'Cause the hardest part of this is leaving you
      """
    ],
    artist: 'My Chemical Romance',
    duration: Duration(minutes: 2, seconds: 22),
    popularity: Popularity.popular,
    isHeartBroken: true,
    isVibing: false,
  ),
  Music(
    id: 'm3',
    categories: ['c3'],
    title: 'Perfect',
    imageUrl:
        'https://images.genius.com/fc44439c55552eb23d4a9ecb28a21f06.1000x1000x1.jpg',
    lyrics: [
      """
 
I found a love for me
Darling, just dive right in and follow my lead
Well, I found a girl, beautiful and sweet
Oh, I never knew you were the someone waiting for me
 
'Cause we were just kids when we fell in love
Not knowing what it was
I will not give you up this time
But darling, just kiss me slow
Your heart is all I own
And in your eyes you're holding mine
 
Baby, I'm dancing in the dark
With you between my arms
Barefoot on the grass
Listening to our favourite song
When you said you looked a mess
I whispered underneath my breath
But you heard it,
Darling, you look perfect tonight
 
Well, I found a woman, stronger than anyone I know
She shares my dreams, I hope that someday I'll share her home
I found a love to carry more than just my secrets
To carry love, to carry children of our own
 
We are still kids but we're so in love
Fighting against all odds
I know we'll be alright this time
Darling, just hold my hand
Be my girl, I'll be your man
I see my future in your eyes
 
Baby, I'm dancing in the dark
With you between my arms
Barefoot on the grass
Listening to our favourite song
When I saw you in that dress
Looking so beautiful
I don't deserve this
Darling, you look perfect tonight
 
No, no, no
 
Baby, I'm dancing in the dark
With you between my arms
Barefoot on the grass
Listening to our favourite song
I have faith in what I see
Now I know I have met an angel in person
And she looks perfect
I don't deserve this
You look perfect tonight
      """
    ],
    artist: 'Ed Sheeran',
    duration: Duration(minutes: 4, seconds: 23),
    popularity: Popularity.mostPopular,
    isHeartBroken: false,
    isVibing: true,
  ),
  Music(
    id: 'm4',
    categories: ['c4', 'c6'],
    title: 'See You Again',
    imageUrl:
        'https://4.bp.blogspot.com/-vRKwbOoLxcE/WYQtogH9DeI/AAAAAAAABTQ/r6drwiawvG4td--JIXXZbw5LiMqlE82YQCLcBGAs/s1600/see_you_again__fanmade_album_cover__by_feeldaviibe-d9a9rb5.jpg',
    lyrics: [
      """
It's been a long day without you, my friend
And I'll tell you all about it when I see you again
We've come a long way from where we began
Oh, I'll tell you all about it when I see you again
When I see you again
 
Damn, who knew?
All the planes we flew, good things we been through
That I'd be standing right here talking to you
'Bout another path, I know we loved to hit the road and laugh
But something told me that it wouldn't last
Had to switch up, look at things different, see the bigger picture
Those were the days, hard work forever pays
Now I see you in a better place (See you in a better place)
Uh
 
How could we not talk about family when family's all that we got?
Everything I went through, you were standing there by my side
And now you gon' be with me for the last ride
 
It's been a long day without you, my friend
And I'll tell you all about it when I see you again (I'll see you again)
We've come a long way (Yeah, we came a long way) from where we began
(You know we started)
Oh, I'll tell you all about it when I see you again (I'll tell you)
When I see you again
 
Aah oh, aah oh
Wooooh-oh-oh-oh-oh-oh
Yeah
 
First, you both go out your way and the vibe is feeling strong
And what's small turned to a friendship, a friendship turned to a bond
And that bond will never be broken, the love will never get lost
(The love will never get lost)
And when brotherhood come first, then the line will never be crossed
Established it on our own when that line had to be drawn
And that line is what we reached, so remember me when I'm gone
(Remember me when I'm gone)
 
How could we not talk about family when family's all that we got?
Everything I went through you were standing there by my side
And now you gon' be with me for the last ride
 
So let the light guide your way, yeah
Hold every memory as you go
And every road you take
Will always lead you home, home
 
It's been a long day without you, my friend
And I'll tell you all about it when I see you again
We've come a long way from where we began
Oh, I'll tell you all about it when I see you again
When I see you again
 
Aah oh, aah oh (Uh)
Yeah (Yeah)
Wooooh-oh-oh-oh-oh-oh (Yo)
When I see you again (Yo, uh)
See you again (Yo, yo)
Oh-oh (Uh-huh)
(Yup) When I see you again
      """
    ],
    artist: 'Wiz Khalifa ft. Charlie Puth',
    duration: Duration(minutes: 3, seconds: 49),
    popularity: Popularity.mostPopular,
    isHeartBroken: true,
    isVibing: false,
  ),
  Music(
    id: 'm5',
    categories: ['c5'],
    title: 'Fly Me to the Moon',
    imageUrl:
        'https://static.qobuz.com/images/covers/9b/u4/qe9o9pdvuu49b_600.jpg',
    lyrics: [
      """
 
Fly me to the moon
Let me play among the stars
Let me see what spring is like
On a-Jupiter and Mars
 
In other words: hold my hand
In other words: baby, kiss me
 
Fill my heart with song
And let me sing for ever more
You are all I long for
All I worship and adore
 
In other words: please, be true
In other words: I love you
 
Fill my heart with song
Let me sing for ever more
You are all I long for
All I worship and adore
 
In other words: please, be true
In other words, in other words: I love you
      """
    ],
    artist: 'Frank Sinatra',
    duration: Duration(minutes: 2, seconds: 30),
    popularity: Popularity.popular,
    isHeartBroken: false,
    isVibing: false,
  ),
  Music(
    id: 'm6',
    categories: ['c6'],
    title: 'Cant Stop the Feeling!',
    imageUrl:
        'https://1.bp.blogspot.com/-QCfGvL_1oI0/XyJvKJW8lnI/AAAAAAAABak/NEV08ZliQX4G1MgAcrRXlmcGIwMNM8IMwCLcBGAsYHQ/s1600/cant_stop_the_feeling.jpg',
    lyrics: [
      """
 
I got this feeling inside my bones
It goes electric, wavy when I turn it on
All through my city, all through my home
We're flying up, no ceiling, when we're in our zone
 
I got that sunshine in my pocket
Got that good soul in my feet
I feel that hot blood in my body when it drops
I can't take my eyes up off it
Moving so phenomenally
Room on lock the way we rock it
So don't stop
 
And under the lights when everything goes
Nowhere to hide when I'm getting you close
When we move, well, you already know
So just imagine, just imagine, just imagine
 
Nothing I can see but you
When you dance, dance, dance
Feeling good, good, creeping up on you
So just dance, dance, dance
Come on
All those things I shouldn't do
But you dance, dance, dance
And ain't nobody leaving soon
So keep dancing
 
I can't stop the feeling
So just dance, dance, dance
I can't stop the feeling
So just dance, dance, dance
Come on
 
Ooh, it's something magical
It's in the air, it's in my blood, it's rushing on
Don't need no reason, don't need control
I fly so high, no ceiling, when I'm in my zone
 
'Cause I got that sunshine in my pocket
Got that good soul in my feet
I feel that hot blood in my body when it drops
I can't take my eyes up off it
Moving so phenomenally
Room on lock the way we rock it
So don't stop
 
And under the lights when everything goes
Nowhere to hide when I'm getting you close
When we move, well, you already know
So just imagine, just imagine, just imagine
 
Nothing I can see but you
When you dance, dance, dance
Feeling good, good, creeping up on you
So just dance, dance, dance
Come on
All those things I shouldn't do
But you dance, dance, dance
And ain't nobody leaving soon
So keep dancing
 
I can't stop the feeling
So just dance, dance, dance
I can't stop the feeling
So just dance, dance, dance
I can't stop the feeling
So just dance, dance, dance
I can't stop the feeling
So keep dancing, come on
 
I can't stop the—
I can't stop the—
I can't stop the—
I can't stop the—
I can't stop the feeling
 
Nothing I can see but you
When you dance, dance, dance
(I can't stop the feeling)
Feeling good, good, creeping up on you
So just dance, dance, dance
Come on
(I can't stop the feeling)
All those things I shouldn't do
But you dance, dance, dance
(I can't stop the feeling)
And ain't nobody leaving soon
So keep dancing
 
Everybody sing
(I can't stop the feeling)
Got this feeling in my body
(I can't stop the feeling)
Got this feeling in my body
(I can't stop the feeling)
Wanna see you move your body
(I can't stop the feeling)
Got this feeling in my body
 
Break it down
Got this feeling in my body
Can't stop the feeling
Got this feeling in my body
Come on
      """
    ],
    artist: 'Justin Timberlake',
    duration: Duration(minutes: 4, seconds: 45),
    popularity: Popularity.popular,
    isHeartBroken: false,
    isVibing: true,
  ),
  Music(
    id: 'm7',
    categories: ['c7'],
    title: 'The Less I Know the Better',
    imageUrl: 'https://i.ytimg.com/vi/2SUwOgmvzK4/maxresdefault.jpg',
    lyrics: [
      """
 
Someone said they left together
I ran out the door to get her
She was holding hands with Trevor
Not the greatest feeling ever
Said, "Pull yourself together
You should try your luck with Heather"
Then I heard they slept together
Oh, the less I know the better
The less I know the better
 
Oh my love, can't you see yourself by my side
No surprise when you're on his shoulder like every night
Oh my love, can't you see that you're on my mind
Don't suppose you could convince your lover to change his mind
So goodbye
 
She said, "It's not now or never
Wait 10 years, we'll be together"
I said, "Better late than never
Just don't make me wait forever"
Don't make me wait forever
Don't make me wait forever
 
Oh my love, can't you see yourself by my side?
I don't suppose you could convince your lover to change his mind
 
I was doing fine without ya
'Til I saw your face, now I can't erase
Giving in to all his bullshit
Is this what you want, is this who you are?
I was doing fine without ya
'Til I saw your eyes turn away from mine
Oh, sweet darling, where he wants you
Said, "Come on Superman, say your stupid line"
Said, "Come on Superman, say your stupid line"
Said, "Come on Superman, say your stupid line"
      """
    ],
    artist: 'Tame Impala',
    duration: Duration(minutes: 3, seconds: 3645),
    popularity: Popularity.popular,
    isHeartBroken: false,
    isVibing: true,
  ),
];