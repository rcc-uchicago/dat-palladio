# Dat-Palladio Example with Cushman Photos

This is a walkthrough example of importing a csv file into a dat datastore and then exposing it to Palladio. We will use the metadata for the [Cushman photos](https://github.com/iulibdcs/cushman_photos). A properly formatted version of the csv file can be found in our `cushman` [directory](https://github.com/moniker001/dat-pal/tree/master/cushman).

Metadata from the [Charles W. Cushman Photograph Collection](http://webapp1.dlib.indiana.edu/cushman/), licensed under [CC BY](http://creativecommons.org/licenses/by/4.0/deed.en_US), was created under the direction of the Indiana University Archives and published by the Indiana University Libraries.

The data may need to be reformatted for easier use and compatibility with features in Palladio. For this reason, we have included two versions of the data. `cushman.csv` contains the original data and `cushman2.csv` is the reformatted version. For this example, we will use `cushman2.csv`.

##Install Dat

1) Install Node from the [Node website](https://nodejs.org/). Make sure it is at least version 0.10 by running the command ```node -v```.

2) After installing node, running the command ```npm install``` will install not only Dat, but also Minimist, which is needed for the bash script to work in the next step. This is due to the package.json file, which specifies these two modules as dependencies.

##Import data

One could either use the bash script or manually run each step as outlined below. Either method will initiate the dat store, import the csv file, and start the dat server to expose the endpoint.

####To run bash script

Simply change to the cushman directory and run the script with the csv file name as an argument without the extension.

```
cd cushman
./datpal.sh cushman2
```

####To run manually

1) Alternatively to running the bash script, change to the cushman directory and initiate the dat store.

```
cd cushman
dat init
```

2) Import the csv file with the following command.

```
dat import --csv cushman2.csv
```

3) Start the dat server to expose the dat store.

```
dat listen
```

##After the dat server is running

The dat store can now be viewed at [http://localhost:6461](http://localhost:6461). The dat store can also be streamed as a csv with the endpoint [http://localhost:6461/api/csv](http://localhost:6461/api/csv).

On the [Palladio website](http://palladio.designhumanities.org/), select "Start" and then the "Load Spreadsheet or CSV" tab. Paste in the endpoint url ([http://localhost:6461/api/csv](http://localhost:6461/api/csv)) and select "Load".

![Palladio upload demo](https://github.com/moniker001/dat-pal/blob/master/resources/palladiodemo.png)

##Formatting data

Before using Palladio features, the data must be in the correct format. Some of the data categories in our example must be formatted first. Palladio does not always recognize the type of data for a data category right away, in which case the user must tell Palldio the type and format the data to match the corresponding type as Palladio recognizes it.

####Date format

For example, one of the data categories in our imported Cushman data is a date. Dates should follow the Year-Month-Day format where Year is always a four-digit integers, while the Month and Day are always two-digit integers. It is also possible to have negative dates, which simple are preceded by a minus sign. An example is **2015-01-01**. The dates in the Cushman data must have its type specified and can be formatted correctly as described below:

1) Click on the **Review** button next to the **Date** category.

2) We need to edit this data by removing extra characters. In the **Remove the following strings** field, enter the following:

```
T00:00:00Z
```

3) In the **Data type** dropdown menu, select the option **Year or Date (YYYY-MM-DD)**. Then close the window.

![Format date](http://miriamposner.com/blog/wp-content/uploads/2014/11/media_1416796422140.png)

####Coordinate format

Although the coordinate data under the data category **Geocoordinates** in cushman2.csv is in the correct format, this may not always be the case with a given dataset. Coordinate data must always be formatted as latitude then longitude, separated by a comma. An example is **41.7897, 87.5997**.

One can use geocoding web sites to find coordinate information for given location names.


##Using the data with Palladio features

Finally, you can now use the various features of Palladio with the correctly imported, correctly formatted data. There are several features, but we will cover only a few examples with our Cushman data.

For more information on what Palladio can do with data, see the [Getting started with Palladio](http://miriamposner.com/blog/getting-started-with-palladio/) tutorial.

####Mapping

The coordinate data can be used to map points on a map.

1) Select the **Map** tab at the top of the window.

2) In the **Places** dropdown window, select **Geocoordinates**.

![Map data](http://miriamposner.com/blog/wp-content/uploads/2014/11/media_1416796647906.png)

####Combine map with timeline

The map can also be combined with a timeline to show the distribution of the data over time. Hovering over the columns in the resulting graph gives more information.

1) While viewing the map, select the **Timeline** tab at the bottom of the window.

2) In the **Group by** dropdown window, specify that you wish to group your data by **Genre 1** or **Genre 2**.

####Filter by date

The data can also be filtered based on time. Here is an example to filter out all years except 1940 to 1942.

1) After mapping and creating the timeline, use the crosshairs to drag from the year 1940 to 1942. A blue box will appear over the selected date range. The map will also update to match the selected date range.

2) To zoom in on the selected date range, select **Zoom to filter** at the bottom of the window.

3) To remove the date filter, click on the "x" next to the date range above the graph.

## Resources
* [Dat-Palladio](https://github.com/rcc-uchicago/dat-palladio)
* [Palladio](http://palladio.designhumanities.org) 
* [Dat](http://dat-data.com/)
* [Getting started with Palladio](http://miriamposner.com/blog/getting-started-with-palladio/)
