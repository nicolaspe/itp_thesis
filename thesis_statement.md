## Thesis Statement
*Part I: (50) What are you investigating?
Part II: (100) Why? - personal statement
Part III: (20) What -at this point- will it be?*

What if we're able to distill and identify each person's characteristic movements and amplify them to enhance their expressive potential?

Motion is a form of expression. It is highly personal, as it conveys individuality and emotion. We can be identified by the way we walk, or infer someone's mood by their pose. I want to maximize this expressiveness potential and explore ways of enhancing people's movements. I want to foreground motion by separating it from the body, silhouette, features, etc., making people rethink how they build their identity and their relation to others.

I will create a video wall that tracks and analyzes the audience's movements, assigns them visual traits (such as texture and color) and projects a magnified and more expressive version of their motion.



## Research
*I: Major influences, similar projects
II: Research plan/approach
III: Experts
IV: Bibliography, links, articles, etc
V: Summarize research to date
VI: What you still need to find out?*

Research plan :
My thesis stems from my previous explorations of movement as a form of expression and identity done in Big Screens and Bodies in Motion.
In this project I started by looking as how motion is described and annotated in choreography fields and what has been done similar to my idea. From there, I will observe people doing certain movements and gather skeletal data to find patterns that convey identity. Later, I will start training machine learning algorithms to detect different characteristics and creating different visualizations. This developments will be user tested and fine tuned accordingly, creating upgraded versions each week.
All this research will be supplemented by readings on motion, interactive design and identity.


Influences/projects/experts :
- Treachery of Sanctuary, Chris Milk : video wall that morphs people in evocative ways.
- Choreographic Language Agent, Wayne McGregor : a study and software to show choreography
  - Labanotation : how to write movement
- Kate Sicchio : Her "Hacking the Body" and "Hacking Choreography" works
- Forms (2012), Memo Akten and Davide Quayola & Ballet rotoscope, Masahiko Sato + EUPHRATES : videos that showcase motion beyond the body
- How movement is exaggerated and enhanced visually in comic books
- Elizabeth (Betsy) Coker, dancer and movement expert (NYU Tisch) : I will interview her next week and asked for her help as an expert on the field
- Expanded Body lecture, Golan Levin : collection of works that use the body as a core aspect (will try to interview)
- Merce Cunningham & Lucinda Childs : algorithmically generated choreography + media works


Research to date :
- Studies of algorithmic choreography and different ways in which choreography has been portrayed and interpreted in software and writing (Labanotation, Choreographic Language Agent, Merce Cunningham, Lucinda Childs, Kate Sicchio, ).
- Tests of color and texture in portraits and interaction with a motion detection component
- Reading Impro, by Keith Johnstone : a book about improvisation, theatre, experiences, movement and more
- Kat Sullivan : About her thesis project, Parsing our Silent Language, where she used Machine Learning to do sentiment analysis on poses
- Mimi Yin : About choreography, motion, the body, how/what to visualize and how to gather the data
- Daniel Shiffman : About Kinect and other technologies around skeleton tracking
- Roland : About ML tools and libraries
- Yeseul & Seho : About exhibitions, resources and presentation


Further research :
- I need to conduct studies on people doing different motions to understand how different personalities express themselves
- I need to gather data to start training algorithms for movement analysis
- Read "An Acrobat of the Heart" by Stephen Wang
- Read "Art as an Experience" by John Dewey
- Do further research on ML algorithms that might be better suited and produce better results than what I know for now



## Implementation
*I: Relevant experience & how you plan to develop these skills
II: Knowns & Unknowns: What are the problems to solve?
III: Brief overview of plan of implementation*

My thesis will be built using the following technologies:
- openFrameworks + Shaders : to handle the data, connect to the ML algorithms and create the visualizations. I have a basic understanding of openFrameworks and shaders, having used it for the first half of last semester for Big Screens.
- Kinect v2 : to track the skeletal data. I have used this previously and can be easily connected to ofx. Later, I will test different alternatives (such as Intel's RealSense and ML algorithms) to see how viable and reliable they could be.
- Machine Learning : for analyzing and classifying the skeletal data. This is my weakest point, as I haven't used it before. Besides having Kat's thesis repository with *sklearn* and having used Wekinator briefly in the past, I am attending Gene Kogan’s class “Autonomous Artificial Artists”, attending the AI meetings and using the ml4a material. I will test different ways of classifying data, which will be tested constantly along the semester.
- Projection mapping* : [optional - possible upgrade] I want to track the position of the audience and use projection mapping on top of them to amplify even further their expressive potential. I have basic knowledge of this topic, having done it on Mad Mapper and TouchDesigner, plus I know the modules used in ofx for this purpose.


Another crucial aspect of my research is the study of motion. I started by observing people on the street, and asking and recording people performing certain tasks to analyze how they move and try to discover which gestures to look for. I need to isolate these movements and figure out which variables are relevant for the ML algorithms to classify.

This Friday (15th) I will start gathering movement video and data from potential users. From the motion study I will isolate different body parts, create scripts to normalize the data and calculate the necessary velocity and acceleration values. Then, I will start a loop of model training and shader creation, testing of the accuracy of the measurements and analysis plus the effectiveness of the visuals, and later correction of both; all according to constant user testing (where I will record even more data). The first user testing will be done in 2-3 weeks from now, to have time to create the first model and shaders.

I am aiming for a mid-April showcase, for which I will start reaching to exhibition spaces during early-March. This will give me enough time to have a better grasp of the final version of this project and time to accommodate to the available dates of these spaces.
