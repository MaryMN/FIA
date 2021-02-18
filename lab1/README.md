# FIA

This is the first laboratory work at *The fundamentals of artificial intelligence*.

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)

## General info

Create an expert system that will coleect data  from a database and will allow the user to
answer some question about a possible tourist type based on logic (facts) and one based
on rules.Implementing forward and backward chaining
	
## Technologies
Project is created with:
* Prolog version: 8.2.4-1
	
## Setup
To run this project, install the SWI-PRolog, by accesing this [link](https://www.swi-prolog.org/download/stable).

Or by accessing the [link](https://swish.swi-prolog.org/) for running it online.

And the third option, is to download the [Docker file](https://github.com/MaryMN/FIA/blob/master/dockerfile), built it by writing in your console and run it>
```
docker build -t dockerfile .
```
```
docker run -it dockerfile
```

### Launch

When the environment is setted up write the **go.** predicat.
After that from menu choose load and write the name of file (Figure 1).
```
$ swipl
? go.
> load.
|:'tourists.pl'.
```

And just type criteria that you want. The answer can be type of tourist if all answer satisfied the rules or the system will disply the message "No answer found")(Figura 2.)
![Example 1](https://github.com/MaryMN/FIA/blob/master/lab1/attachments/no_asnw.png "No answer found")

![Example 2](https://github.com/MaryMN/FIA/blob/master/lab1/attachments/exem.png "Example of tourist 0 forward chaining.")

Above was some example of implementing forward chaining, and below are 2 example of implementing backward chaining. (Figure 3,4)

![Example 3](https://github.com/MaryMN/FIA/blob/master/lab1/attachments/known.png "Backward chaining-Known predicate")

![Example 4](https://github.com/MaryMN/FIA/blob/master/lab1/attachments/iknow.png "Backward chaining-IKnow predicate")


