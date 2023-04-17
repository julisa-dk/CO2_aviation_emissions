<div id="header" align="center">
<<<<<<< Updated upstream
  <img src="airline1.jpeg" width="1100"/>
=======
  <img src="airline1.jpeg" width="100"/>
  !(https://user-images.githubusercontent.com/36698832/191609738-8fecfcf3-5c14-47f5-95ca-9d2e68f9f172.png)
>>>>>>> Stashed changes
</div>

<h1 align="center"> "Green aviation - CO2 Emissions" </h1>

### Problem statement :

In this project, I would like to tell you a little beat about green aviation and how we can impact based on the data the improvement of climate and decrease CO2 emissions.

In 1960, 100 million passengers traveled by air, at the time a relatively expensive mode of transportation available only to a small fraction of the public. By 2019, the total annual worldwide passenger count was 4.56 billion. The “hypermobility” of air travel is available to greater numbers of people worldwide, with rapid growth in aviation projected for developing nations.
Globally, aviation produced 2.4 percent of total CO2 emissions in 2018. While this may seem like a relatively small amount, consider that it also has non-CO2 effects, such as warming induced by aircraft contrails, which add to the total climate influence of aviation. An updated analysis in the journal Atmospheric Environment in January 2021 concluded aviation’s climate impact accounted for 3.5 percent of total anthropogenic warming in 2011 and was likely the same percentage in 2018.
In this project, I would like to look at the impact of both categories of commercial aviation: passenger travel and air freight. In 2018, passenger transport produced 81 percent of global commercial aviation emissions and air freight generated the remaining 19 percent. Both categories have a history of steady growth, and the trend will continue. By 2050, commercial aircraft emissions could triple given the projected growth of passenger air travel and freight.
Carbon Dioxide (CO2) is the largest component of aircraft emissions, accounting for approximately 70 percent of the exhaust. The gas mixes in the atmosphere with the same direct warming effect that occurs when it is emitted from other fossil fuel combustion sources. Jet fuel consumption produces CO2 at a defined ratio (3.16 kilograms of CO2 per 1 kilogram of fuel consumed), regardless of the phase of flight. Its extended lifetime in the atmosphere makes CO2 especially potent as a greenhouse gas. After being emitted, 30 percent of a given quantity of the gas is removed from the atmosphere naturally over 30 years, an additional 50 percent disappears within a few hundred years, and the remaining 20 percent stays in the atmosphere for thousands of years.
That is why very important to monitor the dynamics of CO2 emissions and other effects on the climate of aviation.

In this project, I just show a small part of this global problem, but it can contribute to a big solution for that. 

More about it:

https://www.eesi.org/papers/view/fact-sheet-the-growth-in-greenhouse-gas-emissions-from-commercial-aviation#1

https://www.eurocontrol.int/our-data

### <br></br> Dataset "CO2 Emissions by State": 

Data collection, monitoring, and development are key parts of our contribution to support aviation in its goal to reduce noise, CO2, and other emissions, as well as condensation trails.
<div>
  https://ansperformance.eu/data/
</div>

### <br></br> Data Pipeline:

The pipeline could be a stream or batch. In this project, I decided to use batch because I want to run the script periodically (quarterly). 
Because this database is updated by the end of the first month of each quarter with new data from the previous quarter. 

The dataset includes annual and monthly information on CO2 emissions related to commercial passenger, freight, and general aviation flights for 186 countries. These CO2 emissions are estimated based on a consistent methodology across countries.
Flights are broken down into 3 categories: total flights, passenger flights, and freight flights. Please note that general aviation (non-freight flights with less than 19 passengers, e.g. agricultural planes and private jets) are included with passenger flights.

The main source used for the estimation of these CO2 emissions is a database compiled by the International Civil Aviation Organisation (ICAO) with all commercial passenger and freight flights around the world. From 2019 onwards, the ICAO data source is Automatic Dependent Surveillance-Broadcast (ADS-B) system and for years prior to 2019, the estimates are based on a database of scheduled flight information. A complete description of the estimation methodology is provided in the OECD Working Paper CO2 Emissions from Air Transport - A Near-Real-Time Global Database for Policy Analysis.

The ICAO database is coupled with the CO2 emission calculator provided by Eurocontrol. Given an aircraft type equipped with specific engines and a distance to travel, this tool can be used to calculate the quantity of fuel burnt and a quantity of CO2 emitted. Additional details are available in Eurocontrol (2016). 




