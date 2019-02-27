# starting with openFrameworks

This week I started working in openFrameworks (ofx), as my final project will run on this platform. First of all, I need to list the different things I need to do in ofx:
- create different **shaders**
- know how to connect and get data from a **Kinect v2**
- manipulate and analyze the **data**
- connect to **ML** algorithms

This week I focused on shaders and connecting the Kinect to ofx. At the same time, I needed to get used to the workflow again, which I managed to do as well.


## Shaders
To learn more about shaders, I used the specific [chapter of the ofBook](https://openframeworks.cc/ofBook/chapters/shaders.html) and also [the Book of Shaders](https://thebookofshaders.com).

I ran into several issues, which I did not know how to solve or what caused them. Between using different versions of OpenGL and bad documentation on Mac, I changed to Windows and then back. It took me a while to understand the differences and to debug each separate problem, but I ended up getting them to work properly in both operating systems. I will meet on Monday with Michael Simpson to clarify for some other aspects and get further ideas and help.


## Kinect v2
Getting Kinect v2 to work was much easier, thanks to the [ofxKinectForWindows2 addon](https://github.com/elliotwoods/ofxKinectForWindows2). It had very clear instructions on how to create new projects with it and works great. There's even an empty example that gives you everything you might need to work with it!

The one thing I realized while testing is that it takes a few seconds to detect the body and it needs some distance to do so. The positioning of the camera is essential and it'll be a key aspect on my implementation. Sadly, I think this also means the data I previously collected is not that good :/ Finally, it seems to be kind of glitchy with the hands, so I'll use as little of that data as possible.
