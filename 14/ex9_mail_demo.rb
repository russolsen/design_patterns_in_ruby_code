#!/usr/bin/env ruby
require '../example'


example %q{

require 'rubygems'
require 'mailfactory'

mail_builder = MailFactory.new
mail_builder.to='russ@russolsen.com'
mail_builder.from='russ@russolsen.com'
mail_builder.subject='The document'
mail_builder.text='Here is that document you wanted'
mail_builder.attach('book.doc')



puts mail_builder
}

