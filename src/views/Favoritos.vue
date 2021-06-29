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
        <div v-for="(data, index) in $store.state.favorites" :key="index">
          <div class="card">
          <h3>
            {{ data.gameName }} &emsp;
            
          </h3>
              
          
            <img @click="navega(index + 1)" :src="data.image" alt="" />

            <p style="display: flex; justify-content: center">
              {{ data.preco }}€
            </p>
            <button @click="unmarkedFavorites(index)">&#9829;</button>
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
      favorites: [],
    };
  },

  methods: {
    unmarkedFavorites(index) {
      this.$store.commit("unmarkedFavorites", index);
    },
    carregaInfo() {
      axios.get("http://localhost:3000/game").then((res) => {
        console.log(res.data);
        this.resultados = res.data;
      });
    },
    navega(personagem) {
      this.$router.push("/personagens/" + personagem);
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
  padding: 0 400px;
  background: linear-gradient(to bottom, #004351 0px, transparent 150px),
    url(https://s3.gaming-cdn.com/images/products/6690/background/6690.jpg)
      center 0px no-repeat #004351;
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

#img {
  width: 100%;
  height: 250px;
  width: 250px;
  transition: 0.5s ease;
  backface-visibility: hidden;
  cursor: pointer;
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

.hello {
  display: flex;
  flex-flow: row wrap;
}
.space {
  display: inline-block;
  margin: 5px;
  box-shadow: 10px 10px 5px 0px rgba(0, 0, 0, 0.25);
}
</style>

<style scoped>
</style>