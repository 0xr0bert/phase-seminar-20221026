---
title: Incorporating social norms into agent-based models evaluating the impact of active commuting intervention
author: Robert Greener
date: 25th July 2022
theme: sky
revealjs-url: reveal.js
navigationMode: linear
width: \"90%\"
height: \"100%\"
bibliography: library.bib
margin: 0
---

# Background

## Background

- There is a growing commitment in the UK and worldwide to rebalancing the travel system, so that more journeys are made using more active modes, such as walking and cycling.
- Walking and cycling are good for people's physical and mental health, but also, they reduce dependency on motorized transport, particularly cars, which will reduce noise and air pollution, reduce the risk of road traffic injury, and help cardiovascular disease and obesity.
- Therefore, there are significant population health gains to be made by moving people into more active modes of travel.
- Social norms, as well as system-based approaches, are understudied in public health. However, these could be key to understanding what makes an intervention successful.

## Model aims

- The aim is to build a configurable agent-based model of the *decision* to perform commuting behaviour.
- This means that the actual process of commuting is not modelled -- we don't model how traffic flows through cities.
- We look at the higher-level mode-choice decision rather than the act of travel.
- We aim to include the effect of the actions of peers and neighbours, subculture, habit, weather, bicycle ownership, car ownership, environmental supportiveness, and congestion on the decision to travel by walking, cycling, driving, or public transport.
- All the parameters are configurable allowing for other users to calibrate the model to their own area of interest.

# Methods

## Some assumptions


:::::::::::::: {.columns}
::: {.column width="45%"}
- 4 options at every time step: walk, cycle, public transport, or drive.
- Modelled loosely on Waltham Forest, a North Eastern London Borough.
- Used a microsimulation approach to ensure wards (neighbourhoods) matched real life on things such as car ownership and commute distance. This used data from the UK Household Longitudinal Survey [@universityofessexUnderstandingSocietyWaves2020] and 2011 Census population data [@officefornationalstatistics2011CensusAggregate2017].
:::
::: {.column width="45%"}
![](images/neighbourhood-grid.svg){width="80%"}
:::
::::::::::::::

## Environmental assumptions

- Each agent lives in a neighbourhood.
    * Neighbourhoods have a *supportiveness* for each transport mode.
    * Neighbourhoods also have a physical *capacity* for each transport mode, which once passed results in *congestion*, a negative influence.
    * There is variation in neighbourhood supportiveness and capacity between neighbourhoods.
- Supportiveness is a *composite* configurable parameter.
- We can change the score to reflect positive or negative changes in the supportiveness of the environment.
    * Environmental changes are *low-frequency*, potentially working through norms.
- We also allow for weather as a factor affecting daily mode choice.
    * Weather changes are *high-frequency*, imposing mode choice.

## Agent assumptions

:::::::::::::: {.columns}
::: {.column width="45%"}
- Agents' norms arise through a combination of:
    * their friends;
    * their neighbours; and
    * their mobility culture
- A mobility culture could be seen as the process of creation and maintenance of allegiance to particular forms of mobility.
- The main task of an agent is to commute to work with a travel mode.
:::
::: {.column width="45%"}
![](images/agent-belongings.svg){width="80%"}
:::
::::::::::::::

# Conclusion and end

## References
