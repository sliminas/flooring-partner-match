# Assignment: Matching Customer & Partner

## Background 
Our goal is to propose the right partner (a craftsman) to a customer based on their project
requirements. The last product category that we reworked was flooring. So the goal is to propose the right partner
based on the details of a customer's flooring project.

## User Story

As a house owner I want to get recommendations for craftsmen to do my flooring project so that I will
choose a reliable partner for a reasonable price to work with. 

## Acceptance Criteria

* The structure of the request from the customer (Client) is as follows:
  * Material for the floor (wood, carpet, tiles)
  * Address (assume that this is the lat long of the house)
  * Square meters of the floor o Phone number (for the partner to contact the customer)
* The structure of the partner data is as follows:
  * Experienced in flooring materials (wood, carpet, tiles or any combination)
  * Address (assume that this is the lat long of the office)
  * Operating radius (consider the beeline from the address)
  * Rating (for this assignment you can assume that you already have average rating for a partner)
* Matching a customer and partner should happen on the following criteria:
  * The partner should be experienced with the materials the customer requests for the project 
  * The customer is within the operating radius of the partner 
* The customer should get a list of partners that offer the service 
* The customer should be able to get the details of each partner that is suggested 
* The list should be prioritized so the best match is shown first. 
  The prioritisation of the best match should be first by average rating and second by distance to customer.

## Your Task

Your task is to show us how you would approach a user story like this.
In real life, the matching of customers and partners is a crucial part in our product.
It determines how happy customers will be with our partners and 
partners with the quality of the customer who we connected with them.
As this is a coding challenge we would like to see your way of designing a feature in the backend,
but also don’t expect you to deliver the most scalable solution that we just copy into our codebase. ;-)

Please write the code in Ruby as this is our most used language and generate some Partner data for your challenge.
Feel free to use the database engine of your choice. 

You can decide how you want us to test the solution. Eg. 
* Providing a SwaggerUI for your API endpoint
* developing a simple UI
* just a README file so that shows how to call your service

You choose! We will review the code, give feedback and ask some follow up questions in the interviews that follow.

## How to submit the coding challenge

For submitting the coding challenge to us we would like to ask you to create a
repository in your GitHub account, which you can share with us once you have finished coding. Just send the link to us.
If you don’t want to have a public repo, you can also make it private and share it with us.
If you don’t use GitHub, you can also use another tool of your choice as long as you are able to give access to us
or you can send a file with the code. 
You can choose whatever works best for you as long as we have a chance to get to look at your code.
