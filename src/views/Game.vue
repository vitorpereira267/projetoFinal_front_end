<template>
<div class="background-images">
  <div class="header">
      <div>
        <img
          class="platform-logo"
          style="height: 30px; width: 55px;"
          src="https://logosmarcas.net/wp-content/uploads/2020/11/Steam-Logo.png"
          alt=""
        /><a href="">STEAM</a>
      </div>
      <div>
        <img
          class="platform-logo"
          style="height: 30px; margin: 0 10px; width: 33px;"
          src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Ubisoft_logo.svg/655px-Ubisoft_logo.svg.png"
          alt=""
        /><a href="">UPLAY</a>
      </div>
      <div>
        <img
          class="platform-logo"
          style="height: 30px; border-radius: 100%; margin: 0 10px; width: 23px;"
          src="https://seeklogo.com/images/O/origin-logo-BF01A5BFBA-seeklogo.com.png"
          alt=""
        /><a href="">ORIGIN</a>
      </div>
    </div>
  <div class="background-staff">
    
    <div v-for="(data, index) in resultados" :key="index" class="box">
      <div>
        <img :src="data.image" alt="" />
      </div>

      <div class="game-info">
        <h1>{{ data.gameName }}</h1>
        <div class="subinfo">
          <a>Platform: Uplay</a>
          <div class="stock">Stock: {{ data.stock }}</div>
          <div class="stock1">Pegi: {{ data.pegi }}</div>
        </div>
        <div class="tags">
          <a class="categories">Action</a>
          <a class="categories">Adventure</a>
          <a class="categories">Singleplayer</a>
          <a class="categories">Multiplayer</a>
          <a class="categories">Co-op</a>
          <a class="categories">FPS</a>
          <a class="categories">Racing</a>
        </div>
      </div>
      <div class="buy">
        <div class="price">{{ data.preco }}€</div>
        <div class="swap">
          <a class="button-wishlist"></a>
          
          <a class="button-buybutton" href="/games" onclick="alert()">Buy</a>
        </div>
      </div>
      <br />
      <div class="box-description">
        <p>{{ data.description }}</p>
        <br />
        <div style="display: flex">
          <p style="color: #f50">Release date:</p>
          <p style="padding: 0 5px">{{ data.releaseDate }}</p>
        </div>

        <br />
        <p style="color: #f50">Minimum Requirements:</p>
        <p style="display: flex; margin-right: 490px">
          {{ data.minimum_Requirement }}
        </p>
        <br />
        <p style="color: #f50">Recommended Requirements:</p>
        <p style="display: flex; margin-right: 490px">
          {{ data.recommended_Requirement }}
        </p>
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
    };
  },
  methods: {
    carregaInfo(query) {
      axios.get("http://localhost:3000/api/game/" + query).then((res) => {
        console.log(res.data);
        this.resultados = res.data;
      });
    },
  },

  mounted() {
    this.carregaInfo(this.$route.params.id);
  },

  
};

function alert() {
    alert("Successfully bought");
  }
</script>




<style scoped>
a{
  text-decoration: none;
    color: white;
}
.header {
  display: flex;
  justify-content: space-around;
  background: #004351;
  padding: 25px 600px;
}

h1 {
  color: #000;
  font-size: 21px;
  font-weight: 700;
  margin: 20px 0 6px;
  width: 100%;
  text-align: center;
}
p {
  color: #777;
}
.subinfo a {
  position: relative;
  color: #000;
  padding: 8px 14px 7px 38px;
  display: inline-block;
  border-right: 1px solid rgba(62, 62, 62, 0.23);
  font-weight: 700;
  font-size: 13px;
  margin: 5px 0;
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
.game-info {
  display: flex;
  flex-direction: column;
  align-items: center;
  padding: 0 20px;
  margin-left: 20px;
  background: #fff;
  overflow: hidden;
  width: 793px;
  box-shadow: rgba(0, 0, 0, 0.25) 0px 14px 28px,
    rgba(0, 0, 0, 0.22) 0px 10px 10px;
  border-radius: 8px;
}

.subinfo {
  border: 1px solid rgba(62, 62, 62, 0.2);
  border-radius: 6px;
  display: flex;
  align-items: center;
  justify-content: center;
  width: 100%;
  margin: 10px 0;
  background: rgba(0, 0, 0, 0.04);
  flex-wrap: wrap;
  padding: 5px;
}
.stock {
  display: inline-block;
  padding: 8px 17px 7px 15px;
  border-right: 1px solid rgba(62, 62, 62, 0.23);
  vertical-align: top;
  font-weight: 700;
  font-size: 13px;
  color: #000;
}
.stock1 {
  display: inline-block;
  padding: 8px 17px 7px 15px;
  vertical-align: top;
  font-weight: 700;
  font-size: 13px;
  color: #000;
}

.tags {
  font-size: 0;
  text-align: center;
  margin: 6px 0;
}
.categories {
  border: 1px solid hsla(0, 0%, 46.7%, 0.65);
  color: #777;
  border-radius: 3px;
  font-size: 11px;
  padding: 5px 12px;
  display: inline-block;
  margin: 4px;
  cursor: pointer;
  vertical-align: top;
  text-decoration: none;
}

.buy {
  margin-top: 10px;
  text-align: center;
  display: flex;
  width: calc(100% + 10px);
  background: #000;
  padding: 15px;
  border-radius: 8px;
  margin-left: 270px;
  align-items: center;

  box-shadow: rgba(0, 0, 0, 0.25) 0px 14px 28px,
    rgba(0, 0, 0, 0.22) 0px 10px 10px;
    justify-content: center;
}

.price {
  font-size: 39px;
  line-height: 34px;
  margin-left: 325px;
  margin-top: 0;
  color: #fff;

  font-weight: 700;
}

.button-buybutton {
  font-size: 19px;
  padding: 19px 0;
  width: 300px;
  background: #ff5400;
  color: #fff;
  text-decoration: none;
  border-radius: 8px;
  cursor: pointer;
}

.box-description {
  background: white;
  border-radius: 8px;
  box-shadow: rgba(0, 0, 0, 0.25) 0px 14px 28px,
    rgba(0, 0, 0, 0.22) 0px 10px 10px;
  padding: 10px;
  font-size: 13px;
  font-weight: 400;
  margin-bottom: 0;
  margin-right: 10px;
}

.swap {
  display: flex;
  width: 100%;
      justify-content: flex-end;
}

img {
  
  width: 100%;
  height: 250px;
  width: 250px;
  transition: 0.5s ease;
  backface-visibility: hidden;
  cursor: pointer;
}
</style>