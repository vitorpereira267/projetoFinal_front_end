<template>
  <div class="background-images">
    <div class="header">
      <div>
        <img
          class="platform-logo"
          style="height: 30px"
          src="https://logosmarcas.net/wp-content/uploads/2020/11/Steam-Logo.png"
          alt=""
        /><a href="">STEAM</a>
      </div>
      <div>
        <img
          class="platform-logo"
          style="height: 30px; margin: 0 10px"
          src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Ubisoft_logo.svg/655px-Ubisoft_logo.svg.png"
          alt=""
        /><a href="">UPLAY</a>
      </div>
      <div>
        <img
          class="platform-logo"
          style="height: 30px; border-radius: 100%; margin: 0 10px"
          src="https://seeklogo.com/images/O/origin-logo-BF01A5BFBA-seeklogo.com.png"
          alt=""
        /><a href="">ORIGIN</a>
      </div>
    </div>
    <div class="background-staff">
      <div class="box">
        <div class="box-search-container">
          <span class="box-search-filters">
            <select
              class="search-results"
              name="platforms"
              id="search-platforms "
            >
              <option value="1">Platforms</option>
              <option value="2">Steam</option>
              <option value="3">Uplay</option>
              <option value="4">Origin</option>
            </select>
          </span>

          <span class="box-search-filters">
            <select
              class="search-results"
              name="category"
              id="search-category "
            >
              Category
              <option value="1">Category</option>
              <option value="2">Action</option>
              <option value="3">Adventure</option>
              <option value="4">Singleplayer</option>
              <option value="5">Multiplayer</option>
              <option value="6">Co-op</option>
              <option value="7">FPS</option>
              <option value="8">Racing</option>
            </select>
          </span>
          <span class="box-search-filters">
            <select
              class="search-results"
              name="category"
              id="search-category "
            >
              <option value="1">Trendings</option>
              <option value="2">Name ↑</option>
              <option value="3">Name ↓</option>
              <option value="4">Price ↑</option>
              <option value="4">Price ↓</option>
              <option value="4">Release Date ↑</option>
              <option value="4">Release Date ↓</option>
            </select>
          </span>
        </div>
        <div v-for="(data, index) in resultados" :key="index">
          <div class="card">
            <h3>{{ data.gameName }}</h3>


            <img @click="navega(index + 1)" :src="data.image" alt="" />

            <p style="display: flex; justify-content: center">
              {{ data.preco }}€
            </p>

            &emsp; <button @click="markedFavorites(data)">&#9829;</button>
          </div>
        </div>
      </div>
    </div>
    
  </div>
  
</template>

<script>
import axios from "axios";
export default {
  data() {
    return {
      resultados: "",
      pesquisa: "",
      loading: true,
      favorites: [],
    };
  },

  //https://finalspaceapi.com/api/v0/character
  methods: {
    markedFavorites(data) {
      if (!!!this.$store.state.favorites.find((res) => res === data)) {
        this.$store.commit("markedFavorites", data);
      }
    },

    carregaInfo() {
      axios.get("http://localhost:3000/api/game").then((res) => {
        this.resultados = res.data;
        console.log(this.resultados)
      });
    },

    navega(game) {
      this.$router.push("/games/" + game);
      console.log(game)
    },
  },
  mounted() {
    this.carregaInfo();
  },
};
</script>

<style scoped>
@import url("https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css");
h3 {
  margin: 30px;
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
  color: #777;
  font-size: 13px;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  text-decoration: none;
  color: white;
}
p {
  color: black;
}

.background-staff {
  padding: 0 400px 50px;
  background: linear-gradient(to bottom, #004351 0px, transparent 150px),
    url(https://s3.gaming-cdn.com/images/products/6690/background/6690.jpg)
      center 0px no-repeat #004351;
      height: auto;
  
  
}
.box {
  display: flex;
  flex-flow: row wrap;
  border-radius: 8px;
  background: #eee;
  box-shadow: rgba(0, 0, 0, 0.25) 0px 14px 28px,
    rgba(0, 0, 0, 0.22) 0px 10px 10px;
  padding: 20px;
}
.card {
  color: #777;
  font-size: 13px;
  margin-top: 15px;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  text-align: center;
  margin: 10px;
  box-shadow: rgba(0, 0, 0, 0.25) 0px 14px 28px,
    rgba(0, 0, 0, 0.22) 0px 10px 10px;
  width: 245px;
}

.header {
  display: flex;
  justify-content: space-around;
  background: #004351;
  padding: 25px 600px;
}

.box-search-container {
  display: flex;
  padding: 20px 25px 20px 0;
  width: 1400px;
  height: 90px;
  align-items: center;
}

.box-search-filters {
  position: relative;
  border-radius: 5px;
  margin: 10px;
  cursor: pointer;
  color: #777;
  background: #fff;
  box-shadow: 0 0 8px 0 rgb(0 0 0 / 10%);
  font-size: 15px;
  padding: 15px 20px;
  min-height: 27px;
  width: 175px;
  text-shadow: 0 0 0 #777;
  overflow: hidden;
  vertical-align: top;
}

.search-results {
  border: none;
  cursor: pointer;
  font-size: 15px;
  color: #777;
  text-shadow: 0 0 0 #777;
  top: 5px;
  width: 100%;
}

option {
  font-weight: normal;
  display: block;
  white-space: nowrap;
  min-height: 1.2em;
}
</style>

