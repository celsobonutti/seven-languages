/*
Io is "strongly" typed, since neither 1 nor "one" is coerced into another type,
and an exception is thrown.
*/

(true and 0) println
(true and "") println
(true and nil) println

/*
As we can see by the results of the printings, 0 and empty string are truthy,
while nil is falsy.
*/

/*
You can use a the slotNames function
*/

/*
= assings a vallue to an existing slot
:= creates a slot and assigns a value
::= creates a slot, assigns a value and created a setter
*/

Car := Object clone
Car barulho := ""
Car passaMarcha := method(self barulho println)
celtaPimp := Car clone
celtaPimp barulho = "pfiu tsiiiiii"
pfiuTss := celtaPimp getSlot("passaMarcha")
(celtaPimp pfiuTss)
