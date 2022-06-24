# Zorya
https://zorya-learning.herokuapp.com/

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Features](#features)
* [Sources](#sources)

## General info
Zorya-learning is a learning management system for businesses about cybersecurity awareness. When a company subscribes to the platform they have access to a customer/company account in which they can attach their staf and manage the distribution of learnings. As a final user, member of one of these companies, I can fellow apprenticeships and increase my learnings.

## Technologies
Project is created with:
* [Ruby 2.7.4](https://ruby-doc.org/core-2.7.4/)
* [Rails 5.2.8](https://api.rubyonrails.org/v5.2.8/)
	
## Features
### As a Customer / How to Use?
* Contact an account manager and sign a subscription to the plaform.
* Create an account
* Ask your account manager to link you to your company, give you rights to manage it and helping you to set up your [Slack](#slack) integration if you use this platform with your company.
* Add your collaborators to your company.
* Manage learnings attribution.

### As a User / How to Use?
* Create your account.
* Ask a manager of the Zorya platform in your company to associate you with the company and assign you learnings.
* Fellow your learnings.
* You receive emails and slack alerts when there are news about your learnings.

### Slack
Link a slack account to your company
* Clic in the sidebar:  "Mon espace entreprise"
* Click in Company : "Paramétrer mon intégration Slack"
* Enter the name of your slack channel on which you wish to receive information from Zorya (example #general).
* Fill in your Webhook.
* To get the WEBHOOK_URL you need:
 * login to your workspace
 * go to https://slack.com/apps/A0F7XDUAZ-incoming-webhooks
 * click "ajouter à Slack"
 * choose your channel, press "Add Incoming WebHooks integration"
 * just copy your "webhook url" in red.
 * Fill in your Webhook.

### As an Admin / How to Use when a customer subscribe?
* Connect to your account.
* Clic on the sidebar: "Administrer Zorya"
* Clic on the sidebar: "company" then "+ add new"
* Clic on the sidebar: "user" then take the user ID of your customer.
* Clic on the sidebar: "User company" then "+ add new" for create a relation beween the new company and the customer account.

## Sources
This app is created through the [The Hacking Project](https://www.thehackingproject.org) bootcamp and made by [Sngm4](https://github.com/Sngm4), [Lxvia](https://github.com/Lxvia), and [MatthiasBlc](https://github.com/MatthiasBlc).