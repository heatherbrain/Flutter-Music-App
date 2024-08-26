import 'package:flutter/material.dart';

import 'package:meals_app/models/category.dart';
import 'package:meals_app/models/music.dart';

const availableCategories = [
  Category(
    id: 'c1',
    title: 'R&B',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Rock',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Pop',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Rap',
    color: Colors.yellow,
  ),
  Category(
    id: 'c5',
    title: 'Jazz',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Hip Hop',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Indie',
    color: Colors.pink,
  ),
];

const dummyMusic = [
  Music(
      id: 'm1',
      categories: ['c1'],
      title: 'Break from Toronto',
      imageUrl:
          'http://images.genius.com/7a26224cb28bb34b65aa954e229506f8.1000x995x1.jpg',
      lyrics: """That smile on your face
      Makes it easy to trust you
      Those in
      Those in
      Those in
      Those in

      This what 'Sauga feels like in the night time
      Watch what she doin' when the light shine
      Drunk niggas tryna talk in the strip club
      Shawty silhouette looks like a dolla sign
      Caught up (caught up)
      Thats just how a nigga brought up (brought up)
      Blow ones for you loonie ass niggas
      Straight bills for you toonie ass niggas
      My niggas bigger then the bouncer
      Roll up in the bitch still smell like an ounce
      Right quick, Right Quick
      Tight jeans on so she feels my shit
      Tell me something good baby
      Tell me something, Tell me something good shawty
      Come bring it to the hood baby
      Bring it, bring it back to hood

      This what Sauga feels like in the night time
      Bust it open, shawty when the light shine
      Still fuckin with the same ass niggas
      I know you want a break
      I know you want a break from Toronto

      West side
      Ohh girl
      """,
      artist: 'PARTYNEXTDOOR',
      duration: Duration(minutes: 4, seconds: 32),
      popularity: Popularity.lessPopular),
  Music(
    id: 'm2',
    categories: ['c3'],
    title: 'Mr. Loverman',
    imageUrl:
        'https://images.genius.com/75bd532c69ceb88eca65f9e980396525.839x839x1.jpg',
    lyrics: """
      I'm headed straight for the floor
      The alcohol's served its tour
      And it's headed straight for my skin
      Leaving me daft and dim

      I've got this shake in my legs
      Shaking the thoughts from my head
      But who put these waves in the door
      I'm cracking out
      I pour

      I'm Mr. Loverman
      And I miss my lover, man
      I'm Mr. Loverman
      Oh, and I miss my lover

      The ways in which you talk to me
      Have me wishing I were gone
      The ways that you say my name
      Have me running on and on
      Oh, I'm cramping up, I'm cramping up
      But you're cracking up, you're cracking up

      I'm Mr. Loverman
      And I miss my lover, man
      I'm Mr. Loverman
      Oh, and I miss my lover

      I'm shattered now
      I'm spilling out
      Upon this linoleum ground
      I'm reeling in my brain again
      Before it can get back to you
      Oh, what am I 'sposed to do
      Without you?

      I'm Mr. Loverman
      And I miss my lover man
      I'm Mr. Loverman
      Oh, and I miss my lover
      I'm Mr. Loverman
      And I miss my lover, man
      I'm Mr. Loverman
      Oh, and I miss my lover
      """,
    artist: 'Ricky Montgomery', // Sesuaikan dengan nama album yang sebenarnya
    duration: Duration(
        minutes: 3, seconds: 36), // Sesuaikan dengan durasi yang sebenarnya
    popularity: Popularity.mostPopular, // Contoh nilai popularitas
  ),
  Music(
      id: 'm3',
      categories: ['c2'],
      title: 'Do I Wanna Know?',
      imageUrl:
          'https://tse1.mm.bing.net/th?id=OIP.oNvyfZhdNWWIAwWfmtqE8wHaHa&pid=Api&P=0&h=180',
      lyrics: """
      Have you got colour in your cheeks?
      Do you ever get that fear that you can't shift
      The type that sticks around like summat in your teeth?
      Are there some aces up your sleeve?
      Have you no idea that you're in deep?
      I dreamt about you nearly every night this week
      How many secrets can you keep?
      'Cause there's this tune I found that makes me think of you somehow and I play it on repeat
      Until I fall asleep
      Spilling drinks on my settee

      (Do I wanna know?)
      If this feeling flows both ways?
      (Sad to see you go)
      Was sort of hoping that you'd stay
      (Baby, we both know)
      That the nights were mainly made for saying things that you can't say tomorrow day

      Crawling back to you

      Ever thought of calling when you've had a few?
      'Cause I always do
      Maybe I'm too busy being yours to fall for somebody new
      Now I've thought it through

      Crawling back to you

      So have you got the guts?
      Been wondering if your heart's still open and if so I wanna know what time it shuts
      Simmer down and pucker up
      I'm sorry to interrupt. It's just I'm constantly on the cusp of trying to kiss you
      I don't know if you feel the same as I do
      But we could be together if you wanted to

      (Do I wanna know?)
      If this feeling flows both ways?
      (Sad to see you go)
      Was sort of hoping that you'd stay
      (Baby, we both know)
      That the nights were mainly made for saying things that you can't say tomorrow day

      Crawling back to you (crawling back to you)

      Ever thought of calling when you've had a few? (you've had a few)
      'Cause I always do ('cause I always do)
      Maybe I'm too (maybe I'm too busy) busy being yours to fall for somebody new
      Now I've thought it through

      Crawling back to you

      (Do I wanna know?)
      If this feeling flows both ways?
      (Sad to see you go)
      Was sort of hoping that you'd stay
      (Baby, we both know)
      That the nights were mainly made for saying things that you can't say tomorrow day

      (Do I wanna know?)
      Too busy being yours to fall
      (Sad to see you go)
      Ever thought of calling darling?
      (Do I wanna know?)
      Do you want me crawling back to you?
      """,
      artist: 'Arctic Monkeys',
      duration: Duration(minutes: 4, seconds: 33),
      popularity: Popularity.popular),
  Music(
      id: 'm4',
      categories: ['c2', 'c3'],
      title: 'Friends',
      imageUrl: 'https://paroles2chansons.lemonde.fr/lib/images/album/59de885945d7d.jpg',
      lyrics: """Girl, tell me what you're doing on the other side
      And so, just tell me what you're doing with that other guy
      'Cause I ain't got patience to slow down the pace
      All your girlfriends are wasted
      They need it, they chase it

      Face it
      You want it, you crave it
      Believe when I say that you'll know once you taste it

      All of your friends have been here for too long
      They must be waiting for you to move on
      Girl, I'm not with it I'm way too far gone
      I'm not ready, eyes heavy now
      Heart on your sleeve like you've never been loved
      Running in circles, now look what you've done
      Give you my word as you take it and run
      Wish you'd let me stay, I'm ready now

      (Just give me some time and space to realize
      That you, were busy lying, sleeping 'round with other guys)
      And what the hell were we?
      Tell me we weren't just friends
      This doesn't make much sense
      No
      But I'm not hurt, I'm tense
      'Cause I'll be fine without you babe

      All of your friends have been here for too long
      They must be waiting for you to move on
      Girl, I'm not with it I'm way too far gone
      I'm not ready, eyes heavy now
      Heart on your sleeve like you've never been loved
      Running in circles, now look what you've done
      Give you my word as you take it and run
      Wish you'd let me stay, I'm ready now

      Wish you'd let me stay, I'm ready now
      I'm not ready, eyes heavy now

      All of your friends have been here for too long
      They must be waiting for you to move on
      Girl, I'm not with it I'm way too far gone
      I'm not ready, eyes heavy now
      Heart on your sleeve like you've never been loved
      Running in circles, now look what you've done
      Give you my word as you take it and run
      Wish you'd let me stay, I'm ready now

      Wish you'd let me stay, I'm ready now
      I'm not ready, eyes heavy now
      Wish you'd let me stay, I'm ready now
      I'm not ready, eyes heavy now
      Wish you'd let me stay, I'm ready now""",
      artist: 'Chase Atlantic',
      duration: Duration(minutes: 2, seconds: 55),
      popularity: Popularity.popular),
  Music(
      id: 'm5',
      categories: ['c5'],
      title: 'Wrong About Forever',
      imageUrl: 'https://images.genius.com/14491d4d9e931e3fcbad8a990113b86d.1000x1000x1.jpg',
      lyrics: """I should have known from the start
      If there would be a day where things would change, babe
      It's just I gave you my heart
      Thinking you would stay but you walk away

      It didn't have to be confusing
      You said you needed a lil' bit more space
      Instead you went with him
      The least you coulda do is say it to my face, baby

      I'm not saying that you lie, but
      Don't be wasting my time
      Confusing me like we'd get back together
      And think you, were my ride or die, but
      Leave me for a new guy
      I guess that I was wrong about forever

      Callin' but you hit decline
      Only time will tell if you're someone else (heh)
      It's just I gave you my time
      But you closed the book and put it on the shelf

      It didn't have to be confusing
      You said you needed a lil' bit more space
      Instead you went with him
      The least you coulda do is say it to my face, baby

      I'm not saying that you lie, but
      Don't be wasting my time
      Confusing me like we'd get back together
      And think you, were my ride or die, but
      Leave me for a new guy
      I guess that I was wrong about forever

      I'm not saying that you lie (I ain't saying that you lie), but
      Don't be wasting my time (Don't be wasting my time, baby)
      Confusing me like we'd get back together (Confusing me like we'd get back together)
      Think you, were my ride or die (said you were my ride or die), but
      Leave me for a new guy (leave me for a new guy)
      I guess that I was wrong about forever""",
      artist: 'Jeff Bernat',
      duration: Duration(minutes: 3, seconds: 35),
      popularity: Popularity.lessPopular),
  Music(
      id: 'm6',
      categories: ['c4'],
      title: 'The Way Life Goes',
      imageUrl: 'https://cdnb.artstation.com/p/assets/images/images/012/936/283/large/adonis-williams-asset.jpg?1537272888',
      lyrics: """That's true, that's right (Uzi)
      She's sippin' Moet, and yeah I swear it gets her wetter
      My Louboutins new, so my bottoms, they is redder
      No I'm not a rat, but I'm all about my cheddar
      Just talked to your homie, she said we should be together
      Gave me brain, was so insane that I made her my header
      If she ever call my phone you know I gotta dead her
      But I like that girl too much, I wish I never met her

      Now you beggin' this a doozy
      But beggars cannot by choosey
      Been the queen for eight summers
      Just tell them to call me Suzy
      This that Nicki, this that Uzi
      This Hennessy got me woozy
      Broke the internet in 5411's and some Gucci
      The blue ribbons eatin' sushi
      It's that real good coochie
      This that wet as Chattahoochee
      F*ck all y'all like a hoochie
      Givin' them bars since the teens
      I ain't goin' back to juvie
      I am Nicki Yamaguchi
      'Cause I skate with the ice
      I don't say what's the price
      Lookin' like it's a heist
      I been winnin' all my life
      On a roll, it's a dice
      Since that Itty Bitty Piggy
      Rep my city like committees
      If you fucked it up with Nicki
      You feel pretty fuckin' shitty (uh)
      Anyway, I'm stoppin' bags like the TSA
      Listen up you little bitches, it's a PSA
      I'm still shadin' these niggas, yeah the DITA way
      You gotta pay me flat bread, yeah the pita way

      I know you're sad and tired
      You've got nothin' left to give
      You'll find another life to live
      I know that you'll get over it

      Wish I never ever ever told you things
      I was only only tryna show you things
      Iced out heart on your neck tried to froze your ring
      I had to get a me a new bitch to hold the pain
      We was in Hawaii lookin' at the ring
      Yeah, she smilin' happy, but I'm laughin' 'cause her man's a lame
      (Broke boi, broke boi, broke boi, broke boi)
      Damn, that just goes to show me money don't attract a thing (real shit)
      Stuck to the plan even though you used to go with my mans
      (Oh get over it)

      I know it hurts sometimes, but you'll get over it
      You'll find another life to live
      I swear that you'll get over it
      And I know you're sad and tired
      You've got nothin' left to give
      You'll find another life to live
      I know that you'll get over it

      See I tied up my RAF you strapped up your Rick
      Diamonds on your neck, ice all on my wrist
      Complement my style
      She don't want me, I'm runnin' wild
      You know I respect her on that level
      She don't want me then I'ma let her
      Go over there with that broke fella
      Walk off my Saint Laurent, that leather
      My new chick I swear that she better
      Want me back, never (ooh)

      That's true, that's right
      She's sippin' Moet, and yeah I swear it gets her wetter
      My Louboutins new, so my bottoms, they is redder
      No I'm not a rat, but I'm all about my cheddar
      Just talked to your homie, she said we should be together
      Gave me brain, was so insane that I made her my header
      If she ever call my phone you know I gotta dead her
      But I like that girl too much, I wish I never met her

      I know it hurts sometimes, but you'll get over it (woah)
      You'll find another life to live
      I swear that you'll get over it (you'll get over it)
      I know it hurts sometimes, but you'll get over it (no, no)
      You'll find another life to live (you will)
      I know that you'll get over it (oh)

      You'll get over it
      I know that you'll get over it
      I know it's over
      Check out my cold shoulder (nothin' left to give)
      I know its over
      Cry on that hoe shoulder (you'll get over it)

      We used to be
      Kissin' in the tree
      'Member it was just you and me
      Kissin' in the tree
      'Member it was you was just you and me
      K-i-s-s-i-n-g
      K-i-s-s-i-n-g-e-e-e-e-e-e, uh""",
      artist: 'Lil Uzi Vert feat. Nicki Minaj',
      duration: Duration(minutes: 3, seconds: 15),
      popularity: Popularity.mostPopular),
  Music(
      id: 'm7',
      categories: ['c1', 'c7'],
      title: 'Girls Need Love',
      imageUrl: 'https://www.musicconnection.com/wp-content/uploads/2021/12/summer-walker-album-artwork.jpeg',
      lyrics: """Honestly
      Honestly, I'm tryna stay focused
      You must think I've got to be joking when I say
      I don't think I can wait
      I just need it now
      Better swing my way

      I just need some dick
      I just need some love
      Tired of fucking with these lame niggas baby
      I just need a thug

      Won't you be my plug aye
      You could be the one aye
      Start with a handshake baby
      Imma need more than a hug

      Girls can't never say they want it
      Girls can't never say how
      Girls can't never say they need it
      Girls can't never say now

      Girls can't never say they want it
      Girls can't never say how
      Girls can't never say they need it
      Girls can't never say now oh now

      Give it to me like you need it, baby
      Want you to hear me screaming heavy breathing
      I don't need a reason baby
      I wanna take and find
      I can give it to you right babe oh

      I wanna be your healing
      I can be real good
      Please don't get in your feelings
      Aye I need some love
      Aye I need some love
      Aye I need some love
      Aye and you can't judge

      Girls need love too (yeah)
      Girls girls need love too
      Girls need love (let me tell you something)
      Girls need love (girls need loving too)
      Girls need love too
      So what's a girl to do when she needs loving too
      """,
      artist: 'Summer Walker',
      duration: Duration(minutes: 3, seconds: 20),
      popularity: Popularity.popular),
  Music(
      id: 'm8',
      categories: ['c1', 'c6'],
      title: 'Good Days',
      imageUrl: 'https://static.stereogum.com/uploads/2020/12/sza-good-days-1608873031.jpg',
      lyrics: """"Good day in my mind, safe to take a step out
      Get some air now, let yo edge out
      Too soon, I spoke
      You be heavy in my mind, can you get the heck out?
      I need rest now, got me bummed out
      You so, you so, you
      Baby, baby, babe
      I've been on my empty mind shit

      I try to keep from losin' the rest of me
      I worry that I wasted the best of me on you, babe
      You don't care
      Said, "Not tryna be a nuisance, this is urgent"
      Tryna make sense of loose change
      Got me a war in my mind
      Gotta let go of weight, can't keep what's holdin' me
      Choose to watch while the world break up in front of me

      All the while, I'll await my armored fate with a smile
      Still wanna try, still believe in
      Good days, good days, always
      Always inside (Always in my mind, always in my mind, mind)
      Good day living in my mind

      Tell me I'm not my fears, my limitations
      I disappear if you let me
      Feelin' like, yeah (On your own)
      Feelin' like Jericho
      Feelin' like Job when he lost his shit
      Gotta hold my own, my cross to bear alone, I
      Ooh, played and dipped, way to kill the mood
      Know you like that shit
      Can't groove it, ba-baby
      Heavy on my empty mind shit

      I gotta keep from losin' the rest of me (Rest of me)
      Still worry that I wasted the best of me on you, babe
      You don't care
      Said, "Not tryna be a nuisance, this is urgent" (It's urgent)
      Tryna make sense of loose change
      Got me a war in my mind (My mind)
      Gotta let go of weight, can't keep what's holdin' me
      Choose to watch while the world break up in front of me

      All the while, I'll await my armored fate with a smile
      Still wanna try, still believe in
      Good days, good days, always (Good days on my mind, good days on my mind)
      Sunny inside (Always in my mind, always in my mind, mind)
      Good day living in my mind

      Gotta get right
      Tryna free my mind before the end of the world
      I don't miss no ex, I don't miss no text
      I choose not to respond
      I don't regret, just pretend shit never happened
      Half of us layin' waste to our youth, it's in the present
      (Na-na, na-na, na-na, na)
      Half of us chasin' fountains of youth and it's in the present now

      Always in my mind, always in my mind, mind
      You've been making me feel like I'm
      Always in my mind, always in my mind, mind""",
      artist: 'SZA',
      duration: Duration(minutes: 5, seconds: 17),
      popularity: Popularity.mostPopular),
  Music(
      id: 'm9',
      categories: ['c6'],
      title: "Don't Tell 'Em",
      imageUrl: 'https://ratedrnb.com/cdn/2023/05/jeremih-dont-tell-em-single-cover.png',
      lyrics: """
      Mustard on the beat, ho

      Rhythm is a dancer, I need a companion
      Girl I guess that must be you
      Body like the summer, fuckin' like no other
      Don't you tell 'em what we do
      Don't tell 'em, don't tell 'em, you ain't even
      Don't tell 'em, don't tell 'em
      You ain't even, you ain't even gotta tell 'em
      Don't tell 'em, don't tell 'em
      You ain't even, don't tell 'em, don't tell 'em
      You ain't even, you ain't even even gotta tell 'em
      Don't tell 'em, don't tell 'em

      Know you say you down with it
      Won't tell em how you hit the ground with it
      Girl, you know I'm from Chicago
      I act a fool, Bobby Brown with it (in it)
      Nobody take me out, though
      You got gifts, bring 'em down the South Pole
      Marathon doll gon' put in miles
      Don't you worry 'bout him, I gon' work it out

      Only is you got me feeling like this
      Oh why, why, why, why, why
      Loving while grabbing the rhythm of your hips
      That's right, right, right, right, right

      Rhythm is a dancer, I need a companion
      Girl, I guess that must be you
      Body like the summer, fuckin' like no other
      Don't you tell 'em what we do
      Don't tell 'em, don't tell 'em, you ain't even
      Don't tell 'em, don't tell 'em
      You ain't even, you ain't even gotta tell 'em
      Don't tell 'em, don't tell 'em
      You ain't even, don't tell 'em, don't tell 'em
      You ain't even, you ain't even even gotta tell 'em
      Don't tell 'em, don't tell 'em

      Girl, he fufu with it
      But you know I know what to do with it
      I'll give you that, girl, I'm talking laps
      As if you got a pool in it
      And she say she ain't with your best friends
      Then let me be your diamond
      You know you feeling, how your boy press play
      Just keep that ass rewindin'

      Only is you got me feeling like this
      Oh why, why, why, why
      Loving while grabbing the rhythm of your hips
      That's right, right, right, right, right

      Rhythm is a dancer, I need a companion
      Girl, I guess that must be you
      Body like the summer, fuckin' like no other
      Don't you tell 'em what we do
      Don't tell 'em, don't tell 'em, you ain't even
      Don't tell 'em, don't tell 'em
      You ain't even, you ain't even gotta tell 'em
      Don't tell 'em, don't tell 'em
      You ain't even, don't tell 'em, don't tell 'em
      You ain't even, you ain't even even gotta tell 'em
      Don't tell 'em, don't tell 'em

      3-1-0 9-3-4 8-6-1-6
      I got a missed call from your bitch
      She been plottin' on me for a cool minute
      She wanna' suck my dick, and I'm cool with it
      I like girls in the shower, when it's winter fresh
      It's some Twitter pussy, I met on the Internet
      On my late-night thirsty, 'cause it was late-night and I was thirsty
      Girl, I been to that county girl, I ain't tellin'
      Handcuff me to the bed, girl it ain't no bailin'
      I keep a stack of hundreds, I can keep a secret
      If anything you was explorin', you wasn't cheating
      She got my number stored under fake names
      Her nigga think she faithful, but she runnin' game
      YOLO, so take me out these Polos
      And we can fuck from Uno to Ocho

      Only is you got me feeling like this
      Oh why, why, why, why, why
      Loving while grabbing the rhythm of your hips
      That's right, right, right, right, right

      Rhythm is a dancer, I need a companion
      Girl, I guess that must be you
      Body like the summer, fuckin' like no other
      (I keep it on the D.L, and creep like TL)
      (Just tell me them details, just hand me)
      Don't you tell 'em what we do
      Don't tell 'em, don't tell 'em, you ain't even
      Don't tell 'em, don't tell 'em
      You ain't even, you ain't even gotta tell 'em
      Don't tell 'em, don't tell 'em
      You ain't even, don't tell 'em, don't tell 'em
      You ain't even, you ain't even even gotta tell 'em
      Don't tell 'em, don't tell 'em (no)

      Right, right, right, right, right, right, right
      Don't tell 'em, don't tell 'em, no
      Why, why, why, why would you do (oh)
      Just keep the rhythm like that, that (that, that)
      Put in on like that, that (that, that)
      I know you like that (that, that, that, that)
      You know I want that (that, that, that, that)
      Ohh oh-ohh oh-ohh oh-ohh""",
      artist: 'Jeremih feat.YG',
      duration: Duration(minutes: 3, seconds: 53),
      popularity: Popularity.lessPopular)
];
