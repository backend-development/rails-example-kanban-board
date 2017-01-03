# README

This is the 'Kanban Board' example app.
See https://backend-development.github.io/rails_view_and_controller.html

## Study the Models 

This Application already has two models: boards and cards.
Create the database and load the seed data by running
`rails db:setup`

## Replace the Homepage

Redirect home to the list of kanban boards.

## Study Dependent Models 

Cards depend on their board and are deleted when the board
is deleted.  Delete a board and study the log file: how are the
cards deleted? Does Rails use referential integrity in the
database? Or does it do all the work itself?

## A Better Form

Have a look at `card.status`. I has only four possible values. 
In the form for cards replace the textfield with a dropdown list.

## Nested Ressources

Study the URLs, controllers and actions by running `rails 
routes`. Now change `config/routes.rb` to 

    resources :boards do
      resources :cards
    end

How do the URLs change?

A word of warning: this change breaks a lot of the links in the views.
We will fix them in the next step.

## Changes in `cards_controller` 

Change the card_controller to
always read `params[:board_id]` and set a `@board` variable.  
You can use a `before_action` to do that!

Make all the actions use the `@board`:
The index action should only show cards of the current board.  
The create action should only create new cards on the current board.
and so on.

This also concerns the views:
When creating or updating a card
there should be no input-field for `board_id` in the form,
the `board_id` is already specified by the url.

When you are done you should have fully functioning views and
actions for cards again.

## Display the Kanban Board 

Research what a kanban board shold look like.
Change the index-view of card to look like this.

