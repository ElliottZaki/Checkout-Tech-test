# Project Title: 
Checkout-exercise

## Motivation:
Practice for a code test. The challenege is to create a mock checkout system. The client is an online marketplace with several products for sale. I will want to be able to represent this using IRB. 

## Installation instructions:
On CML type: 
\curl -L https://get.rvm.io | bash -s stable - Rvm (Ruby Version manager) This helps you manage different versions of Ruby.
rvm use ruby --install --default - This installs Ruby on your machine.
- current Ruby version (ruby-3.0.0)
gem install rspec
rspec --init
gem install rubocop

## How to run programme:
On CML type: 
cd checkout-exercise

## How to run tests:
On CML type: 
rspec

## How to run tests:
On CML type: 
rubocop

## Build status:
Testing

## First User Story:
As a marketplace vendor,
So that I can add new products to the marketplace,
I would like to be able to add an item.

As a marketplace vendor,
So that I can identify my products,
I would like each item to have a unique product code.

As a marketplace vendor,
So that I can identify my products,
I would like each item to have a name.

As a consumer,
So that I can see how much I need to pay,
I would like each item to have a cost.

nouns: vendor, consumer, product, marketplace, item, code, name, cost.
verbs: add, identify, see

### Functional diagram - First User story
___________________________________
client           | add             |
product          | identify        |
marketplace      | see             |
item             |                 |
code             |                 |
name             |                 |
cost             |                 |
------------------------------------ 


## Second User Story:
As a consumer,
So that I can see how much I am paying,
I would like to be able to see a total cost.

As a marketplace vendor,
So that I can encourage more sales,
I would like to apply a discount for every two of the same item sold.

As a marketplace vendor,
So that I can encourage more sales,
I would like to apply a discount of 10% if the consumer spends £60 or more.

nouns: consumer, vendor, sale(s), marketplace, discount, item, sold, cost.
verbs: see, encourage, apply, spend(s)

### Functional diagram - Second User story
___________________________________
consumer         | see             |
vendor           | encourage       |
sales            | apply           |
marketplace      | spend           |
discount         |                 |
item             |                 |
sold             |                 |
cost             |                 |
------------------------------------ 