SNES to Neo Geo
===============

This is an Arduino project which allows you to interface a SNES or Super Famicom controller
(or a clone) to a Neo Geo style DB15 connector.

I created this for my CMVS project (consolizing a MVS Neo Geo arcade motherboard), and I had
some nice, working SNES controllers that I wanted to use. SNES controllers are quite a good fit
for the Neo Geo because the button colours match (well, except on the purple USA ones!).

It looked easy enough to rewire the controllers and attach a new socket, but I wanted something
that left them in their original state so I could still use them on my SNES.

![Image](ProMicro.jpg?raw=true)

This shows a completed project on a cheap Arduino Pro Micro clone wired up to a SNES female
socket and female DB15 for easy connections.

SNES female controller sockets are available on eBay for a couple of pounds, and a Pro Micro
clone costs about the same, so the total cost of the project is only about five pounds.

SNES Controller -> Arduino
--------------------------

```
  -----------------\
  | 1 2 3 4 | 5 6 7 |
  -----------------/
  
  Pin 1: +5V
  Pin 2: Clock -> Arduino A0
  Pin 3: Latch -> Arduino A1
  Pin 4: Serial -> Arduino A2
  Pin 7: GND
```

Arduino -> DB15
---------------

```
    1(=GND)        8(=5V)
  \-------------------/
   \ o o o o o o o o / [Viewed from front]
    \ o o o o o o o /
     --------------- 
      9          15

 DB15 Pin  ->  Arduino
 --------      -------
 1 (GND)       GND
 8 (+5V)       +5V
 3 (Sel)       D2
 11 (Start)    D3
 15 (Up)       D4
 7 (Down)      D5
 14 (Left)     D6
 6 (Right)     D7
 13 (A)        D8
 5 (B)         D9
 12 (C)        D10
 4 (D)         D11
```
