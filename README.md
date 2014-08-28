# Dat/Palladio Demo

[Palladio](http://palladio.designhumanities.org) is a visualization framework for exploratory data analysis on tabular data.  It was developed primarily for researchers in the humanities and social-sciences working with collections of spatio-temporal data.

[Dat](http://dat-data.com/) is a flexible tool for storing, syncing, and
transforming tabular data.  It's like `git` for datasets.

We want to try using `dat` as a backend datastore that can be easily streamed
into Palladio.

In particular, you'll ...

* [import](https://github.com/maxogden/dat/blob/master/docs/importing.md) the supplied [data samples](samples/csv) into a dat datastore
* [expose](https://github.com/maxogden/dat/blob/master/docs/rest-api.md) the resulting datastore through dat's REST API
* [import](http://palladio.designhumanities.org/#/upload) the streaming CSV from this REST endpoint into Palladio


## Motivation

We'd like to offer our users a way to expose their research collections to 
visualization/exploratory front-ends like Palladio.  In particular, we're interested in exposing project data we may be hosting for a research group in a shared multi-user database, such as MySQL.  

Data upload and sharing is currently a weak spot for Palladio.  One
option for importing data is to link to a public Google spreadsheet containing your tabular data.  OK, imagine the effort involved in having to manually dump a snapshot of your research dataset, upload to a Google spreadsheet, and make it publically accessible.

What if, instead, your hosted research data was already exposed as a REST
endpoint that could stream out your data as CSV via HTTP to a requesting
consumer, such as Palladio.  That is, instead of providing a link to the Google
Spreadsheet, you should be able to just provide the URL for your [streaming
endpoint](http://t.co/kFLTs4W0Lp) (e.g, `http://ws.rcc.uchicago.edu/sample/api/csv`).

For some additional context, see our [exchange](https://twitter.com/joyrexus/status/504376293408768000) with the lead developers of Palladio and Dat.


## Resources

* [Palladio](http://palladio.designhumanities.org)
  * [design/dev overview](http://esjewett.com/blog/palladio)
  * [sample dataset](http://palladio.designhumanities.org/sample/#/upload)
  * [samples](samples/csv) - CSV text files of sample dataset
  * [FAQ](http://hdlab.stanford.edu/lab-notebook/palladio/2014/08/18/palladio-faqs-0-6-0/)

* [Dat](http://dat-data.com/)
  * [What is dat?](https://github.com/maxogden/dat/blob/master/docs/what-is-dat.md)
  * [Getting started](https://github.com/maxogden/dat/blob/master/docs/getting-started.md)
  * [Importing data](https://github.com/maxogden/dat/blob/master/docs/importing.md)
  * [REST API](https://github.com/maxogden/dat/blob/master/docs/rest-api.md)
    * [CSV-streaming](http://t.co/kFLTs4W0Lp)
    * [Example](http://usgs-earthquakes.herokuapp.com/) - example of REST API
      serving up 
      [USGS earthquake data](https://github.com/maxogden/dat-usgs-earthquakes).
