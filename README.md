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

Alle regels waar een hekje (`#`) voor staat negeert Sonic Pi.

```ruby
# dit speelt MIDI note 60
play 60
# de volgende regel word niet gespeeld
# play 70
```

## Samples

Naast MIDI noten kan Sonic Pi ook "samples" afspelen. Samples zijn korte stukjes opgenomen geluid van een echt of nagebootst instrument. Probeer bijvoorbeeld is deze samples:

```ruby
sample :loop_industrial
sleep 2
sample :bd_haus
sleep 1
sample :guit_e_slide
sleep 2
sample :drum_cymbal_closed
```

In de Help van Sonic Pi kun je een lijst vinden van alle samples die ondersteund worden (linksonder in het venster).

## Herhalingen

Muziek bevat vaak herhalingen van een melodietje, de volgende code herhaalt een melodie twee keer:

```ruby
2.times do
  play :c
  sleep 0.5
  play :d
  sleep 0.5
  play :e
  sleep 0.5
  play :c
  sleep 0.5
end
```

Samples hebben allemaal een verschillende lengte, sommige zijn korter dan 1 seconde, andere langer dan 5 seconden. Als je een sample perfect wilt herhalen is daar een trucje voor:

```ruby
4.times do
  sample :loop_industrial
  sleep (sample_duration :loop_industrial)
end
```

## Voorbeelden

In de map [samples](./samples) staan enkele voorbeelden.

## Nuttige handleidingen en bronnen

- https://projects.raspberrypi.org/nl-NL/projects/getting-started-with-sonic-pi/2
- https://sonic-pi.mehackit.org/exercises/en/01-introduction/01-introduction.html (alleen in Engels).
