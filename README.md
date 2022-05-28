# Project Title: 
Checkout-exercise

## Motivation:
Practice for a code test. The challenege is to create a mock checkout system. The client is an online marketplace with several products for sale. I will want to be able to represent this using IRB. 

## Summary: 
Checkout-exercise project has been completed. All tests are running successfully. With more time, I would aim at refractoring my programme and implementing easier to read / cleaner code. The tests files in particular could be made more succinct using subject or doubles to remove repetition. <br />
Please follow the instructions on how to run the project below.<br />
Please also note that the project should be run using IRB or a similar tool. Feel free to use the feature tests as an example of how to interact with the project.

## Installation instructions:
On CML type:<br />
\curl -L https://get.rvm.io | bash -s stable<br /> 
rvm use ruby --install --default<br />
- current Ruby version (ruby-3.0.0)<br />
gem install rspec<br />
rspec --init<br />
gem install rubocop<br />

## How to run programme:
On CML type:<br />
git clone https://github.com/ElliottZaki/checkout-exercise<br />
cd checkout-exercise<br />

## How to run tests:
On CML type:<br />
rspec<br />

## How to run Linter:
On CML type:<br />
rubocop<br />

## Build status:
Programme is functional. Tests passed successfully.<br />

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
I would like to apply a discount for each Lavendar Heart if two or more are purchased.

As a marketplace vendor,
So that I can encourage more sales,
I would like to apply a discount of 10% if the consumer spends £60 or more.

nouns: consumer, vendor, sale(s), marketplace, discount, item, sold, cost.
verbs: see, encourage, apply, purchased, spend(s).

### Functional diagram - Second User story
___________________________________
consumer         | see             |
vendor           | encourage       |
sales            | apply           |
marketplace      | spend           |
discount         | purchase        |
item             |                 |
sold             |                 |
cost             |                 |
------------------------------------ 