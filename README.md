# Adoptidee 2023

## Sonic Pi

Sonic Pi is een programma waarmee je muziek kunt programmeren. Het programma kun je [hier downloaden](https://sonic-pi.net/).

## De basis

Speel MIDI noot 60 (C)

```ruby
play 60
```

of:

```ruby
play :c
```

Als je meedere noten achter elkaar zet, dan speelt Sonic Pi ze tegelijk af:

```ruby
play :c
play :e
```

Meestal wil je dat de noten achter elkaar afgespeeld worden, met een kleine pauze ertussen. Dit kun je doen met `sleep`:

```ruby
play :c
sleep 0.25
play :e
sleep 0.25
play :f
sleep 0.25
play :a
```

## Voorbeelden

<./samples>

## Nuttige handleidingen

- https://projects.raspberrypi.org/nl-NL/projects/getting-started-with-sonic-pi/2
- https://sonic-pi.mehackit.org/exercises/en/01-introduction/01-introduction.html (alleen in Engels).
