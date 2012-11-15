# encoding: utf-8
#
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

b1 = Board.create( title: 'Semesterprojekt QPT2a')
Card.create( title: 'Konzept', description: "Abgabe am 26.Oktober", status: "backlog", board_id: b1.id )
Card.create( title: "Wichtigster Use Case", description: "definiere den wichtigstesn Use Case", status: "backlog", board_id: b1.id )

b2 = Board.create( title: 'Weihnachten')
Card.create( title: "Geschenk für Mama", description: "Recherche notwendig!", status: "backlog", board_id: b2.id )
