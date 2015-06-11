BroadGauge
==========

Platform for managing training/workshops by connecting interested trainers and educational institutes interested in conducting trainings for their students. 

This is going to be used for managing Python workshops going to be conducted across India as part of PyCon India 2014.

[![Build Status](https://travis-ci.org/anandology/broadgauge.svg?branch=master)](https://travis-ci.org/anandology/broadgauge)

Requirements
------------

* PostgreSQL
* Python 2.7
* virtualenv

How to setup
------------

* Clone the repo

        ## CHANGE TO PYTHON IRELAND git clone git://github.com/anandology/broadgauge.git
        cd broadgauge

* Setup virtualenv and install python packages

        virtualenv .
        . bin/activate
        pip install -r requirements.txt

* Start Postgres server

Linux


Mac

        To launch start postgresql at login:
        ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents

        Then to load postgresql now:
        launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist
        Or, if you don't want/need launchctl, you can just run:
        postgres -D /usr/local/var/postgres


Windows

* Create a database

        createdb pythonexpress

* Add schema
        
        psql pythonexpress < broadgauge/schema.sql

* Run the app

        python run.py
