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

In de Help van Sonic Pi kun je een lijst vinden van alle samples die ondersteund worden (links onder in het venster).

## Herhalingen

Muziek bevat vaak herhalingen van een melodie, de volgende code herhaalt een melodie twee keer:

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

## Live loops

In het algemeen wordt muziek gespeeld door meerdere artiesten en/of instrumenten. In Sonic Pi kun je dit bereiken met zogenaamde "live loops". Bijvoorbeeld:

```ruby
live_loop :kick do
  sample :bd_haus, rate: 0.75
  sleep 0.5
end

live_loop :snare do
  sleep 0.5
  sample :sn_dolf
  sleep 0.5
end
```

De code in live loops kan worden aangepast terwijl Sonic Pi de muziek afspeelt! Probeer het maar eens in het vorige voorbeeld: klik op "Run" en pas daarna bijvoorbeeld `rate: 0.75` aan naar `rate: 1.0`. Druk nogmaals op "Run" om de nieuwe code in te laden en luister wat er gebeurd (tip: `Alt+R` doet hetzelfde). Dit heet ook wel "live coding" en is een heel handige techniek om muziek spelenderwijs te maken, door steeds kleine veranderingen te maken, en ze live te beluisteren.

## Parameters

Vrijwel alle operaties in Sonic Pi kunnen worden aangepast met parameters. Bijvoorbeeld:

```ruby
play 60, sustain:2
sleep 2
play 60, attack:0.5
sleep 1
play 60, attack:0.1, sustain:0, release:0
```

Tip: Gebruik de autocomplete van Sonic Pi om de verschillende parameters te ontdekken!

## Effecten

Met effecten kun je het geluid van een stukje muziek veranderen. Probeer bijvoorbeeld eerst eens het volgende sample:

```ruby
sample :guit_e_fifths
```

En nu:

```ruby
with_fx :wobble do
  sample :guit_e_fifths
end
```

Of met nog een effect:

```ruby
with_fx :reverb do
  with_fx :wobble do
    sample :guit_e_fifths
  end
end
```

Tip: Effecten kunnen, net als noten, worden veranderd met parameters.

## Geavanceerd

Een willekeurige noot kiezen:

```ruby
4.times do
  play [:c, :d, :e].choose
  sleep 0.25
end
```

Noten op volgorde afspelen:

```ruby
live_loop :melodie do
  play [:c, :d, :e, :f].tick
  sleep 0.5
end
```

Akkoorden spelen:

```ruby
play 57
play 60
play 64

# is hetzelfde als:
play [57, 60, 64]

# is hetzelfde als:
play (chord :a3, :minor)
```

Akkoorden, willekeurig en parameters:

```ruby
live_loop :first do
  play chord(:a3, :minor).choose, attack: 0, release: 0.3, cutoff: 80
  sleep 0.2
end
```

## Voorbeelden

In de map [samples](./samples) staan enkele voorbeelden.

## Nuttige handleidingen en bronnen

- https://projects.raspberrypi.org/nl-NL/projects/getting-started-with-sonic-pi/2
- https://sonic-pi.mehackit.org/exercises/en/01-introduction/01-introduction.html (alleen in Engels).
