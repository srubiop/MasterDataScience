#!/usr/bin/bash

createdb opentraveldata
cat proposed_exercise_2nd_step.sql | psql opentraveldata

