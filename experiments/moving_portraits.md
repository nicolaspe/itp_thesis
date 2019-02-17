# Moving portraits and first data gathering

## First interactions
Continuing my experiments and starting my research on motion, I expanded on my portrait sketch and added a motion detection component. The circles appear only where motion is detected (tracking brightness of pixels), and fade over time by shrinking and becoming more transparent. As a result, moving across the sketch reveals what's behind you, creating playful interactions; and moving just your extremities creates a negative space around your torso and legs.

I installed it in one of the TVs on the entrance hallway (I could've installed a GoPro too, but I was leaving at that moment and that data wasn't that interesting) and used it for my later user test and data gathering, getting positive results and feedback.
- I had the option of showing the actual colors of the video feed, but it went mostly unused, because...
- The aesthetic (color and circle pixelation) got many people excited and prompted many playful movements (like doing "snow angels" with the trails of movement)
- The shrinking and fading of the circles was also an important effect for the movement dynamics
- I thought about adding hue and saturation to the tracker, but wanted to see the result without it. Because of this, some people's skin and the white background had a similar value, resulting in a diminished effect on the sketch
- The sketch was installed on a TV in the middle of the hallway (as it has a light right on top of it, giving it better results), but not too many people noticed it (being parallel to their movement)

<figure>
  [video src="https://youtu.be/hBakDP3Kwtg"]
  <figcaption>Max testing the sketch @ ITP</figcaption>
</figure>

<figure>
  [video src="https://youtu.be/kt4_0KFynWs"]
  <figcaption>Me trying out the sketch</figcaption>
</figure>



## Data gathering
On Friday 15th I did my first field research and gathered a lot of data: both in video and skeletal joint positions. Thanks to the TouchDesigner patch from [Brandon](http://physical-digital.com/) I managed to record the skeletal data from the Kinect. I previously tried to do it on the 13th, but the room was double booked and I wasn't able to use the Kinect camera with the processing sketch (I was using the wrong library, duh -.-).

I prepared the Meeting Room with the big TV facing one of the whiteboard walls and the Kinect + computer in front of it on a table. I got people to record and gave them the instructions detailed below. This would give me -hopefully- enough material to see differences in their movements and the accompanying data to train the first models.

- Take an eraser from the table
- Erase the wall
- Take a marker
- Write down
  - Your name
  - The year
  - Your thesis name/favorite class
- Leave the marker on the table
<br>-In random order:-
- Inspect the wall
- Think
- Be happy
- Be sad
- Jump
- Wave
- Do a small dance
<br>-I turn on Processing sketch:-
- Interact with the sketch!
- Do an Instagram story showing the sketch

<figure>
  <figcaption>Testing with Keerthana in the Meeting Room. Photo by Daniel Castaño</figcaption>
</figure>

### Results!
This experiment got me very excited. The reactions to this first movement-based sketch were overwhelmingly positive, mainly due to the aesthetic choices and trailing effect. I also got a lot of data: I aimed for 20 people and ended up recording 25!

Some notes I took of the interactions with the sketch:
- People can really do whatever they want in front of it. I need to be prepared for any movement (need to test a lot of weird movements to make sure it doesn't break!)
- Many did leg movements to generate more trails!
- Need to be able to differentiate back and front (Mimi also told me this)
- There was a lot of swinging due to the trails
- Also a lot of back and forth movement (specially trying to come near the camera)
  - What happens if they get too close? they can block other people!
  - I need to figure out a good positioning of the Kinect
- People stay still when posting / only have one free arm! (how can I make it so that this experience is not "less" ?)
- This test was done on a screen, so people could see themselves reflected on it. It gives a very cool feedback, but I don't know if I want it (specially because I was thinking on projecting on top of a white surface for the final version,... but that could change)
- Jackets (and multiple layers) give a cool effect, because they move more and tend to keep swinging when the body comes to a stop
  - But conceptually, I don't want to take clothes into account...
  - On the same note, colorful clothes looked amazing, but it's still clothing and not movement... (maybe this for a later experiment/project?)
- During the "happy" and "sad" instructions, people barely changed their posture
- Kneeling is a great movement! I could take "standing" as the base and everything else **should** do something, even if they stand still while kneeling, lay on the ground, etc...
- Hand-focused movements are great and very expressive!!! How to create something that amplifies it almost exclusively? How to give them more importance? (it's great cause it'd be an example of taking a "small" but very expressive movement to a very large level)
- Happy movements are amazing :D but I need to be able to distinguish them with the data...
  - and distinguish them from angry movements (both are sudden and explosive)
- A lot of swirls and twirls and turns (and they looked fantastic)
- I might need to separate movements in two categories: movements for analysis and movements for expression (I don't think I can analyze **all** the movements the audience might do,... though this will become clearer in the testing phase)

<figure>
  [video src="https://youtu.be/WEx3um-6SW0"]
  <figcaption>Keerthana interacting with the sketch during the experiments. Video by Daniel Castaño</figcaption>
</figure>

Thanks for coming to all these people: Asha, Aidan, Dan, David, Roland, Hafi, Carrie, Daniel, Keerthana, Jesse, Alden, Nico Sanín, Jason, Kim, M.H., Max, Sam, Ellen, Morgan, Akmyrat, Matt, Ilana, Alice, Lauren & Zohreh.



## Next steps
- I am working on **porting the Processing sketch to openFrameworks** and **getting it to work with the Kinect**, so I can both track and record data from one sketch. (2 days)
- Next, I will see the video data I collected to **identify the movements** I need to track (2 days)
- According to that, I will **create scripts that will separate that skeleton data and normalize it**, in order to prepare the data for the analysis (1 day)
- Next, is to classify the data and **train the first ML model** to have the first prototype (2 days)
- At the same time, I will **create shaders for textures and colors** to use on that prototype (2 days)
- **Put together the first prototype** (1 day)

This process will take (hopefully) ~10 days, which will let me have a first working prototype to begin my testing phase. I will test the accuracy of the model, the quality of the results, and expressiveness and impact of the visuals. Then, I will update both the models and visuals according to the feedback and observations. This way, I will enter a -positive- feedback loop, iterating and reflecting on the results.
