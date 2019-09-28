# Docker mono
Docker mono can be used to run windows application inside docker running on any host systems like macOS.

In this demo, we will try to run fiddler on Mac

 1. docker build -t fiddler-mono .
 1. Install xquartz (https://www.xquartz.org/). When application with UI is running inside docker, we need to have UI displayed in an x-window. We will run xquarts on host system and send disply from docker to host system. 
 1. Start xQuartz
 1. socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
 1. docker run -it -v $(pwd):/tmp/ -p 8888:8888 -e DISPLAY=host.docker.internal:0 fiddler-mono /bin/sh
    1. Inside the docker container start fiddler - mono /app/Fiddler.exe
    2. Update config (tools -> Fiddler -> https)
    3. Allow remote connection
    4. stop fiddler and start again.
    5. mono /app/Fiddler.exe
    6. mkdir -p /root/Desktop
    7. export fiddler root cert






