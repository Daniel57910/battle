We have now implemented a handful of User Stories. At the moment, our Battle app is going through the motions, but nothing is really happening. Our next User Story asks us to do something about that:

As Player 1,
So I can start to win a game of Battle,
I want my attack to reduce Player 2's HP

This User Story is more complex than previous ones. It requires us to track HP, and to manipulate it on a per-player basis. This is far more than a simple controller or router should handle. Before we can reasonably implement it we should refactor our code to use some Application logic stored in a Model layer. We can store our Model layer in /lib, and access it from our controller. This is known as a Separation of Concerns.

In this challenge, you will create a Player class in the Model layer. It will interact with your existing controller code.

### Challenge Setup

If the Controller action is complex - for example, it stores complex data (i.e. more than simple strings) or creates new objects - it should pass that sort of job over to the Model (for now, anything in /lib). Our Model will be the kind of Object-Oriented program you have been building so far. You could imagine that the Controller provides web access to your Ruby code from a browser.