<template>
  <div class="home">
   
    <b-carousel
      id="carousel-1"
      v-model="slide"
      :interval="4000"
      controls
      indicators
      background="#ababab"
      img-width="1024"
      img-height="480"
      style="text-shadow: 1px 1px 2px #333"
      @sliding-start="onSlideStart"
      @sliding-end="onSlideEnd"
    >
      <b-carousel-slide
        caption="A Way Out"
        text="In the game, players control Leo and Vincent, two convicted prisoners who must break out of prison and stay on the run from authorities. ... Players need to cooperate with each other in order to progress, and each situation can be approached differently, with both characters taking different roles."
        img-src="https://wallpapercave.com/wp/wp3277489.jpg"
      ></b-carousel-slide>
      <b-carousel-slide
        caption="Need for Speed Payback"
        text="Need for Speed Payback is a racing game set in an open world environment of Fortune Valley; a fictional version of Las Vegas, Nevada. It is focused on action driving and has three playable characters (each with different sets of skills) working together to pull off action movie like sequences."
        img-src="https://wallpapercave.com/wp/wp2432724.jpg"
      ></b-carousel-slide>
      <b-carousel-slide
        caption="For Honor"
        text="For Honor is an action fighting game set during a medieval, fantasy setting. Players can play as a character from one of four different factions, namely the Iron Legion (Knights), the Warborn (Vikings), the Dawn Empire (Samurai), and the Wu Lin (Ancient Chinese)."
        img-src="https://wallpapercave.com/wp/wp1858674.jpg"
      ></b-carousel-slide>
      <b-carousel-slide
        caption="Battlefield V"
        text="Battlefield 5 is a celebration of the chaos and the drama of combined arms warfare. At its core is the concept of the squad, a small group of players that can cooperate and coordinate together to achieve goals in-game"
        img-src="https://wallpapercave.com/wp/wp3811500.png"
      ></b-carousel-slide>
      <b-carousel-slide
        caption="Assassin's Creed Odyssey"
        text="It recounts a secret mythological history set during the Peloponnesian War, which was fought between the city-states of Greece. The player takes on the role of a mercenary and is able to fight for the Delian League, led by Athens, or the Peloponnesian League, led by Sparta."
        img-src="https://wallpapercave.com/wp/wp3727932.jpg"
      ></b-carousel-slide>
    </b-carousel>
  </div>

</template>

<script>
import axios from "axios";
export default {
  data() {
    return {
      slide: 0,
      sliding: null,
    };
  },
  methods: {
    onSlideStart(slide) {
      this.sliding = true;
    },
    onSlideEnd(slide) {
      this.sliding = false;
    },
  },
};
</script>

<style>
.home{
    padding: 50px 270px;
    background: linear-gradient( #3f87a6, #ebf8e1, #f69d3c);
    height: 870px;
}
</style>

