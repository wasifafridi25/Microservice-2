# Microservice-2
Gives the weather of a given Zip code

1st Method: 
Run the python file
Use this address to see the weather details for the given zip code: http://localhost:8000/weather/94539
Change the zipcode to see the weather details of that area.

2nd Method:
go to the project directory and build the docker image using the command:
docker build -t my-app2:1.0 .
After building the image run the container on port 8000. The command is in the line below:
docker run -d -p 8000:8000 --name zipCode_to_weather my-app2:1.0 
Make sure this port is available on your host machine, if not change port and use one which is available. In that case use that specific port address to view the 
result on your browser. 
Use this address to see the result on your browser: http://localhost:8000/weather/94539
Again you can make changes to the zipcode to view the weather details of that area.
