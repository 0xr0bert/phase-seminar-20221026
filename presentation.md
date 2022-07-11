---
title: Incorporating social norms into agent-based models evaluating the impact of active commuting intervention
author: Robert Greener, Daniel Lewis, Jon Reades, Simon Miles, and Steven Cummins
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

## Model initialization

- Agents are created and assigned a range of characteristics:
    * a commute to fulfil (local, city, or beyond);
    * a neighbourhood, social network, and mobility culture; and
    * some psychological veriables:
        - suggestibility to friends and neighbours;
	- adherence to norms;
	- inertia/resistance to change; and
	- weather sensitivity.
- Neighbourhoods are assigned a supportiveness and capacity.

## A model run

- Each agent goes to work every weekday.
- Each weekday, each agent calculates a *budget* of how much they are willing to commute by a given mode (norm + habit + congestion). This is then ranked.
- They also calculate a *cost* for each each mode (distance + environmental supportiveness + weather). This is ranked in reverse (higher cost = lower ranked cost).
- Max of budget rank + reverse cost rank.

# Experimentation

## Modelling car-free days

:::::::::::::: {.columns}
::: {.column width="45%"}
- In order to demonstrate the utility of the model, we implemented an intervention  where cars were banned on Wednesdays.
- After year 1, cars were banned. The simulation was run for 4 more years.
- This introduced greater instability into the journeys taken, but significantly greater number of active commutes.
- In the control scenario, over 200 runs, the odds of an active journey were 0.091 (89% HPDI: [0.091, 0.091]). The odds of an active journey were 77.7% (89% HPDI: [77.7%, 77.7%]) greater in the car-free days scenario.
:::
::: {.column width="45%"}
![](images/cfd.png){width="80%" caption="14 day moving average of active commutes"}
:::
::::::::::::::

# Conclusion and end

## Conclusions

- Thinking about norms and habits are key.
- In our sample intervention, habits and norms allow us to destabilize the convention of commuting by car. We disrput this convention by preventing the effect of habit (on car-free days); this then leads to a change in norm.
- By allowing many runs of the simulation, precise estimates of the effects within the model can be attained.
- Further work could extend our model by calibrating the built environment data to see how the environment interacts with social norms.
- The model is available under a permissive license at <https://gitlab.com/ragreener1/Motivate>. The specific version used is available at <https://doi.org/hvpd>. It is programmed in Rust, a modern high-performance systems programming language.
- The model is easily configurable using open standards (YAML) to define its parametrization.

## End

- Full paper available in the workshoop proceedings.
- Source code available under a permissive free software license (<https://doi.org/hvpd>).
- This research was funded by KCL–LSHTM seed funding. Robert Greener is supported by a Medical Research Council Studentship [grant number: MR/N0136638/1]. Steven Cummins is funded by Health Data Research UK (HDR-UK). HDR-UK is an initiative funded by the UK Research and Innovation, Department of Health and Social Care (England) and the devolved administrations, and leading medical research charities.
- Any questions?

## References
